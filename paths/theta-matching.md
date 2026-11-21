[The theta matching chapter](/proof/theta-matching/) gets [EveryCharacter](/step/every-character-def/) from seven inputs. It unfolds the two theta inputs, `ThetaIntegralsAgree` and `LocalMatching`, which are statements about theta lifts between unitary groups. Then it follows a short branch: the cuspidal characters of $\mathrm{GL}_d(\mathbb{F}_g)$, the window bound and the record `HypsAlt` give $L(s, \psi) \ne 0$ for primitive $\psi$, and a Mathlib argument passes to all characters.

## Read first

- [Hermitian and skew-Hermitian forms](/learn/algebra/#hermitian-and-skew-hermitian-forms), for the Hermitian spaces $V$, $V'$ and the skew-Hermitian form on $W$, with their signatures.
- [Tensor products and coinvariants](/learn/algebra/#tensor-products-and-coinvariants), for the coinvariant spaces of `Coinv` and the pure tensors of `Match`.
- [Fields and extensions](/learn/algebra/#fields-and-extensions), for the finite field $\mathbb{F}_{g^d}$ and the Frobenius conjugates $\theta^{g^i}$ of Step 6.
- [Haar measure](/learn/analysis/#haar-measure), for the measure $\mu$ and the fundamental domain `dom` of a model.
- [The Fourier transform](/learn/analysis/#the-fourier-transform), for the adelic Schwartz space of `Decay`.
- [Adeles and ideles](/learn/number-fields/#adeles-and-ideles), for $\mathbb{A}_F$ and the adele ring of $E$.
- [Hecke characters](/learn/class-field-theory/#hecke-characters), for $\alpha$, $\beta$, their infinity types and $\nu = \alpha/\beta$.
- [Tate's thesis and Hecke L-functions](/learn/class-field-theory/#tates-thesis-and-hecke-l-functions), for the partial L-function $L^{S_0}(s, \nu)$ and the epsilon factors of `StepAlpha` and `StepBeta`.
- [Dirichlet L-functions](/learn/l-functions/#dirichlet-l-functions), for imprimitive characters in Step 8.
- [Primes and the explicit formula](/learn/l-functions/#primes-and-the-explicit-formula), for the von Mangoldt function in $G_m$ of Step 7. Its constant $\gamma$ is in [the Riemann zeta function](/learn/l-functions/#the-riemann-zeta-function).
- [Unitary groups](/learn/groups/#unitary-groups), for $\mathrm{U}(V)$, $\mathrm{U}(V')$ and $\mathrm{U}(W)$, and their signatures.
- [Smooth representations of p-adic groups](/learn/representations/#smooth-representations-of-p-adic-groups), for the irreducible representation $\Pi_v$ of $\mathrm{U}(W)(F_v)$ in `LocalMatching`.
- [Depth zero representations and types](/learn/representations/#depth-zero-representations-and-types), for Green's theorem on the cuspidal characters of $\mathrm{GL}_d(\mathbb{F}_g)$.
- [Reductive dual pairs](/learn/theta/#reductive-dual-pairs), [the Weil representation](/learn/theta/#the-weil-representation) and [the splitting characters of the Weil representation](/learn/theta/#splitting-characters), for `om` and `om'` of a triple.
- [The Schrödinger model](/learn/theta/#the-schrdinger-model) and [the Fock model](/learn/theta/#the-fock-model), for the vacuum vector at each place and the space `Pol` of `IsRealMaps`.
- [Theta kernels](/learn/theta/#theta-kernels) and [the global theta lift](/learn/theta/#the-global-theta-lift), for $\theta(g, h; \Phi)$ and the theta integral $I_M(\Phi)$.
- [The local theta correspondence](/learn/theta/#the-local-theta-correspondence), for Howe duality and the common irreducible quotient $\Pi_v$ of `LocalMatching`.

## The new objects

`Model.I` is the theta integral $I_M(\Phi)(h) = \int_{\mathrm{dom}} \theta(g, h; \Phi)\, d\mu(g)$. With `IsGood` it is the usual theta lift from $\mathrm{U}(X)$ to $\mathrm{U}(W)$, written out by hand.

`IsTriple` fixes a CM extension $E/F$, three spaces $V$, $V'$, $W$ with bounds on their sizes and signatures, two Hecke characters $\alpha$, $\beta$, and two Weil representations into the same $\mathrm{U}(W)$.

[ThetaIntegralsAgree](/step/theta-integrals-agree-def/) says that the theta integrals of a triple converge, and that for matched test functions the lift from $\mathrm{U}(V)$ is $c$ times the lift from $\mathrm{U}(V')$, with one constant $c \ne 0$. Two recursion laws relate $c$ to the constant of a smaller triple, with one hyperbolic plane split off, by a partial L-value of $\nu$.

[LocalMatching](/step/local-matching-def/) says that at each place the two local Weil representations have quotient maps onto one irreducible representation $\Pi_v$ of $\mathrm{U}(W)(F_v)$, with matched vacuum vectors outside a finite set $T$.

[Green](/step/green-def/) labels the cuspidal characters of $\mathrm{GL}_d(\mathbb{F}_g)$ by irreducible polynomials. The step [green-of-regular](/step/green-of-regular/) gets it from [Green's theorem](/learn/representations/#depth-zero-representations-and-types) (1955), which labels them by Frobenius orbits of regular characters of $\mathbb{F}_{g^d}^\times$.

[ZeroFreeAll](/step/zero-free-all-of-green-v-win/) says $L(s, \psi) \ne 0$ for each primitive $\psi$ and $\operatorname{Re}(s) > \frac12$. The record [HypsAlt](/step/hyps-alt-def/) belongs to the next chapter. Here the branch only passes its fields on.

## The path through the chapter

1. Steps 1 to 4 unfold the theta inputs. `ThetaIntegralsAgree` compares two global theta lifts into $\mathrm{U}(W)$. `LocalMatching` is the local theta correspondence in the form of Howe duality.
2. Step 5 sends both inputs into `HypsAlt`, in [the unitary hypotheses chapter](/proof/unitary-hypotheses/).
3. Step 7 gets a bound $G_m(x) \le x^{1/2 + O(\varepsilon)}$ on sums of $\Lambda(n)$, and `FormB` turns it into a zero-free half-plane, as in the explicit formula.
4. [Step 8](/step/imprimitive/) removes the word "primitive" with the extra Euler factors of imprimitive characters.
