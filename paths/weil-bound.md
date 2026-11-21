[The Weil bound chapter](/proof/weil-bound/) is not about Weil's explicit formula. It follows the branch deep_slim_use, which proves a positivity statement of Arakelov geometry from eight published theorems. Its conclusion DeepStR (defined below) bounds from below a mean slope of small cusp sections on unitary Shimura varieties. It also lists the timeline steps with no counterpart in the code.

## Read first

- [Number fields and their integers](/learn/number-fields/#number-fields-and-their-integers): the discriminant, and the root discriminant $\mathrm{rd}(E) = |\operatorname{disc} E|^{1/[E:\mathbb{Q}]}$ of the error term.
- [Kinds of number fields](/learn/number-fields/#kinds-of-number-fields). $E$ is a CM field, abelian over $\mathbb{Q}$ in the volume theorem.
- [The logarithmic derivative](/learn/complex-analysis/#the-logarithmic-derivative) and [quadratic symbols](/learn/class-field-theory/#quadratic-symbols) give $L'/L(1, \chi_d)$ for the quadratic character $\chi_d$.
- That term comes from [the Chowla-Selberg formula](/learn/elliptic-curves/#the-chowla-selberg-formula), in Step 4.
- [Abelian varieties and abelian schemes](/learn/elliptic-curves/#abelian-varieties-and-abelian-schemes). SlopeBoundSt is about the Lie algebra of a semi-abelian scheme.
- [Dieudonné modules and the Hodge-Tate sequence](/learn/formal-groups/#dieudonn-modules-and-the-hodge-tate-sequence): one input is an exactness result of Fargues.
- [Schemes and varieties](/learn/geometry/#schemes-and-varieties). The arithmetic variety sits in a product of projective spaces.
- [Vanishing theorems and resolution](/learn/geometry/#vanishing-theorems-and-resolution) states three inputs: resolution of singularities, principalisation and asymptotic Riemann-Roch for nef divisors.
- [Shimura varieties and toroidal compactifications](/learn/geometry/#shimura-varieties-and-toroidal-compactifications), for the tower of integral models.
- [Hermitian line bundles](/learn/arakelov/#hermitian-line-bundles): semipositive metrics and the Poincaré-Lelong formula.
- [Arithmetic varieties and intersection numbers](/learn/arakelov/#arithmetic-varieties-and-intersection-numbers): the arithmetic intersection number $\overline{A}^{D+1}$, compared with counts of sections.
- [Heights](/learn/arakelov/#heights) gives Zhang's successive minima.
- [Arithmetic volume and bigness](/learn/arakelov/#arithmetic-volume-and-bigness) covers Moriwaki and Yuan, the arithmetic Hilbert-Samuel theorem and the arithmetic Kleiman criterion.
- [Hermitian lattices and slopes](/learn/arakelov/#hermitian-lattices-and-slopes): the maximal slope, the absolute Siegel lemma and, for the Notes, the Bost slope inequality.
- [The Hodge bundle and Zarhin's trick](/learn/arakelov/#the-hodge-bundle-and-zarhins-trick), the deepest, for the Hodge metric and Zarhin's input.

## The new objects

- DeepStR says that MeanAll holds with $s = \ell(D) = \log \mathrm{rd}(E) + |\operatorname{Re} L'/L(1, \chi_d)|$ for each tower object.
- MeanAll says: for each weight $u$ with a gap, the volume slopes $\mu_{\mathrm{vol}}(Z, u)$ of the components $Z$ have mean at least $-C\,\mathrm{err}(s, u, g)$. A volume slope grows with the number of lattice sections of small sup norm, so there are many small cusp sections.
- MoriwakiBigStatement is the inequality $\overline{A}^{D+1} \le \mathrm{vol}(\overline{A})$ of Moriwaki and Yuan for a nef Hermitian line bundle. HSUse is the upper half of arithmetic Hilbert-Samuel with the arithmetic Kleiman criterion. Both are proved in Lean, for intersection numbers given by axioms.
- An absolute Siegel lemma gives each Hermitian lattice a vector of large degree over some finite extension. SlopeBoundSt bounds $\mu_{\max}$ of the Lie algebra of a semi-abelian scheme by $C \log(2 + \operatorname{rank} + \max(-\widehat{\deg}, 0))$.
- GoodTowerExistsX gives a tower of integral models of a unitary Shimura variety. VolumeTheoremX bounds from below the mean intersection slope of the Hodge line bundles of weight $u$ on it.

## The path through the chapter

1. Step 2 gets small sections from intersection numbers by Moriwaki and Yuan, and the reverse bound by Hilbert-Samuel and Zhang's successive minima.
2. Step 3 gets the absolute Siegel lemma, and from it SlopeBoundSt, in place of a Bost slope inequality.
3. Step 4 computes intersection numbers on the tower. The Chowla-Selberg formula gives the term $L'/L(1, \chi_d)$.
4. Step 5 turns the intersection slope into a volume slope, again by Moriwaki and Yuan, and so proves DeepStR.
