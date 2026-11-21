The chapter [Block determinants and theta Parseval](/proof/determinants/) follows `tLift_of_tools_k`, the proof that a theta lift from $U(X)$ to $U(W)$ is not zero. The proof uses a Rallis inner product identity, a main term that is larger than a tail, and a test vector made of leading minors. The Stepanov determinant of the timeline is not in the code.

## Read first

- [Matrices](/learn/algebra/#matrices), for the determinant and the leading principal minors $\Delta_s$ of Step 3.
- [Polynomials and power series](/learn/algebra/#polynomials-and-power-series), for the polynomial ring that holds the test vector.
- [Zorn's lemma](/learn/algebra/#zorns-lemma), used by `projEx` in Step 6.
- [Hermitian and skew-Hermitian forms](/learn/algebra/#hermitian-and-skew-hermitian-forms), for the definite space $X$ and the space $W$.
- [Kinds of number fields](/learn/number-fields/#kinds-of-number-fields), for the CM field $E$.
- [Measures and integrals](/learn/analysis/#measures-and-integrals), because `Rallis_k` first says that a product of matrix coefficients is integrable.
- [Analytic continuation and the identity theorem](/learn/complex-analysis/#analytic-continuation-and-the-identity-theorem), for the move to $z = s_0$ in Step 4.
- [Unitary groups](/learn/groups/#unitary-groups), for $U(X)$ and $U(W)$. Since $X$ is definite, $U(X)$ is compact at infinity (Step 5).
- [Quotients of finite volume](/learn/groups/#quotients-of-finite-volume), for the height on the doubled group that controls the tail of Step 5.
- [Compact groups](/learn/representations/#compact-groups), for matrix coefficients and the Schur orthogonality step `SchurStep_k`.
- [Highest weights and branching](/learn/representations/#highest-weights-and-branching), for the highest weight vector $\mathrm{hw}_\nu$ of Step 3.
- [Modular forms](/learn/automorphic-forms/#modular-forms), for the Petersson inner product.
- [Automorphic forms on adelic groups](/learn/automorphic-forms/#automorphic-forms-on-adelic-groups), for the lift as an automorphic form on $U(W)$.
- [Automorphic representations](/learn/automorphic-forms/#automorphic-representations), for $U$ and $U'$.
- [Eisenstein series](/learn/automorphic-forms/#eisenstein-series), for the Siegel Eisenstein series on the doubled group.
- [The Fock model](/learn/theta/#the-fock-model), for the polynomial test vector $f_0$.
- [The global theta lift](/learn/theta/#the-global-theta-lift), for $\theta(\Phi, \varphi)$.
- [The doubling method](/learn/theta/#the-doubling-method), for the tool `dbl` of Step 4.
- [The Siegel-Weil formula](/learn/theta/#the-siegel-weil-formula), for the tool `swFull` of Step 4.
- [The Rallis inner product formula](/learn/theta/#the-rallis-inner-product-formula), of which `Rallis_k` is one direction.

## The new objects

`TLiftK` says that for $d \geq d_0$ an automorphic representation $U$ of $U(X)$ has a lift $U'$ on $U(W)$ with matched weights and local components. See [the statement](/step/tlift-k-def/) and [its proof](/step/t-lift-k/).

`Tools_k` bundles fourteen inputs, among them a full Siegel-Weil statement `swFull` and the doubling tool `dbl`. The chapter does not unfold them.

$\mathrm{hw}_\nu = \prod_s \Delta_s^{\,\nu_s - \nu_{s+1}}$ is the classical [highest weight](/learn/representations/#highest-weights-and-branching) vector. `joint` puts it into the Fock space `PP n d`, and `jointNe` says it is not zero.

`Rallis_k` says: if the lift of $\varphi$ is zero, then the integral of the Weil matrix coefficient against the [matrix coefficient](/learn/representations/#compact-groups) of $\varphi$ is zero.

`NonVan_k` gives finite test data with a lift that is not zero. `AbsNe` is the abstract step: a main term over the integral part is larger than the tail.

`ProjEx` takes a nonzero automorphic form to one irreducible $U'$ with a projection that does not kill it.

## The path through the chapter

1. `realPair_k` builds the test vector $f_0$ from leading minors, with types that match a form $\varphi \in U$ (Step 3).
2. `rallis_k` proves the identity through doubling, analytic continuation and Siegel-Weil (Step 4).
3. `nonVan_k` makes the integral a main term plus a smaller tail, so the lift is not zero (Step 5).
4. `projEx` and `ReadLift_k` give $U'$ and read its weights (Step 6).
