The chapter [Siegel-Weil, the metaplectic representation and cusp forms](/proof/siegel-weil/) is about five statements that the literature node names: the Siegel-Weil formula `SiegelWeilStd`, two metaplectic representations, the convergent range `SiegelWeilUnitaryConvergent`, and the cusp decay bound `CuspDecaySobolev`. The code proves each of them. Most of the chapter follows the proof of `SiegelWeilStd`: compare Fourier coefficients, then induct on $n$.

## Read first

- [Hermitian and skew-Hermitian forms](/learn/algebra/#hermitian-and-skew-hermitian-forms), for the definite space $A$ and the space $Y$: one has a Hermitian form, the other a skew-Hermitian form.
- [Kinds of number fields](/learn/number-fields/#kinds-of-number-fields), for the CM field $E$ over $F$.
- [Adeles and ideles](/learn/number-fields/#adeles-and-ideles), for the groups $U_A(\mathbb{A})$ and $G_2(\mathbb{A})$.
- [Hecke characters](/learn/class-field-theory/#hecke-characters), for the Hecke character $\chi$ with restriction $\eta^m$ to $\mathbb{A}_F^\times$.
- [Haar measure](/learn/analysis/#haar-measure), for the measure $\mu$ and the fundamental domain $D$ of the theta integral.
- [The Fourier transform](/learn/analysis/#the-fourier-transform), for the Schwartz space of $m \times n$ matrices and the Weyl element, which acts by a Fourier transform.
- [Poisson summation, theta and Mellin](/learn/complex-analysis/#poisson-summation-theta-and-mellin): the Poisson summation formula gives the bundle `TAll` of Step 2.
- [Topological groups and covering maps](/learn/analysis/#topological-groups-and-covering-maps), for the metaplectic group of Step 8.
- [Sobolev norms](/learn/analysis/#sobolev-norms), for the bound of Step 10.
- [Unitary groups](/learn/groups/#unitary-groups), for $U_A$ and the doubled group $G_2$.
- [Parabolic subgroups](/learn/groups/#parabolic-subgroups), for the Siegel parabolic and the Weyl element of Step 2.
- [Quotients of finite volume](/learn/groups/#quotients-of-finite-volume), for the finite volume of Step 9 and the height of Step 10.
- [Hermitian lattices and the mass formula](/learn/groups/#hermitian-lattices-and-the-mass-formula), for the local densities of Step 9.
- [The Heisenberg and metaplectic groups](/learn/groups/#the-heisenberg-and-metaplectic-groups), for the double cover of Step 8.
- [Eisenstein series](/learn/automorphic-forms/#eisenstein-series), for the Siegel Eisenstein series $E(x, s, \Phi)$.
- [Fourier coefficients and Whittaker functions](/learn/automorphic-forms/#fourier-coefficients-and-whittaker-functions), for `ThetaCoef` and `WhitK` of Step 3, and the Poincaré series of Step 10.
- [Constant terms and cusp forms](/learn/automorphic-forms/#constant-terms-and-cusp-forms), for the constant term split of Step 5 and the rapid decay of cusp forms.
- [The Schrödinger model](/learn/theta/#the-schrdinger-model), for the formulas `TPar` and `TWeyl`.
- [Theta kernels](/learn/theta/#theta-kernels), for the theta sum $\theta(\Phi) = \sum_\xi \Phi(\xi)$.
- [The Siegel-Weil formula](/learn/theta/#the-siegel-weil-formula), the theorem of the chapter, on the doubled group.
- [Orbit integrals and the relative trace formula](/learn/periods/#orbit-integrals-and-the-relative-trace-formula), for $\mathrm{orb}_T$. The relative trace formula of the timeline is not in the code.

## The new objects

`SiegelWeilStd` is the Siegel-Weil formula for the doubled group $G_2 = U(Y \oplus -Y)$ and a definite space $A$ of size $m$. Its conclusion `EisValueAt` says that the Eisenstein series of the section $x \mapsto l(\omega(x)\Phi)$ is analytic at $s_0 = \tfrac{m-n}{2}$, with value $c$ times the mean of the theta integral over $D$. The constant $c$ is $1$ for $n < m$ and $2$ for $n \ge m$.

`TAll` bundles five facts about a transform $T\Phi$ onto Schwartz functions of matrices. Together they are the Schrödinger model of the Weil representation: the bijection, the actions of the [Siegel parabolic](/learn/groups/#parabolic-subgroups) and the Weyl element, the theta sum, and the invariance of the theta integral.

$\mathrm{orb}_T(\Phi)$ is an orbit integral: the mean over $D$ of the theta sum over the $X$ with $\mathrm{gram}(X, X) = -2T$. `ThetaCoef` and `WhitK` say that it is the $T$-th Fourier coefficient of each side.

`CTSplit`, `Step` and `HolLead` carry the induction for $m < n$. `CTSplit` writes a constant term as a Fourier coefficient of an Eisenstein series of lower rank plus one more term. `HolLead` says the series has no pole at $s_0$.

`MetaplecticRepresentation` and `RealMetaplecticRepresentation` give a [double cover](/learn/groups/#the-heisenberg-and-metaplectic-groups) of $\mathrm{Sp}_{2n}(\mathbb{R})$ with the Weil representation on $L^2$ and on Schwartz space. The second adds the action of the Lie algebra. Both are fields of [ThetaLocalInputs](/step/theta-local-inputs-def/).

`SiegelWeilUnitaryConvergent` says that $U_J(F) \backslash U_J(\mathbb{A})$ has finite volume, and that for $2n < M$ the mean of a theta sum is a product of local densities. This is [Siegel's mass formula](/learn/groups/#hermitian-lattices-and-the-mass-formula), the convergent range of the Siegel-Weil formula.

`CuspDecaySobolev` is the rapid decay of cusp forms, with the constant bounded by a Sobolev norm.

## The path through the chapter

1. The Poisson summation formula gives `TAll`, the Schrödinger model in the coordinates of the proof (Step 2).
2. For $n < m$, the Fourier coefficients of the theta integral and of the Siegel Eisenstein series are the same orbit integrals (Step 3).
3. For $m \le n$, an induction on $n$ through the constant term, with `HolLead` for holomorphy at $s_0$ (Steps 4 to 6).
4. `theoremK_head2` turns `SiegelWeilStd` into [ThetaIntegralsAgree and LocalMatching](/step/theta-integrals-agree-and-local-matching-of-literature/) (Step 7).
5. A Poincaré series whose identity term dominates at large level gives a cusp form with a theta period that is not zero (Step 10). It feeds [HypsAlt is nonempty](/step/nonempty-hyps/).
