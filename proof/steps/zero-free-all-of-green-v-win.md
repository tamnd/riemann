---
id: zero-free-all-of-green-v-win
title: ZeroFreeAll from Green, VWin and HypsAlt
decl: UpperTheory.Top.zero_free_all_of_green_v_win
chapter: theta-matching
status: drafted
drafted_by: writer@claude-opus-5-5
uses: [green-def, vwin-def, closed-def, definite-side-condition-def, hyps-alt-def]
concepts: [DNKA4WBKDS, 24GAZHVTGB, JR4QSEFXWF, 9AZ164C298]
routine: []
open: [Formalism.HC.ZeroFreeAll, Formalism.MainNotions.LinkN, GlobalTheory.Fc.forall_goal_of_shape_of_hyps, UpperTheory.Top.shape_closed_link_n_of_green, UpperTheory.Top.supplyChi, UpperTheory.Top.zeroFreeAll_of_topG]
---
## Statement

Assume three inputs. The Lean local name of each input is in parentheses.

1. ($h_G$) The statement [Green](/step/green-def/). For each prime $g$, each label datum $L$ and each $d > 0$, the [[cuspidal|9AZ164C298]] characters of $\mathrm{GL}_d(\mathbb{F}_g)$ are in bijection with the monic irreducible polynomials of degree $d$ over $\mathbb{Z}/g$ with nonzero constant term, with the degree $\prod_{i=1}^{d-1}(g^i - 1)$ and an explicit value formula.
2. ($h_V$) The statement [VWin](/step/vwin-def/), that is, `VWinAt ψ 401` for each primitive Dirichlet character $\psi$.
3. ($h$) A proof that the type `HypsAlt N DefiniteSideCondition` is nonempty, where $N(\mathcal{C})$ is `Closed 𝒞 fun Fm _ => LinkN Fm`. `HypsAlt` is a record of 46 fields about a class of families, a selection of bundles and many bounds. The second parameter is [the condition DefiniteSideCondition](/step/definite-side-condition-def/). By [the definition Closed](/step/closed-def/), `Closed 𝒞 P` means: there is $\varepsilon_1 > 0$ such that for each $\varepsilon \in (0, \varepsilon_1]$ there are thresholds such that $P$ holds for each family of $\mathcal{C}$ with parameter $\varepsilon$ whose constants are above the thresholds. `LinkN` is a bound on a weighted count of twisted places.

Then `ZeroFreeAll` holds. By definition, `ZeroFreeAll` is `ZeroFreeOn fun _ => True`, and `ZeroFreeOn Q` says: for each primitive Dirichlet character $\psi$ with `Q ψ`, $\psi$ satisfies `ZeroFreeAbove (1/2)`. So `ZeroFreeAll` says the following. Let $\psi$ be a primitive [[Dirichlet character|JR4QSEFXWF]] of modulus $N \neq 0$ (a value of the structure `PChar`, which holds $N$, the character and a proof that it is primitive). Then for each $s \in \mathbb{C}$ with $\operatorname{Re}(s) > \tfrac12$, the [[Dirichlet L-function|24GAZHVTGB]] of Mathlib has $L(s, \psi) \neq 0$.

## Proof

The proof is one term with four parts.

1. The hypothesis $h$ is a proof of `Nonempty (HypsAlt ...)`. The proof takes one record out of it with `h.elim`. This is bookkeeping: `HypsAlt` is a type in `Type 1`, and the goal is a proposition, so the elimination is allowed.
2. The theorem `shape_closed_link_n_of_green` takes $h_G$ and gives `TopShapeAlt True True N TopG`, with the same $N$ as in $h$. `TopShapeAlt V NR N G` is a long implication. It says: for each family class $\mathcal{A}$ and about 50 named data and conditions on $\mathcal{A}$ (a selection, bounds, closed bounds of the form `Closed`, a proof of $V$, a proof of $NR$, and more), the proposition $G$ holds.
3. The theorem `forall_goal_of_shape_of_hyps` has the type `TopShapeAlt V NR N G → V → NR → HypsAlt N DefiniteSideCondition → G`. The proof applies it with $V = \mathrm{True}$ and $NR = \mathrm{True}$, the result of part 2, `trivial` twice, and the record from part 1. The theorem passes the fields of the record into the slots of `TopShapeAlt`. The result is `TopG`. `TopG` says: for each $\lambda > 1$ and each requirement $G$ (a value of `FReq`), if `HostExW λ G.req` holds and each family in the class `G.cls λ` satisfies `HypV`, then the class `G.cls λ` is `FamilyClassConnected`.
4. The theorem `zeroFreeAll_of_topG` takes a number $\lambda$ with $1 < \lambda$, a proof of `TopG`, and for each primitive character $\psi$ a proof of `HostExW λ (GChi ψ).req`. It gives `ZeroFreeAll`. The proof uses $\lambda = 3/2$. The fact $1 < 3/2$ is closed by `norm_num`. For each $\psi$, the theorem `supplyChi` turns `hV ψ`, a proof of `VWinAt ψ 401`, into `HostExW (3/2) (GChi ψ).req`.

So the term is `zeroFreeAll_of_topG (la := 3/2) _ (forall_goal_of_shape_of_hyps _ _ _ _ (shape_closed_link_n_of_green hG) trivial trivial h) (fun ψ => supplyChi ψ (hV ψ))`, inside `h.elim`. The [theta matching chapter](/proof/theta-matching/) describes the proof of `zeroFreeAll_of_topG`, with the sums $G_m$ of the von Mangoldt function and the statement `FormB`.

## Notes

The input $h_G$ is used only in part 2. Inside `shape_closed_link_n_of_green`, it goes into the lemma `closed_linkIRR_of_join_count`. So a statement on the characters of the finite groups $\mathrm{GL}_d(\mathbb{F}_g)$ enters the proof of a statement on Dirichlet L-functions only through that lemma. This page does not follow that link.

The two slots $V$ and $NR$ of `TopShapeAlt` are the proposition `True` here. They are filled with `trivial` and carry no content.

The input $h_V$ is used only through `supplyChi`, at the fixed value $\lambda = 3/2$.

`ZeroFreeAll` has no exception at $s = 1$. For the trivial character of modulus $1$, $L(s, 1)$ is the Riemann zeta function. Mathlib gives it a value at the pole $s = 1$ by a convention, and this value is not zero. The [theta matching chapter](/proof/theta-matching/) says more on this point.

The user of this step is [EveryCharacter from Green, VWin and HypsAlt](/step/green-vwin/), which applies [the step imprimitive](/step/imprimitive/) to the result.
