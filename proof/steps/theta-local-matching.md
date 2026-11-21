---
id: theta-local-matching
title: EveryCharacter from theta integrals and local matching
decl: UpperTheory.Lit.every_character_of_theta_integrals_local_matching
chapter: theta-matching
status: drafted
drafted_by: writer@claude-opus-5-5
uses: [green-vwin, nonempty-hyps, every-character-def, vwin-def, rect-exists-def, theta-integrals-agree-def, local-matching-def, green-of-regular, unitary-group-third-place-hypotheses-def, theta-local-inputs-def, covolume-bound-of-x-def]
concepts: [DNKA4WBKDS, 24GAZHVTGB, 6WB6TKE70H, H3Q2703KKV, 0R9R0Y1HDK, 9E45NBX1G0]
routine: [GlobalTheory.Mem.Top.Bl.parametersOfDependence]
open: [UpperTheory.N.boundAtTwoThree_linked_of_recT]
---
## Statement

Assume the following seven inputs. The Lean local name of each input is in parentheses.

1. ($P$) A proof of `UnitaryGroupThirdPlaceHypotheses`. This is a structure of 60 propositions. Most of them have names of published results on [[unitary groups|0R9R0Y1HDK]] and automorphic forms.
2. ($F$) A proof of `ThetaLocalInputs`, a structure of 53 propositions with names of published results.
3. ($h_A$) A proof of `ThetaIntegralsAgree`. For each admissible triple, two global theta integrals into the same unitary group $U_W$ are proportional, with one nonzero constant $c$, when their test functions match. Two recursion laws relate the constants for spaces of sizes $b + 2$ and $b$.
4. ($h_M$) A proof of `LocalMatching`. For each admissible triple, at each place the two local [[Weil representations|H3Q2703KKV]] have matched quotient maps onto one common irreducible representation of $U_W$.
5. ($h_X$) A proof of `CovolumeBoundOfX`, a bound named `L3` for the families of the class `FamHyp`, in the "closed" sense (small $\varepsilon$, large constants).
6. ($h_L$) A proof of [RecTExists](/step/rect-exists-def/). At each finite place of each number field there is a map from irreducible representations of $\mathrm{GL}_n$ to Weil and Deligne parameters with the laws `IsRecT`. This is in the style of the [[local Langlands conjectures|9E45NBX1G0]].
7. ($h_V$) A proof of [VWin](/step/vwin-def/), that is, `VWinAt ψ 401` for each primitive Dirichlet character $\psi$.

Then [EveryCharacter](/step/every-character-def/) holds: for each $N \geq 1$, each Dirichlet character $\chi$ modulo $N$ and each $s$ with $\operatorname{Re}(s) > \tfrac12$ and ($\chi \neq 1$ or $s \neq 1$), the [[Dirichlet L-function|24GAZHVTGB]] has $L(s, \chi) \neq 0$.

## Proof

The proof is one term. It applies [EveryCharacter from Green, VWin and HypsAlt](/step/green-vwin/) to three arguments.

1. **Green.** The field `P.greenRegularCharacters` has the type `GreenRegularCharacters`. This is a statement in the style of Green's theorem on the cuspidal characters of $\mathrm{GL}_d(\mathbb{F}_g)$, indexed by regular characters of $\mathbb{F}_{g^d}^\times$. The theorem `green_of_regular` turns it into the statement `GlobalTheory.GLq.Green`, which indexes the cuspidal characters of $\mathrm{GL}_d(\mathbb{F}_g)$ by "prime labels". A prime label is a monic irreducible polynomial of degree $d$ over $\mathbb{Z}/g$ with a nonzero constant term.
2. **VWin.** The hypothesis $h_V$, with no change.
3. **A record of `HypsAlt`.** The theorem [HypsAlt is nonempty from the closed bound](/step/nonempty-hyps/) takes $P$, $F$, $h_A$, $h_M$, $h_X$, $h_L$ and one more hypothesis: for each real $c_{\mathrm{Dep}}$, the statement `LinkedAt (parametersOfDependence hL cDep) (...)` with the closed bound `BoundAtTwoThreeFamilyFonAlt`. The proof supplies this last hypothesis as a function of $c_{\mathrm{Dep}}$. For each $c_{\mathrm{Dep}}$ it applies `boundAtTwoThree_linked_of_recT` to the field `P.nLink` and to the parameters `parametersOfDependence hL cDep`. The result is `Nonempty (HypsAlt S0.NL DefiniteSideCondition)`.

The step [EveryCharacter from Green, VWin and HypsAlt](/step/green-vwin/) asks for `Nonempty (HypsAlt (fun 𝒞 => Closed 𝒞 fun Fm _ => LinkN Fm) DefiniteSideCondition)`. The definition of `S0.NL` is `fun 𝒞 => Closed 𝒞 fun Fm _ => LinkN Fm`. So the two types are equal by unfolding, and Lean accepts the term with no conversion step.

## Notes

The theorem is named after the theta inputs $h_A$ and $h_M$. In this proof they go only into [HypsAlt is nonempty from the closed bound](/step/nonempty-hyps/). The branch [EveryCharacter from Green, VWin and HypsAlt](/step/green-vwin/) does not take them.

The input $h_V$ is not used here. It is passed on to the branch.

Of the 60 fields of $P$, this proof reads two by name: `greenRegularCharacters` and `nLink`. The other fields reach the proof only through the step [HypsAlt is nonempty from the closed bound](/step/nonempty-hyps/), which takes all of $P$.

The field `greenRegularCharacters` is not an open assumption in the final proof. The only caller fills it, through the bundle `published_results_eigen`, with `green_regular_characters_of_literature`, which cites the theorem `PositivityTheory.Stage1.PM.greenRegularCharacters`. The field `nLink` has the type `NLink.Hypotheses₂`, a structure of seven named results (Fontaine $B_{\mathrm{cris}}$, global Artin reciprocity, Bloch and Kato, local Tate duality, local Euler characteristic, local finiteness, Bhatt and Scholze).

The [theta matching chapter](/proof/theta-matching/) unfolds `ThetaIntegralsAgree` and `LocalMatching`. The [unitary hypotheses chapter](/proof/unitary-hypotheses/) follows the record `HypsAlt`.
