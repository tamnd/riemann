The chapter [Block determinants and theta Parseval](/proof/determinants/) follows tLift_of_tools_k, the proof that a theta lift from $U(X)$ to $U(W)$ is not zero. The proof uses a Rallis inner product identity, a main term that is larger than a tail, and a test vector made of leading minors. The Stepanov determinant of the timeline is not in the code.

## Read first

- [Matrices](/learn/algebra/#matrices): the determinant and the leading principal minors $\Delta_s$ of Section 2.
- [Polynomials and power series](/learn/algebra/#polynomials-and-power-series). The test vector lives in a polynomial ring.
- Section 5 uses [Zorn's lemma](/learn/algebra/#zorns-lemma).
- [Hermitian and skew-Hermitian forms](/learn/algebra/#hermitian-and-skew-hermitian-forms) and [kinds of number fields](/learn/number-fields/#kinds-of-number-fields): a definite space $X$ and a space $W$ over a CM field $E$.
- [Measures and integrals](/learn/analysis/#measures-and-integrals). The Rallis step first shows that a product of matrix coefficients is integrable.
- [Analytic continuation and the identity theorem](/learn/complex-analysis/#analytic-continuation-and-the-identity-theorem) carry an identity to $z = s_0$ in Section 3.
- [Unitary groups](/learn/groups/#unitary-groups). Since $X$ is definite, $U(X)$ is compact at infinity.
- [Quotients of finite volume](/learn/groups/#quotients-of-finite-volume): a height on the doubled group controls the tail of Section 4.
- [Compact groups](/learn/representations/#compact-groups) and [highest weights and branching](/learn/representations/#highest-weights-and-branching), for matrix coefficients, Schur orthogonality and the highest weight vector.
- [Modular forms](/learn/automorphic-forms/#modular-forms) define the Petersson inner product.
- [Automorphic forms on adelic groups](/learn/automorphic-forms/#automorphic-forms-on-adelic-groups) and [automorphic representations](/learn/automorphic-forms/#automorphic-representations): the lift is an automorphic form on $U(W)$, and $U$, $U'$ are automorphic representations.
- [Eisenstein series](/learn/automorphic-forms/#eisenstein-series), for the Siegel Eisenstein series on the doubled group.
- [The Fock model](/learn/theta/#the-fock-model) and [the global theta lift](/learn/theta/#the-global-theta-lift): the space of $f_0$ and the lift $\theta(\Phi, \varphi)$.
- [The doubling method](/learn/theta/#the-doubling-method) and [the Siegel-Weil formula](/learn/theta/#the-siegel-weil-formula) are two tools of Section 3.
- [The Rallis inner product formula](/learn/theta/#the-rallis-inner-product-formula), the deepest; Section 3 proves one direction of it.

## The new objects

- [TLiftK](/step/tlift-k-def/) says that for $d \geq d_0$ an automorphic representation $U$ of $U(X)$ has a lift $U'$ on $U(W)$, with matched weights at infinity and matched local components at split places. [tLiftK](/step/t-lift-k/) proves it.
- A record of fourteen tools holds the inputs, among them a full Siegel-Weil statement and a doubling statement. The chapter does not unfold them.
- $\mathrm{hw}_\nu = \prod_s \Delta_s^{\,\nu_s - \nu_{s+1}}$ is the classical highest weight vector. The code moves it into the Fock space of polynomials in $n \times d$ variables, where it is not zero.
- Rallis_k says: if the lift of $\varphi$ is zero, then the integral of the Weil matrix coefficient against the matrix coefficient of $\varphi$ is zero.
- NonVan_k gives finite test data whose lift is not zero. Its last step, AbsNe, is abstract: a main term over the integral part beats the tail.
- ProjEx takes a nonzero automorphic form to one irreducible $U'$, with a projection that does not kill it.

## The path through the chapter

1. Leading minors give a test vector $f_0$ whose types match a form $\varphi \in U$ (Section 2).
2. The Rallis identity comes from doubling, analytic continuation and Siegel-Weil (Section 3).
3. The integral splits into a main term and a smaller tail, so the lift is not zero (Section 4).
4. A projection gives $U'$, and its weights are read from the types of $f_0$ (Section 5).
