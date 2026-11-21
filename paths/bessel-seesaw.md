[The Bessel seesaw chapter](/proof/bessel-seesaw/) proves `FunctionalsSeparate`, which [the unitary hypotheses chapter](/proof/unitary-hypotheses/) needs. The statement says that a Bessel period of an iterated theta lift is not zero, and that one real test datum works for all inputs $t$. The proof climbs a tower of Bessel and Fourier-Jacobi periods, then uses local multiplicity one at the real place.

## Read first

- [Hermitian and skew-Hermitian forms](/learn/algebra/#hermitian-and-skew-hermitian-forms), for the grid of Hermitian spaces $V_{i,j}$ over $E$ and their orthogonal decompositions.
- [Adeles and ideles](/learn/number-fields/#adeles-and-ideles) and [Hecke characters](/learn/class-field-theory/#hecke-characters), for $\mathbb{A}$ and the characters $(\mathbb{A}_E)^\times \to S^1$.
- [Haar measure](/learn/analysis/#haar-measure), for the fundamental domain `M.fd X` of each automorphic integral.
- [Unitary groups](/learn/groups/#unitary-groups), for the groups $U(V_{i,j})$ of the grid and the real groups $\mathrm{U}(p, q)$.
- [Parabolic subgroups](/learn/groups/#parabolic-subgroups), for the unipotent radical of a flag in `Bplus`.
- [The Heisenberg and metaplectic groups](/learn/groups/#the-heisenberg-and-metaplectic-groups), for the Heisenberg group of the rungs.
- [Highest weights and branching](/learn/representations/#highest-weights-and-branching), for the finite dimensional representations of a definite unitary group and the branching law that `Interlaced` imitates.
- [Representations of real groups](/learn/representations/#representations-of-real-groups), for Harish-Chandra modules and Casselman-Wallach, inputs of `PeriodNe`.
- [Discrete series](/learn/representations/#discrete-series), for the discrete series models of `PairEx` and their Harish-Chandra parameters.
- [Constant terms and cusp forms](/learn/automorphic-forms/#constant-terms-and-cusp-forms), for the rapid decay of cusp forms, an input of $P_0 \ne 0$.
- [The Weil representation](/learn/theta/#the-weil-representation) and [the splitting characters of the Weil representation](/learn/theta/#splitting-characters), for the Weil data on the edges of the grid.
- [The Fock model](/learn/theta/#the-fock-model), for the space `PolF` and the vacuum vectors.
- [The Stone-von Neumann theorem](/learn/theta/#the-stone-von-neumann-theorem), for the fact on the Heisenberg group that all rungs share.
- [Theta kernels](/learn/theta/#theta-kernels) and [the global theta lift](/learn/theta/#the-global-theta-lift), for each step `liftA` of $\theta_\chi$.
- [Seesaw pairs](/learn/theta/#seesaw-pairs), for the exchange of integrals in `UpLast`.
- [Generic characters](/learn/periods/#generic-characters), for `besChar`.
- [Bessel and Fourier-Jacobi periods](/learn/periods/#bessel-and-fourier-jacobi-periods), for `Bplus`, the Gross-Prasad period $P_0$ and the periods of the tower.
- [The descent of Ginzburg, Rallis and Soudry](/learn/periods/#the-descent-of-ginzburg-rallis-and-soudry), the method that the ascent runs in reverse.
- [Local multiplicity one](/learn/periods/#local-multiplicity-one), for the Bessel functional bound `BurGapPos`.
- [Interlacing and the branching law for discrete series](/learn/periods/#interlacing-and-the-branching-law-for-discrete-series), for `Interlaced`.
- [The Gan-Gross-Prasad conjectures](/learn/periods/#the-gan-gross-prasad-conjectures), for the local Gan-Gross-Prasad conjecture behind `BesselPeriodGGP`, which the proof does not reach.

The Notes compare `rallis_of_dm` with [the Rallis inner product formula](/learn/theta/#the-rallis-inner-product-formula). This branch does not use it.

## The new objects

`thetaChi` is the iterated lift $\theta_{m-1} \circ \dots \circ \theta_0(u)$ along a row of the grid. `Bplus` is the Bessel period $B^+(\varphi, F)$ of a form on the top node against a form on $U(V_{m,0})$. `fPsiPhi` is $B^+(\langle \xi, \Psi \rangle, \theta_\chi(\rho, \Phi, u))$.

`FunctionalsSeparate` says: for large families and each nonzero $w$ there are $\rho$, $\xi$ with `Separates`. `Separates` says that for each nonzero $t$ some $\Psi$, $\Phi$ give $f \ne 0$. The pair $(\rho, \xi)$ does not depend on $t$.

`PairEx` is a real intertwiner for one theta step. Its name has "seesaw", but it is not a seesaw identity.

`per0` is the bottom period $P_0(F, u)$, and `PeriodNe` says that it is not zero for some core vectors. `RealInputE` is a real [matrix coefficient](/learn/representations/#compact-groups) identity, proved in Lean.

`Ascent` says: if $P_0 \ne 0$ along a chain of forms, then the top Bessel period is not zero. It joins the rungs `Rung0`, `RungB` and `RungJ`. `UpLast` is the lemma of `Rung0`. `WeakSep` is `Separates` with $(\rho, \xi)$ that may depend on $t$.

`BurGapPos` bounds the rank of the real Bessel functionals by $1$ for a [discrete series](/learn/representations/#discrete-series) with a large gap. `Interlaced` is a sign condition on two Harish-Chandra parameters.

## The path through the chapter

1. `Bplus` is, by definition, a global Bessel period of the iterated lift.
2. The real place gives a nonzero local period, so $P_0 \ne 0$.
3. The ascent goes up the tower one rung at a time, as in the descent of Ginzburg, Rallis and Soudry. In `UpLast` the change of the order of integration is the seesaw identity.
4. With `CoreOnto`, the ascent gives `WeakSep`.
5. Local multiplicity one turns `WeakSep` into one datum for all $t$.
