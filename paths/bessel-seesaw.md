[The Bessel seesaw chapter](/proof/bessel-seesaw/) proves FunctionalsSeparate (defined below) for [the unitary hypotheses chapter](/proof/unitary-hypotheses/). It says that a Bessel period of an iterated theta lift is not zero, and that one real test datum works for all inputs $t$. The proof climbs a tower of Bessel and Fourier-Jacobi periods, then uses local multiplicity one at the real place.

## Read first

- [Hermitian and skew-Hermitian forms](/learn/algebra/#hermitian-and-skew-hermitian-forms): the grid of Hermitian spaces $V_{i,j}$ over $E$.
- [Haar measure](/learn/analysis/#haar-measure). Each automorphic integral runs over a fundamental domain.
- [Unitary groups](/learn/groups/#unitary-groups): the groups $U(V_{i,j})$ of the grid and the real groups $\mathrm{U}(p, q)$.
- [Representations of real groups](/learn/representations/#representations-of-real-groups) and [discrete series](/learn/representations/#discrete-series), for Harish-Chandra modules at the real place.
- [Constant terms and cusp forms](/learn/automorphic-forms/#constant-terms-and-cusp-forms). The rapid decay of cusp forms is an input of $P_0 \ne 0$.
- [The Weil representation](/learn/theta/#the-weil-representation) sits on each edge of the grid, with [the splitting characters of the Weil representation](/learn/theta/#splitting-characters) made from [Hecke characters](/learn/class-field-theory/#hecke-characters).
- [The Fock model](/learn/theta/#the-fock-model) gives the vacuum vectors.
- [Theta kernels](/learn/theta/#theta-kernels) and [the global theta lift](/learn/theta/#the-global-theta-lift), for each step of the iterated lift.
- [Seesaw pairs](/learn/theta/#seesaw-pairs). Here the seesaw identity is an exchange of two integrals.
- [Generic characters](/learn/periods/#generic-characters) and [Bessel and Fourier-Jacobi periods](/learn/periods/#bessel-and-fourier-jacobi-periods): the character $\psi_N$, the Gross-Prasad period $P_0$ and the periods of the tower.
- [The descent of Ginzburg, Rallis and Soudry](/learn/periods/#the-descent-of-ginzburg-rallis-and-soudry) is the method the ascent follows.
- [Local multiplicity one](/learn/periods/#local-multiplicity-one) bounds the space of real Bessel functionals.
- [Interlacing and the branching law for discrete series](/learn/periods/#interlacing-and-the-branching-law-for-discrete-series) is the source of Interlaced (below).
- [The Gan-Gross-Prasad conjectures](/learn/periods/#the-gan-gross-prasad-conjectures), the deepest: the code states a case of the local Gan-Gross-Prasad conjecture but never uses it.

## The new objects

- The iterated lift $\theta_\chi = \theta_{m-1} \circ \dots \circ \theta_0$ runs along a row of the grid. The Bessel period $B^+(\varphi, F)$ pairs a form on the top node with a form on $U(V_{m,0})$. The number studied is $f = B^+(\langle \xi, \Psi \rangle, \theta_\chi(\rho, \Phi, u))$.
- FunctionalsSeparate says: for large families and each nonzero input $w$ there is a pair $(\rho, \xi)$ such that for each nonzero $t$ some $\Psi$, $\Phi$ give $f \ne 0$. The pair is the same for all $t$.
- PairEx gives a real intertwiner for one theta step. Its theorem is named after a seesaw, but states no seesaw identity.
- The bottom period $P_0(F, u)$ is an integral over the smallest unitary group of the tower. PeriodNe says that it is nonzero for some core vectors. One input is a real [matrix coefficient](/learn/representations/#compact-groups) identity, proved in Lean.
- Ascent says: if $P_0 \ne 0$ along a chain of forms, the top Bessel period is not zero. WeakSep is FunctionalsSeparate with a pair that may depend on $t$.
- BurGapPos bounds by $1$ the rank of the real Bessel functionals of a discrete series with a large gap. Interlaced is a sign condition on two Harish-Chandra parameters.

## The path through the chapter

1. By definition, $f$ is a global Bessel period of the iterated lift.
2. The real place gives a nonzero local period, so $P_0 \ne 0$.
3. The ascent climbs one rung at a time. In the first rung, the change of the order of integration is the seesaw identity.
4. With the surjectivity of the core lifts, the ascent gives WeakSep.
5. Local multiplicity one turns WeakSep into one datum for all $t$.
