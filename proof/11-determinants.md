---
title: Block determinants and theta Parseval
description: The part of the theta lift branch that proves the lift is not zero. It uses a Rallis inner product identity, a main term that is larger than a tail, and highest weight vectors made of leading minors. The page also says which ideas of the timeline (the Stepanov determinant, W(1_S) at least 0, iterated lifts) have no counterpart in the Lean code.
lead: The timeline has a Stepanov determinant and a positivity proof through a determinant. The Lean code does not contain them. This page shows what the code has in their place, in the proof that a theta lift is not zero.
level: L1
status: draft
lean:
  - name: UpperTheory.TP.K.tLiftK
    file: Development/AutomorphicArithmetic/Foundations/GaloisRepresentations/ThetaParseval/ThetaKernels/TLiftK.lean
    line: 4
  - name: UpperTheory.TP.tLift_holds_k
    file: Development/AutomorphicArithmetic/Foundations/GaloisRepresentations/ThetaParseval/ThetaKernels/TPGHolds.lean
    line: 58
  - name: UpperTheory.TP.tools_holds_k
    file: Development/AutomorphicArithmetic/Foundations/GaloisRepresentations/ThetaParseval/ThetaKernels/TPGHolds.lean
    line: 39
  - name: UpperTheory.TP.tLift_of_tools_k
    file: Development/AutomorphicArithmetic/Foundations/GaloisRepresentations/ThetaParseval/ThetaKernels/TPGTop.lean
    line: 46
  - name: UpperTheory.TP.Tools_k
    file: Development/AutomorphicArithmetic/Foundations/GaloisRepresentations/ThetaParseval/ThetaKernels/GalTPDefs.lean
    line: 27
  - name: UpperTheory.TP.tLift_of_k
    file: Development/AutomorphicArithmetic/Foundations/GaloisRepresentations/ThetaParseval/ThetaKernels/GalTPDefs.lean
    line: 141
  - name: UpperTheory.TP.Rallis_k
    file: Development/AutomorphicArithmetic/Foundations/GaloisRepresentations/ThetaParseval/ThetaKernels/GalTPDefs.lean
    line: 61
  - name: UpperTheory.TP.rallis_k
    file: Development/AutomorphicArithmetic/Foundations/GaloisRepresentations/ThetaParseval/ThetaKernels/TPGRallis.lean
    line: 99
  - name: UpperTheory.TP.NonVan_k
    file: Development/AutomorphicArithmetic/Foundations/GaloisRepresentations/ThetaParseval/ThetaKernels/GalTPDefs.lean
    line: 114
  - name: UpperTheory.TP.nonVan_k
    file: Development/AutomorphicArithmetic/Foundations/GaloisRepresentations/ThetaParseval/ThetaKernels/TPGNonVan.lean
    line: 26
  - name: UpperTheory.TP.AbsNe
    file: Development/AutomorphicArithmetic/Foundations/GaloisRepresentations/ThetaParseval/SchurStep.lean
    line: 183
  - name: UpperTheory.TP.absNe
    file: Development/AutomorphicArithmetic/Foundations/GaloisRepresentations/ThetaParseval/BlockDeterminants/AbsNe.lean
    line: 5
  - name: UpperTheory.TP.realPair_k
    file: Development/AutomorphicArithmetic/Foundations/GaloisRepresentations/ThetaParseval/ThetaKernels/TPGRealPair.lean
    line: 29
  - name: UpperTheory.TP.RP.joint
    file: Development/AutomorphicArithmetic/Foundations/GaloisRepresentations/ThetaParseval/BlockDeterminants/ExponentialEntries/RightSub.lean
    line: 32
  - name: UpperTheory.TP.RP.jointNe
    file: Development/AutomorphicArithmetic/Foundations/GaloisRepresentations/ThetaParseval/BlockDeterminants/ExponentialEntries/JointNe.lean
    line: 13
  - name: Formalism.GradedWeylDivisibility.hw
    file: Formalism/GradedWeylDivisibility/StatementA.lean
    line: 63
  - name: UpperTheory.TP.projEx
    file: Development/AutomorphicArithmetic/Foundations/GaloisRepresentations/ThetaParseval/BlockDeterminants/ProjEx.lean
    line: 98
needs:
  - tag: 6WB6TKE70H
    text: Theta correspondence
  - tag: H3Q2703KKV
    text: Weil representation
  - tag: 0R9R0Y1HDK
    text: Unitary group
  - tag: 8NJ7XY6F1S
    text: Hermitian form
  - tag: NYJFYZ0B4M
    text: Adele ring
  - tag: 68SJQEC11F
    text: Automorphic form
  - tag: 9AZ164C298
    text: Cuspidal representation
  - tag: 3NZBZXYWAJ
    text: Eisenstein series
  - tag: GE020MY43M
    text: Schwartz space
next:
  - text: The Galois row
    path: proof/galois-row/
    sub: the parent branch, and the statement TLiftK
  - text: The theta matching
    path: proof/theta-matching/
    sub: where the Levi determinants of the code are used
  - text: The Weil bound and arithmetic positivity
    path: proof/weil-bound/
    sub: timeline step 4 and positivity
steps: []
---
## Result

The theorem `UpperTheory.TP.K.tLiftK` proves the statement `TLiftK` (see Step 7 of [the Galois row](/proof/galois-row/)). In short, `TLiftK` says this. Let $E$ be a CM field, let $X$ be a definite hermitian space of dimension $n$ and let $U$ be an automorphic representation of $U(X)$ with weights $\lambda_w$ at the infinite places. Then there is a $d_0$ such that for each skew-hermitian space $W$ of dimension $d \geq d_0$ (with a weight condition) there is an automorphic representation $U'$ of $U(W)$ with `IsLift`: matched weights at infinity and matched local components at split places.

The proof is one line:

```lean
theorem UpperTheory.TP.K.tLiftK : UpperTheory.TP.TLiftK :=
  UpperTheory.TP.tLift_holds_k

theorem tLift_holds_k : TLift_k := tLift_of_tools_k tools_holds_k (hgtEx_of_k stab2Cpt_k)
```

This page is about `tLift_of_tools_k` ([TPGTop.lean#L46](lean:Development/AutomorphicArithmetic/Foundations/GaloisRepresentations/ThetaParseval/ThetaKernels/TPGTop.lean#L46)). It has 503 declarations in its dominator subtree. Its heart is a proof that the theta lift of $U$ is not zero. The files are in the folders `ThetaParseval/BlockDeterminants` and `ThetaParseval/ThetaKernels`.

The Lean code is not reviewed by a person. This page does not claim that the statements are the intended ones.

## Idea

The timeline of the plan has three steps that this page compares with the code:

- Step 1: "The Stepanov determinant."
- Step 4: "$W(1_S) \geq 0$ through a determinant. Read it as Stepanov with multiplicity one."
- Step 8: iterated theta lifts $U(X_0) \to \dots \to U(X_m)$ that gain multiplicity $m$, with $m$ near $\sqrt{X}$.

The word "Stepanov" does not occur in the Lean code. There is no auxiliary polynomial with a zero of high order, no Wronskian in this branch, and no quantity $W(1_S)$. The code has a different, standard way to show that something is not zero:

1. A Rallis inner product identity (the "theta Parseval" of the folder name). If the lift of $\varphi$ is zero, then the integral of the Weil matrix coefficient against the matrix coefficient of $\varphi$ is zero.
2. A choice of test data that makes this integral a main term plus a tail. The main term is not zero, and the tail is smaller. So the integral is not zero, and so the lift is not zero.
3. In this branch, this page found determinants of matrices in one place only: the test vector at infinity is a product of powers of leading principal minors of a matrix of variables. This is the classical highest weight vector.

So the role of "a determinant that is not zero" is played by an inequality "main block is larger than the tail". The determinant itself enters only through the highest weight vector.

## Before you read

- The [[theta correspondence|6WB6TKE70H]] for a pair of [[unitary groups|0R9R0Y1HDK]], and the [[Weil representation|H3Q2703KKV]] on a [[Schwartz space|GE020MY43M]] of polynomial type.
- [[Hermitian forms|8NJ7XY6F1S]] (the space $X$) and skew-hermitian forms (the space $W$).
- The [[adele ring|NYJFYZ0B4M]], [[automorphic forms|68SJQEC11F]] and [[cuspidal representations|9AZ164C298]].
- The Petersson inner product and matrix coefficients.
- Siegel [[Eisenstein series|3NZBZXYWAJ]] and the doubling method, for the Rallis identity.

## Plan

1. Show where the branch sits and how large it is.
2. Show the existence skeleton `tLift_of_k` and its fourteen tools.
3. Show the test vector made of leading minors (`joint`, `realPair_k`).
4. Show the Rallis identity (`rallis_k`).
5. Show the main term and the tail (`nonVan_k` and `AbsNe`).
6. Show how a nonzero lift gives one irreducible $U'$.
7. Say where the other determinants of the code are.

## The steps

### Step 1. Where the branch sits

The spine of `tLiftK` is short:

- `UpperTheory.TP.K.tLiftK` (2,709 declarations) is dominated by `galoisLocalGlobalStrong_recParameter` (51,591).
- `tLift_holds_k` (2,708) is the whole proof.
- `tools_holds_k` (2,169) builds the structure `Tools_k` ([GalTPDefs.lean#L27](lean:Development/AutomorphicArithmetic/Foundations/GaloisRepresentations/ThetaParseval/ThetaKernels/GalTPDefs.lean#L27)). It has fourteen fields: `swFull` (a full Siegel-Weil statement), `boxSec`, `dbl` (doubling), `stab2`, `cpt` (compactness of the quotients), `basic`, `polSch`, `unfold0`, `pairEx` (existence of a model of the dual pair), `split`, `vacFix`, `acts`, `lie1` and `lie2`. This page does not describe their proofs.
- `tLift_of_tools_k` (503) uses the tools to prove the lift. This page describes it.

The page [the Galois row](/proof/galois-row/) gives older sizes (5,201 for `tLiftK` and 2,998 for `tLift_of_tools_k`). The numbers on this page come from the current full spine.

### Step 2. The existence skeleton

`tLift_of_tools_k` is one term:

```lean
theorem tLift_of_tools_k (T : Tools_k) (hH : HgtEx_k) : TLift_k :=
  tLift_of_k T hH brEx (hgtFst_k T) (realPair_k T)
    (nonVan_k T (rallis_k T) (decomp_k T) (bumpAny_k T) (datum_k T) (tail_k T) absNe (schurStep_k T))
    (liftAut_k T) projEx (readLift_k T (liftAut_k T) absIso)
```

So the proof is split into named statements. Each one is a `def ... : Prop` in [GalTPDefs.lean#L45](lean:Development/AutomorphicArithmetic/Foundations/GaloisRepresentations/ThetaParseval/ThetaKernels/GalTPDefs.lean#L45), and each one has its own proof `..._k`. The theorem `tLift_of_k` ([GalTPDefs.lean#L141](lean:Development/AutomorphicArithmetic/Foundations/GaloisRepresentations/ThetaParseval/ThetaKernels/GalTPDefs.lean#L141)) puts them together in this order:

1. From `HgtEx_k`, get a height function $a$ on the doubled group. From `HgtFst_k`, get $t_0$ such that $g \mapsto a(g,1)^t$ is integrable for $t \geq t_0$.
2. Take $d_0 = \max(N, 2n)$ with $N > 2 t_0$. So each $d \geq d_0$ has $2n \leq d$ and $t_0 < d/2$.
3. From `pairEx`, get a model of the dual pair $(U(X), U(W))$ and its Weil representation. From `brEx`, get the identifications of the adelic groups.
4. From `RealPair_k`, get a polynomial $f_0 \neq 0$ and a form $\varphi \in U$, $\varphi \neq 0$, of matched types (Step 3).
5. From `NonVan_k`, get finite test data $\varphi_f$ with $\theta(f_0 \otimes \varphi_f, \varphi) \neq 0$ (Steps 4 and 5).
6. From `LiftAut_k`, `ProjEx` and `ReadLift_k`, get $U'$ and its properties (Step 6).

The theta lift is the function on $U(W)(\mathbb{A})$

$$\theta(\Phi, \varphi)(h) = \int_{U(X)(F) \backslash U(X)(\mathbb{A})} \theta(g, h; \Phi) \, \overline{\varphi(g)} \, dg,$$

which is the Lean `lift M om Φ φ h` ([SchurStep.lean#L22](lean:Development/AutomorphicArithmetic/Foundations/GaloisRepresentations/ThetaParseval/SchurStep.lean#L22)). The matrix coefficient of $\varphi$ is `mc M φ g`, the Petersson product of the translate $y \mapsto \varphi(yg)$ with $\varphi$ ([SchurStep.lean#L25](lean:Development/AutomorphicArithmetic/Foundations/GaloisRepresentations/ThetaParseval/SchurStep.lean#L25)). The matrix coefficient of the Weil representation is `coef om ν Φ g`.

### Step 3. Test vectors made of leading minors

This is the only place in the branch where determinants of matrices appear.

Let $x = (x_{ij})$ be a $d \times n$ matrix of variables with $n \leq d$. For $s \leq n$, let $\Delta_s$ be the leading $s \times s$ minor, `lpMinor`. For a weight $\nu_1 \geq \nu_2 \geq \dots \geq \nu_n \geq 0$, the Lean `hw` ([StatementA.lean#L63](lean:Formalism/GradedWeylDivisibility/StatementA.lean#L63)) is

$$\mathrm{hw}_\nu = \prod_{s=1}^{n} \Delta_s^{\,\nu_s - \nu_{s+1}}, \qquad \nu_{n+1} = 0.$$

This is the classical highest weight vector of weight $\nu$ for $\mathrm{GL}_n$ in the polynomial ring. The definition `joint h μ` ([RightSub.lean#L32](lean:Development/AutomorphicArithmetic/Foundations/GaloisRepresentations/ThetaParseval/BlockDeterminants/ExponentialEntries/RightSub.lean#L32)) moves $\mathrm{hw}_\mu$ into the Fock space `PP n d` of polynomials in the $n \times d$ variables. The theorem `jointNe` ([JointNe.lean#L13](lean:Development/AutomorphicArithmetic/Foundations/GaloisRepresentations/ThetaParseval/BlockDeterminants/ExponentialEntries/JointNe.lean#L13)) says that `joint h μ ≠ 0` when $\mu$ is antitone. Its proof uses `Formalism.GradedWeylDivisibility.hwNe`.

Two theorems, `exists_act1_equivariant_nablaSq_map_hitting_joint` and `exists_act2_equivariant_nablaSq_map_hitting_joint`, give maps that commute with the $\mathrm{GL}_n$ and the $\mathrm{GL}_d$ actions and that hit `joint`. The proof for $\mathrm{GL}_d$ uses the rule that the top minor is multiplied by $\det g$ under the right action.

The theorem `realPair_k` ([TPGRealPair.lean#L29](lean:Development/AutomorphicArithmetic/Foundations/GaloisRepresentations/ThetaParseval/ThetaKernels/TPGRealPair.lean#L29)) uses these to build $f_0$ as an image of $\bigotimes_w \mathrm{joint}(\mu_w)$ over the infinite places $w$. Its conclusion is that $f_0 \neq 0$, that some $\varphi \in U$ with $\varphi \neq 0$ has the same type as $f_0$ (`SameType`), and that at each $w$ the weight $\lambda'_w$ seen by $f_0$ on the $U(W)$ side satisfies `IsLiftWt`. So the minors pick a test vector whose $K_\infty$-types match on both sides.

### Step 4. The theta Parseval identity

The statement `Rallis_k` ([GalTPDefs.lean#L61](lean:Development/AutomorphicArithmetic/Foundations/GaloisRepresentations/ThetaParseval/ThetaKernels/GalTPDefs.lean#L61)) ends with:

```lean
Integrable (fun g => coef om ν Φ g * star (mc M φ g)) M.μ ∧
  (lift M om Φ φ = 0 → ∫ g, coef om ν Φ g * star (mc M φ g) ∂M.μ = 0)
```

In standard notation: if $t_0 < d/2$, then $g \mapsto \langle \omega(g)\Phi, \Phi \rangle \, \overline{\langle \varphi(\cdot\, g), \varphi \rangle}$ is integrable on $U(X)(\mathbb{A})$, and

$$\theta(\Phi, \varphi) = 0 \implies \int_{U(X)(\mathbb{A})} \langle \omega(g)\Phi, \Phi\rangle \, \overline{\langle \varphi(\cdot\, g), \varphi\rangle} \, dg = 0.$$

This is one direction of the Rallis inner product formula. The proof `rallis_k` ([TPGRallis.lean#L99](lean:Development/AutomorphicArithmetic/Foundations/GaloisRepresentations/ThetaParseval/ThetaKernels/TPGRallis.lean#L99)) works like this:

1. It bounds the Weil coefficient by a constant times $a(g,1)^{d/2}$. With $t_0 < d/2$, this gives the integrability.
2. It takes the Siegel Eisenstein series $\hat E(z)$ on the doubled group from `swFull` and its pairing with $\varphi$ (`kpair`). For $\mathrm{Re}\, z$ large, the doubling tool `dbl` gives
$$\mathrm{kpair}(\hat E(z), \varphi) = c \, c' \int a(g,1)^{\,z - s_0} \, \langle \omega(g)\Phi, \Phi\rangle \, \overline{\langle \varphi(\cdot\, g), \varphi\rangle} \, dg, \qquad s_0 = \tfrac{d-n}{2}.$$
3. A private lemma `zero_of_half_pk` (analytic continuation on a connected open set) extends this identity to $z = s_0$.
4. At $z = s_0$, the Siegel-Weil statement writes the left side as a double integral of $\langle \theta(g_1), \theta(g_2) \rangle$ against $\varphi$. If the lift is zero, this is zero, and so the right side is zero.

### Step 5. A main term that is larger than the tail

`NonVan_k` ([GalTPDefs.lean#L114](lean:Development/AutomorphicArithmetic/Foundations/GaloisRepresentations/ThetaParseval/ThetaKernels/GalTPDefs.lean#L114)) says: if $2n \leq d$, $t_0 < d/2$ and $f_0$, $\varphi$ have the same type, then there are finite test data $\varphi_f$ with `lift M om (pure f₀ φf) (φ ∘ e.symm) ≠ 0`. By Step 4, it is sufficient to show that the integral of Step 4 is not zero. The proof `nonVan_k` ([TPGNonVan.lean#L26](lean:Development/AutomorphicArithmetic/Foundations/GaloisRepresentations/ThetaParseval/ThetaKernels/TPGNonVan.lean#L26)) uses five inputs.

- `Decomp_k`: for a finite set $S$ of places, $U(X)(\mathbb{A}) = G_\infty \times G_S \times G^S$ as a product of three closed subgroups (`gInf`, `gAt`, `gOff`). $G_\infty$ is compact, because $X$ is definite.
- `BumpAny_k`: at each place $v \in S$ there is a "bump" test function whose Weil coefficient is supported in a given small subgroup $H_v$.
- `Datum_k`: with these bumps, the Weil coefficient vanishes for $b \notin \prod H_v$, and on $x \, b \, c$ with $b \in \prod H_v$ it equals $s(c)$ times its value at $x$, where $|s(c)| = a(c,1)^{d/2}$ and $s(c) = 1$ when $c$ is integral at all places.
- `SchurStep_k`: the integral over the compact $G_\infty$ of $\mathrm{coef}(x) \, \overline{\mathrm{mc}(xc)}$ is $\kappa \, \mathrm{coef}(1) \, \overline{\mathrm{mc}(c)}$ with $\kappa \neq 0$. By its name and its form, this is a Schur orthogonality step. It needs the matched types of Step 3.
- `Tail_k`: for $S$ large, the integral of $a(c,1)^t$ over the part of $G^S$ that is not integral is smaller than the measure of the integral part.

The abstract statement `AbsNe` ([SchurStep.lean#L183](lean:Development/AutomorphicArithmetic/Foundations/GaloisRepresentations/ThetaParseval/SchurStep.lean#L183)) then closes the proof. In words: let $f$ on $A \times B \times C$ vanish for $b \notin H$ and equal $s(c) \, m(x,c)$ for $b \in H$, with $0 < \mu(H) < \infty$. Let $\int_A m(x,c)\,dx = \kappa \, c_0(c)$ with $\kappa \neq 0$. Let $s = 1$ and $c_0 = r > 0$ on a set $K$, with $|c_0| \leq r$ and $|s| \leq w$ everywhere. If $\int_{K^c} w < \mu(K)$, then $\int f \neq 0$. The reason is that $\int f = \mu(H) \, \kappa \int_C s \, c_0$, the part over $K$ has absolute value $\mu(K) \, r$, and the part over $K^c$ has absolute value at most $r \int_{K^c} w$, which is smaller. The bound $|c_0| \leq r$ with $r = c_0$ on $K$ comes from `UpperTheory.matrix_coefficient_bounded_by_value_at_one`: a matrix coefficient is largest at $1$.

This is the counterpart, in the code, of the nonvanishing of an auxiliary function. The main block is the integral part, where everything is explicit. The tail is controlled by the height. No determinant is involved.

### Step 6. From a nonzero lift to one representation $U'$

- `LiftAut_k` gives a map $\Theta$ that sends $\varphi$ to the lift, shows that the lift is an automorphic form on $U(W)$, and shows that $\Theta$ commutes with the group actions.
- `ProjEx` (proof `projEx`, [ProjEx.lean#L98](lean:Development/AutomorphicArithmetic/Foundations/GaloisRepresentations/ThetaParseval/BlockDeterminants/ProjEx.lean#L98)) takes a nonzero automorphic form and gives an irreducible automorphic representation $U'$ and an equivariant projection onto $U'$ that does not kill the form. Its proof uses the Petersson inner product and Zorn's lemma.
- `ReadLift_k` uses the abstract lemma `AbsIso` (an isotypic projection lemma) to read the weights of $U'$ from the types of $f_0$, and the local pairs `LocPair` at split places.

So the code takes one irreducible constituent of the lift. It does not count the multiplicity of the constituent.

### Step 7. The other determinants of the code

The folder `Development/WeilBound/ThetaLifts/LeviDeterminants` has 116 files. None of them is below `tLiftK` on the spine. Most of its declarations on the spine are below `theta_integrals_agree_and_local_matching_of_literature` (8,520), on the side of [the theta matching](/proof/theta-matching/). There, the determinants are determinants of Levi blocks and characters of the Siegel parabolic subgroup. An example is `PositivityTheory.ThKF0.parabolic_character_trivial_on_diagonal` (53 declarations), which needs $\det J \neq 0$. These are not Stepanov determinants either.

## Where it is in the code

| Declaration | Module | Size |
|---|---|---|
| `UpperTheory.TP.K.tLiftK` | `…ThetaKernels.TLiftK` | 2,709 |
| `tLift_holds_k` | `…ThetaKernels.TPGHolds` | 2,708 |
| `tools_holds_k` | same | 2,169 |
| `tLift_of_tools_k` | `…ThetaKernels.TPGTop` | 503 |
| `realPair_k` | `…ThetaKernels.TPGRealPair` | 140 |
| `RP.fockOf_k` | (below `realPair_k`) | 93 |
| `RP.formEx` | (below `realPair_k`) | 15 |
| `RP.exists_act2_equivariant_nablaSq_map_hitting_joint` | `…ExponentialEntries.ExistsAct2EquivariantNablaSqMapHittingJoint` | 10 |
| `RP.exists_act1_equivariant_nablaSq_map_hitting_joint` | `…ExponentialEntries.ExistsAct1EquivariantNablaSqMapHittingJoint` | 7 |
| `RP.jointNe` | `…ExponentialEntries.JointNe` | 2 |
| `bumpAny_k` | `…ThetaKernels.TPGBumpAny` | 128 |
| `liftAut_k` | `…ThetaKernels.TPGLiftAut` | 38 |
| `brEx` | `…BlockDeterminants.MemClosureOf` | 34 |
| `decomp_k` | `…ThetaKernels.TPGDecomp` | 34 |
| `datum_k` | `…ThetaKernels.TPGDatum` | 28 |
| `nonVan_k` | `…ThetaKernels.TPGNonVan` | 18 |
| `readLift_k` | `…ThetaKernels.TPGReadLift` | 14 |
| `schurStep_k` | `…ThetaKernels.TPGSchurStep` | 11 |
| `tail_k` | `…ThetaKernels.TPGTail` | 7 |
| `rallis_k` | `…ThetaKernels.TPGRallis` | 6 |
| `hgtFst_k` | `…ThetaKernels.TPGHgtFst` | 5 |
| `projEx` | `…BlockDeterminants.ProjEx` | 2 |
| `absIso` | `…BlockDeterminants.AbsIso` | 1 |
| `absNe` | `…BlockDeterminants.AbsNe` | 1 |

The prefix `…` is `Development.AutomorphicArithmetic.Foundations.GaloisRepresentations.ThetaParseval`, and `ExponentialEntries` is inside `BlockDeterminants`. Names without a namespace are in `UpperTheory.TP`. "Size" is the number of declarations in the dominator subtree: the declarations that the trunk reaches only through this one. The small sizes of `rallis_k`, `absNe` and `absIso` mean that their proofs use shared lemmas that are also used elsewhere. The definitions `hw`, `lpMinor` and `hwNe` are shared in the same way: their dominator is the top theorem `everyCharacter`, not this branch.

## Notes

- The timeline step 1 (the Stepanov determinant) has no counterpart in the code. There is no auxiliary polynomial, no vanishing to high order and no Wronskian in this branch. The closest piece is the argument of Step 5, where a main term is shown to be larger than a tail.
- The timeline step 4 ($W(1_S) \geq 0$ through a determinant) has no counterpart in the code. There is no quantity $W(1_S)$ in this branch and no positivity proved by a determinant. The code proves that one integral is not zero. It does not prove that some quantity is at least zero.
- The idea "Stepanov with multiplicity one" has no counterpart. The code projects onto one irreducible constituent (`projEx`, `absIso`) and does not use or count multiplicity.
- The timeline step 8 (iterated theta lifts $U(X_0) \to \dots \to U(X_m)$, multiplicity $m$, $m$ near $\sqrt{X}$) has only a partial counterpart. The code has one lift $U(n) \to U(d)$ for all $d \geq d_0 = \max(N, 2n)$. This page found no iteration of lifts in this branch, no gain of multiplicity and no parameter like $m$ near $\sqrt{X}$.
- The word "Parseval" in the folder name `ThetaParseval` is not used in any declaration of this branch. This page reads it as the Rallis inner product identity of Step 4, because that is the only identity of Parseval type in the branch.
- The name `BlockDeterminants` covers files with no determinant in them (`AbsNe`, `ProjEx`, `AbsIso`, `MemClosureOf`). Only the subfolder `ExponentialEntries` and the definition `hw` use determinants.
- The sizes on this page come from the full spine. They are smaller than the sizes on [the Galois row](/proof/galois-row/) page, which come from an older spine.
- This page does not unfold the fourteen tools of `Tools_k`, the height `IsHgt`, `IsBump`, `SameType`, `HasType`, `IsLiftWt` and `LocPair`. The Rallis step depends on `swFull` and `dbl`, which are large statements on their own.
- The Lean code is not reviewed by a person. The words above describe what the statements say, as read from the code.
