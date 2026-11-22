---
id: local-langlands-gl-rect-exists-of-literature
title: Local Langlands from the literature
decl: UpperTheory.LiteratureTheorems.local_langlands_gl_recT_exists_of_literature
chapter: literature
status: drafted
drafted_by: writer@claude-opus-5-5
uses: [open-literature-statements-def, rect-exists-def]
concepts: [9E45NBX1G0, WXGM3VWEK6]
routine: [UpperTheory.LiteratureTheorems.local_langlands_recT_exists_of_literature]
open: [UpperTheory.One.M.New.llOf_alt, UpperTheory.LiteratureTheorems.local_converse_gl_of_literature, UpperTheory.LiteratureTheorems.depth_zero_induction_of_literature, UpperTheory.LiteratureTheorems.brauer_degree_zero_of_literature, UpperTheory.LiteratureTheorems.chevalley_units_of_literature, UpperTheory.LiteratureTheorems.global_artin_reciprocity_of_literature, UpperTheory.LiteratureTheorems.langlands_exhaustion_gl_of_literature, UpperTheory.LiteratureTheorems.langlands_multisegments_of_literature, UpperTheory.LiteratureTheorems.standard_cosocle_gl_of_literature, UpperTheory.LiteratureTheorems.zelevinsky_polynomial_ring_of_literature, UpperTheory.LiteratureTheorems.geometric_restriction_of_literature, UpperTheory.LiteratureTheorems.bernstein_zelevinsky_finiteness_of_literature]
---
## Statement

Let $O$ be a proof of the structure [OpenLiteratureStatements](/step/open-literature-statements-def/). Then [the statement RecTExists](/step/rect-exists-def/) holds.

`RecTExists` says: let $E$ be a [[number field|WXGM3VWEK6]], let $\Omega$ be an algebraic closure of $E$, let $A$ be a valuation subring of $\Omega$ and let $w$ be a finite place of $E$ with a proof $h$ that $A$ lies over $w$. Then there is a map $rc$ from the irreducible representations of $\mathrm{GL}_n(E_w)$, for all $n$, to Weil-Deligne classes, such that `IsRecT h rc` holds. The predicate `IsRecT` asks for a local Artin map $a$ and the laws `LawsT` for $a$. This is an existence statement in the style of the [[local Langlands conjectures|9E45NBX1G0]] for $\mathrm{GL}_n$.

## Proof

The proof applies the theorem `UpperTheory.One.M.New.llOf_alt` to twelve inputs. The type of `llOf_alt` is

$$
\begin{aligned}
&\mathsf{RecTExists} \to \mathsf{LocalConverseGL} \to \mathsf{DepthZeroInduction} \to \dots \\
&\qquad \to \mathsf{BernsteinZelevinskyFiniteness} \to \mathsf{RecTExists},
\end{aligned}
$$

with twelve hypotheses and the conclusion `RecTExists`. The inputs are these.

1. `local_langlands_recT_exists_of_literature O`, of type `RecTExists`. Its proof is the field access `O.localLanglandsExists`.
2. Eleven theorems of the same file, each applied to $O$: `local_converse_gl_of_literature` (`LocalConverseGL`), `depth_zero_induction_of_literature` (`DepthZeroInduction`), `brauer_degree_zero_of_literature` (`BrauerDegreeZero`), `chevalley_units_of_literature` (`ChevalleyUnits`), `global_artin_reciprocity_of_literature` (`GlobalArtinReciprocity`), `langlands_exhaustion_gl_of_literature` (`LanglandsExhaustionGL`), `langlands_multisegments_of_literature` (`LanglandsMultisegments`), `standard_cosocle_gl_of_literature` (`StandardCosocleGL`), `zelevinsky_polynomial_ring_of_literature` (`ZelevinskyPolynomialRing`), `geometric_restriction_of_literature` (`GeometricLemma`) and `bernstein_zelevinsky_finiteness_of_literature` (`BernsteinZelevinskyFiniteness`). The types are in the namespace `GlobalTheory.Published`.

The proof of `llOf_alt` is `fun h _ _ _ _ _ _ _ _ _ _ _ => h`. It returns its first argument and ignores the other eleven. So the result is the first input, the field `O.localLanglandsExists`, with no change.

**Use of $O$.** This theorem reads the field `localLanglandsExists` of $O$, through `local_langlands_recT_exists_of_literature`. It reads no other field. It is one of the 13 theorems of the file that read $O$.

**Named result.** This theorem is itself a named result of `links/literature.yaml`. The entry points to the local Langlands correspondence for $\mathrm{GL}_n$ over $p$-adic fields: Harris and Taylor (2001), Henniart (2000), and Scholze (2013) for a later proof. The entry marks it as `reads_hypothesis: true`, which agrees with the Lean text. The entry also notes that the Lean statement is weaker than the published theorem: it states existence only, with no uniqueness and no surjectivity, it does not match $L$-factors or $\varepsilon$-factors of pairs, and injectivity holds only on good representations.

## Notes

The name and the eleven extra inputs suggest that the proof builds `RecTExists` from the local converse theorem, the Langlands classification, the Bernstein and Zelevinsky results and the other named results. It does not. The eleven inputs are not used. The theorem only returns the field `localLanglandsExists` of $O$.

On the trunk, `everyCharacter_of_row` builds $O$ as $\langle h, \texttt{recTExists}, h \rangle$. So the field `localLanglandsExists` is the theorem `recTExists` of the code, see [local Langlands existence](/step/rect-exists/). So on the trunk the proof does not assume the local Langlands correspondence.

This theorem has three callers in the file. [EveryCharacter from the literature and VWin](/step/every-character-of-literature/) passes it as the input $h_L$ of [EveryCharacter from theta integrals and local matching](/step/theta-local-matching/). The theorems `carU_above_l_of_literature` and `hecke_l_adic_character_crystalline_of_literature` also use it. Both enter [the bundle UnitaryGroupThirdPlaceHypotheses](/step/published-results-eigen/).

The theorem `local_langlands_recT_exists_of_literature` has the same statement and a direct proof. Lean has the two theorems side by side. The extra layer through `llOf_alt` adds nothing.
