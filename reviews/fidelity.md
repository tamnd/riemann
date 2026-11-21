# Review: do the Lean statements say RH and GRH?

Status: open for review. No person has signed this review yet. This file is the draft for spec 05.5. It reads the Lean statements and the Mathlib definitions, and it tells what a reviewer must confirm. A reviewer who knows analytic number theory reads it, checks each point against the source, and adds their name at the end.

Sources:

- riemann-lean at commit `9110120`, the files `lean/src/Statements.lean` and `lean/src/Main.lean`.
- Mathlib at commit `0df444a360eaa60ab8c11dca51a86af692955474`, the files named below.

## 1. What Main.lean proves

`Main.lean` has five theorems. Each one has a type that is a Prop from Mathlib or from `Statements.lean`.

| Theorem | Type | Defined in |
|---|---|---|
| `riemannHypothesis` | `RiemannHypothesis` | Mathlib |
| `riemannZeta_eq_zero_re` | `RiemannZetaZerosOnLine` | `Statements.lean` |
| `LFunction_ne_zero_of_half_lt_re` | `DirichletLNonvanishingRightOfHalf` | `Statements.lean` |
| `LFunction_eq_zero_re` | `DirichletLZerosOnLine` | `Statements.lean` |
| `LFunction_eq_zero_re_of_isPrimitive` | `PrimitiveDirichletLZerosOnLine` | `Statements.lean` |

`Statements.lean` imports only `Mathlib`. So each name in it refers to a Mathlib declaration, and no file of the release can change its meaning.

`Main.lean` imports `Statements` and `Supplements.Kernels.MainTheoremsAll`, and it opens no namespace. Could a file of the release change what a name in `Main.lean` means? We checked three ways:

- A declaration with the name `RiemannHypothesis` at the root would clash with Mathlib, and Lean stops with an error. So the name refers to the Mathlib declaration.
- Notation can change how Lean reads a name. All 1,790 notation lines of the release are `local` or `scoped`. None is global, so none applies in `Main.lean`.
- A `macro` or `elab` can add syntax. The 22 macros of the release are tactics. The four `elab` lines make two tactics (`kexactB`, `kcopy`) and two commands (`cpt_copy_thms`, `#kcopy_probe`), and none makes a term or a name. Refer to the scan on [the trust page](https://riemann.tamnd.com/trust/).

The final check of this point is on the built environment: `#check` of each theorem must print the type in the table. M2 runs it with the axiom check.

## 2. RiemannHypothesis

Mathlib, `Mathlib/NumberTheory/LSeries/RiemannZeta.lean`, line 185:

```lean
def RiemannHypothesis : Prop :=
  ∀ (s : ℂ) (_ : riemannZeta s = 0) (_ : ¬∃ n : ℕ, s = -2 * (n + 1)) (_ : s ≠ 1), s.re = 1 / 2
```

In words: each zero $s$ of $\zeta$ that is not a trivial zero $-2, -4, -6, \dots$ and is not $s = 1$ has real part $\tfrac12$.

The standard statement is: each zero of $\zeta$ in the critical strip $0 < \operatorname{Re} s < 1$ has real part $\tfrac12$. The two are the same, because of three known facts:

1. $\zeta(s) \ne 0$ for $\operatorname{Re} s \ge 1$.
2. For $\operatorname{Re} s \le 0$, the functional equation shows that the only zeros are the trivial zeros.
3. The trivial zeros are exactly $-2(n+1)$ for $n = 0, 1, 2, \dots$

So the Mathlib statement excludes exactly the zeros outside the strip. It adds no condition inside the strip.

Points for the reviewer:

- **The value at $s = 1$.** Mathlib defines `riemannZeta` as `hurwitzZetaEven 0` (line 121). This is the analytic continuation, and Lean gives it some value at the pole $s = 1$. The hypothesis `s ≠ 1` removes that point, so the value does not matter.
- **The number $\tfrac12$.** `s.re` is a real number, so `1 / 2` is the real number $0.5$. It is not the natural number division `1 / 2 = 0`.
- **The cast.** In `-2 * (n + 1)`, Lean puts the cast at `n`, so the term is $-2 \cdot ((n : \mathbb{C}) + 1)$. This gives the trivial zeros $-2, -4, \dots$ and nothing else.

## 3. RiemannZetaZerosOnLine

```lean
def RiemannZetaZerosOnLine : Prop :=
  ∀ s : ℂ, riemannZeta s = 0 → (¬∃ n : ℕ, s = -2 * ((n : ℂ) + 1)) → s ≠ 1 → s.re = 1 / 2
```

This is `RiemannHypothesis` with the cast written out. `Main.lean` proves both with the same term `rhOfAll`. When the build passes, this shows that Lean accepts the two types as equal.

## 4. DirichletCharacter.LFunction

Mathlib, `Mathlib/NumberTheory/LSeries/DirichletContinuation.lean`, line 61, and `Mathlib/NumberTheory/LSeries/ZMod.lean`, line 83:

```lean
noncomputable def LFunction (χ : DirichletCharacter ℂ N) (s : ℂ) : ℂ := ZMod.LFunction χ s

noncomputable def ZMod.LFunction (Φ : ZMod N → ℂ) (s : ℂ) : ℂ :=
  N ^ (-s) * ∑ j : ZMod N, Φ j * hurwitzZeta (toAddCircle j) s
```

This is $L(\chi, s) = N^{-s} \sum_{j \bmod N} \chi(j)\, \zeta(s, j/N)$, with the Hurwitz zeta function. Mathlib proves that it equals the series $\sum \chi(n) n^{-s}$ for $\operatorname{Re} s > 1$ (`LFunction_eq_LSeries`). For $\chi \ne 1$ it is entire (`differentiable_LFunction`). So it is the analytic continuation of the L-series. For the trivial character, it has a pole at $s = 1$, and Lean gives it some value there.

`DirichletCharacter ℂ N` is a character modulo $N$, primitive or not. The condition `[NeZero N]` means $N \ge 1$. So each statement below is about each modulus and each character.

Points for the reviewer:

- **Characters that are not primitive.** Let $\chi$ mod $N$ come from the primitive character $\chi^*$. Then $L(\chi, s) = L(\chi^*, s) \prod_{p \mid N} (1 - \chi^*(p) p^{-s})$. Each factor of the product is zero only on the line $\operatorname{Re} s = 0$. So for $\operatorname{Re} s > 0$, $L(\chi, s)$ and $L(\chi^*, s)$ have the same zeros.
- **The trivial character.** For $N = 1$, `LFunction_modOne_eq` gives $L(\chi, s) = \zeta(s)$. So each statement about all $N$ includes the Riemann zeta function.

## 5. DirichletLNonvanishingRightOfHalf

```lean
def DirichletLNonvanishingRightOfHalf : Prop :=
  ∀ (N : ℕ) [NeZero N] (χ : DirichletCharacter ℂ N) (s : ℂ),
    1 / 2 < s.re → (χ ≠ 1 ∨ s ≠ 1) → DirichletCharacter.LFunction χ s ≠ 0
```

In words: for each modulus $N$, each character $\chi$ mod $N$ and each $s$ with $\operatorname{Re} s > \tfrac12$, $L(\chi, s) \ne 0$. The only exception is the pole: $\chi$ trivial and $s = 1$.

This is equivalent to GRH for Dirichlet L-functions. For a primitive $\chi$, the functional equation relates the zeros at $s$ and $1 - \bar s$ (Mathlib, `IsPrimitive.completedLFunction_one_sub`). So a zero in the strip with $\operatorname{Re} s < \tfrac12$ gives a zero with $\operatorname{Re} s > \tfrac12$. For a character that is not primitive, section 4 reduces the question to the primitive character.

Points for the reviewer:

- **The condition `χ ≠ 1 ∨ s ≠ 1`.** Here `1` is the trivial character mod $N$, the character that is $1$ on each unit. For $N > 1$, it is not primitive, and its L-function is $\zeta(s) \prod_{p \mid N}(1 - p^{-s})$, with a pole at $s = 1$. The condition removes exactly this pole.
- **The case $\operatorname{Re} s \ge 1$.** The statement also says that $L(\chi, s) \ne 0$ on and right of the line $\operatorname{Re} s = 1$. That is a known theorem, so it adds nothing false.

## 6. DirichletLZerosOnLine

```lean
def DirichletLZerosOnLine : Prop :=
  ∀ (N : ℕ) [NeZero N] (χ : DirichletCharacter ℂ N) (s : ℂ),
    0 < s.re → s.re < 1 → DirichletCharacter.LFunction χ s = 0 → s.re = 1 / 2
```

In words: for each character, each zero in the open strip $0 < \operatorname{Re} s < 1$ is on the line $\operatorname{Re} s = \tfrac12$. This is the standard form of GRH for Dirichlet L-functions.

The extra zeros of a character that is not primitive are on $\operatorname{Re} s = 0$ (section 4). The strict condition `0 < s.re` excludes them. If the condition were `0 ≤ s.re`, the statement would be false. The reviewer confirms that the inequality is strict.

## 7. PrimitiveDirichletLZerosOnLine

```lean
def PrimitiveDirichletLZerosOnLine : Prop :=
  ∀ (N : ℕ) [NeZero N] (χ : DirichletCharacter ℂ N), χ.IsPrimitive →
    ∀ s : ℂ, 0 < s.re → s.re < 1 → DirichletCharacter.LFunction χ s = 0 → s.re = 1 / 2
```

This is section 6 for the primitive characters only. Mathlib, `Mathlib/NumberTheory/DirichletCharacter/Basic.lean`, line 292, defines `IsPrimitive` as `conductor χ = n`, which is the standard definition. This statement follows from section 6. It is in `Main.lean` because it is the form that most texts state.

## 8. Summary

| Statement | Says | Draft finding |
|---|---|---|
| `RiemannHypothesis` | RH | the standard statement |
| `RiemannZetaZerosOnLine` | RH | the same as `RiemannHypothesis` |
| `DirichletLNonvanishingRightOfHalf` | GRH for Dirichlet L-functions, right of the line | equivalent to GRH |
| `DirichletLZerosOnLine` | GRH for Dirichlet L-functions, in the strip | the standard statement |
| `PrimitiveDirichletLZerosOnLine` | GRH for primitive characters | the standard statement |

This draft found no statement that says less than RH or GRH. The final answer needs a person.

## Sign-off

| Reviewer | Area | Date | Finding |
|---|---|---|---|
| (open) | | | |
