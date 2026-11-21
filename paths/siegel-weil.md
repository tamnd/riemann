The chapter [Siegel-Weil, the metaplectic representation and cusp forms](/proof/siegel-weil/) treats five statements that the literature node names: the Siegel-Weil formula SiegelWeilStd, two metaplectic representations, the convergent range SiegelWeilUnitaryConvergent and a cusp decay bound. The code proves them all. Most of the chapter follows the proof of SiegelWeilStd: compare Fourier coefficients, then induct on $n$.

## Read first

- [Hermitian and skew-Hermitian forms](/learn/algebra/#hermitian-and-skew-hermitian-forms). The definite space $A$ of size $m$ carries one kind of form, the space $Y$ of size $n$ the other.
- [Hecke characters](/learn/class-field-theory/#hecke-characters): $\chi$ restricts to $\eta^m$ on $\mathbb{A}_F^\times$.
- [Haar measure](/learn/analysis/#haar-measure), for the fundamental domain $D$ of the theta integral.
- [The Fourier transform](/learn/analysis/#the-fourier-transform): the Weyl element acts by one on the Schwartz space of matrices.
- [Poisson summation, theta and Mellin](/learn/complex-analysis/#poisson-summation-theta-and-mellin): the Poisson summation formula yields the model of Step 2.
- [Unitary groups](/learn/groups/#unitary-groups) and [parabolic subgroups](/learn/groups/#parabolic-subgroups): $U_A$, the doubled group $G_2$ and its Siegel parabolic.
- [The Heisenberg and metaplectic groups](/learn/groups/#the-heisenberg-and-metaplectic-groups): the metaplectic group of Step 8.
- [Eisenstein series](/learn/automorphic-forms/#eisenstein-series), [Fourier coefficients and Whittaker functions](/learn/automorphic-forms/#fourier-coefficients-and-whittaker-functions) and [constant terms and cusp forms](/learn/automorphic-forms/#constant-terms-and-cusp-forms): the Siegel Eisenstein series $E(x, s, \Phi)$, its coefficients, and the rapid decay of cusp forms.
- [The Schrödinger model](/learn/theta/#the-schrdinger-model) and [theta kernels](/learn/theta/#theta-kernels): the formulas behind TAll (below) and the theta sum $\theta(\Phi) = \sum_\xi \Phi(\xi)$.
- [The Siegel-Weil formula](/learn/theta/#the-siegel-weil-formula) is the theorem of the chapter.
- [Orbit integrals and the relative trace formula](/learn/periods/#orbit-integrals-and-the-relative-trace-formula). Only the orbit integrals are used.

## The new objects

- SiegelWeilStd is the Siegel-Weil formula for the doubled group $G_2 = U(Y \oplus -Y)$: at $s_0 = \tfrac{m-n}{2}$ the Eisenstein series is analytic, with value $c$ times the mean of the theta integral over $D$ ($c = 1$ for $n < m$, $c = 2$ for $n \ge m$).
- TAll bundles five facts that form the Schrödinger model of the Weil representation in the coordinates of the proof.
- The orbit integral $\mathrm{orb}_T(\Phi)$ is the mean over $D$ of the theta sum over the $X$ with $\mathrm{gram}(X, X) = -2T$. For $n < m$ it is the $T$-th Fourier coefficient of each side.
- For $m < n$ a constant term split writes a constant term as a Fourier coefficient of a lower rank Eisenstein series plus one more term. HolLead says that the series has no pole at $s_0$.
- MetaplecticRepresentation and RealMetaplecticRepresentation give a double cover of $\mathrm{Sp}_{2n}(\mathbb{R})$ with the Weil representation on $L^2$ and on Schwartz space.
- SiegelWeilUnitaryConvergent says that $U_J(F) \backslash U_J(\mathbb{A})$ has finite volume, and that for $2n < M$ the mean of a theta sum is a product of local densities, as in Siegel's mass formula.
- CuspDecaySobolev is the rapid decay of cusp forms, with the constant bounded by a [Sobolev norm](/learn/analysis/#sobolev-norms).

## The path through the chapter

1. The Poisson summation formula gives TAll (Step 2).
2. For $n < m$, the Fourier coefficients of the theta integral and of the Siegel Eisenstein series are the same orbit integrals (Step 3).
3. The case $n = m$ starts an induction on $n$ through the constant term, which covers $m < n$ (Steps 4 to 6).
4. SiegelWeilStd and EisBL give [ThetaIntegralsAgree and LocalMatching](/step/theta-integrals-agree-and-local-matching-of-literature/) (Step 7).
5. In the proof of FunctionalsSeparate, a Poincaré series whose identity term dominates at large level gives a cusp form with a nonzero theta period (Step 10).
