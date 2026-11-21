[The Weil bound chapter](/proof/weil-bound/) is not about Weil's explicit formula. It follows the branch `deep_slim_use`, which proves a positivity statement of Arakelov geometry from eight published theorems. The statement `DeepStR` says that on a tower of unitary Shimura varieties, the mean volume slope of small cusp sections is at least $-C$ times an error term in $\log \mathrm{rd}(E) + |\operatorname{Re} L'/L(1, \chi_d)|$. The chapter also says which steps of the timeline have no counterpart in the code.

## Read first

- [Number fields and their integers](/learn/number-fields/#number-fields-and-their-integers), for the discriminant and the root discriminant $\mathrm{rd}(E) = |\operatorname{disc} E|^{1/[E:\mathbb{Q}]}$.
- [Kinds of number fields](/learn/number-fields/#kinds-of-number-fields), for the CM field $E$, its CM types and the condition that $E$ is abelian.
- [The logarithmic derivative](/learn/complex-analysis/#the-logarithmic-derivative) and [quadratic symbols](/learn/class-field-theory/#quadratic-symbols), for $L'/L(1, \chi_d)$ with the quadratic character $\chi_d$.
- [Unitary groups](/learn/groups/#unitary-groups), for the unitary group of signature $(p, q)$ behind the unitary Shimura varieties.
- [The Chowla-Selberg formula](/learn/elliptic-curves/#the-chowla-selberg-formula), the source of the term $L'/L(1, \chi_d)$ in Step 4.
- [Abelian varieties and abelian schemes](/learn/elliptic-curves/#abelian-varieties-and-abelian-schemes), for the semi-abelian scheme whose Lie algebra `SlopeBoundSt` bounds.
- [Dieudonné modules and the Hodge-Tate sequence](/learn/formal-groups/#dieudonn-modules-and-the-hodge-tate-sequence), for the input `FarguesExact`.
- [Schemes and varieties](/learn/geometry/#schemes-and-varieties), for the product of projective spaces that contains $X$, nef bundles and Zariski density.
- [Vanishing theorems and resolution](/learn/geometry/#vanishing-theorems-and-resolution), for the inputs on resolution of singularities, principalisation and asymptotic Riemann-Roch (`NefRR`).
- [Shimura varieties and toroidal compactifications](/learn/geometry/#shimura-varieties-and-toroidal-compactifications), for the tower of integral models.
- [Hermitian line bundles](/learn/arakelov/#hermitian-line-bundles), for semipositive metrics and the Poincaré-Lelong formula.
- [Arithmetic varieties and intersection numbers](/learn/arakelov/#arithmetic-varieties-and-intersection-numbers), for the arithmetic intersection number $\overline{A}^{D+1}$.
- [Heights](/learn/arakelov/#heights), for Zhang's successive minima.
- [Arithmetic volume and bigness](/learn/arakelov/#arithmetic-volume-and-bigness), for Moriwaki and Yuan, the arithmetic Hilbert-Samuel theorem and the arithmetic Kleiman criterion.
- [Hermitian lattices and slopes](/learn/arakelov/#hermitian-lattices-and-slopes), for the maximal slope, the absolute Siegel lemma and the Bost slope inequality of the Notes.
- [The Hodge bundle and Zarhin's trick](/learn/arakelov/#the-hodge-bundle-and-zarhins-trick), for the Hodge metric and the input `ZarhinStatement`.

For the Notes on the Guinand-Weil function, see [primes and the explicit formula](/learn/l-functions/#primes-and-the-explicit-formula).

## The new objects

`DeepStR` is the conclusion of the branch: `MeanAll` holds with $s = \ell(D)$ for each tower object of the data.

`MeanAll` says that for each weight $u$ with a gap, the mean over the components $Z$ of the volume slopes $\mu_{\mathrm{vol}}(Z, u)$ is at least $-C\,\mathrm{err}(s, u, g)$. The volume slope measures how fast the number of lattice sections with small sup norm grows. So the statement says that there are many small cusp sections.

`MoriwakiBigStatement` is the inequality $\overline{A}^{D+1} \le \mathrm{vol}(\overline{A})$ of Moriwaki and Yuan, for a nef Hermitian line bundle. `HSUse` is the upper half of arithmetic Hilbert-Samuel and the arithmetic Kleiman criterion. In both, intersection numbers come from an abstract `IntersectionSystem` with axioms. Both are proved in Lean.

`LineOfLargeDegree.Statement` is an absolute Siegel lemma. `SlopeBoundSt` bounds $\mu_{\max}$ of the Lie algebra of a semi-abelian scheme by $C \log(2 + \operatorname{rank} + \max(-\widehat{\deg}, 0))$.

`GoodTowerExistsX` gives a tower of integral models of a unitary Shimura variety. `VolumeTheoremX` bounds the mean intersection slope of the Hodge line bundles of weight $u$ on the tower from below.

## The path through the chapter

1. Step 2 gets small sections from intersection numbers by Moriwaki and Yuan, and the reverse bound by Hilbert-Samuel and Zhang's successive minima.
2. Step 3 gets the absolute Siegel lemma, and from it `SlopeBoundSt`, in place of a Bost slope inequality.
3. Step 4 computes intersection numbers on the tower. The Chowla-Selberg formula gives the term $L'/L(1, \chi_d)$.
4. Step 5 turns the intersection slope into a volume slope, again by Moriwaki and Yuan, and so proves `DeepStR`.
