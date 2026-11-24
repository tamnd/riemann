[The theta matching chapter](/proof/theta-matching/) gets [EveryCharacter](/step/every-character-def/) from seven inputs. It unfolds the two theta inputs, ThetaIntegralsAgree and LocalMatching, which are statements about theta lifts between unitary groups. A short branch then proves $L(s, \psi) \ne 0$ for primitive $\psi$, and a Mathlib argument passes to all characters.

## Read first

- [Hermitian and skew-Hermitian forms](/learn/algebra/#hermitian-and-skew-hermitian-forms) and [unitary groups](/learn/groups/#unitary-groups). A triple has two Hermitian spaces $V$, $V'$ and one skew-Hermitian space $W$, each with a signature.
- [Tensor products and coinvariants](/learn/algebra/#tensor-products-and-coinvariants). The local maps kill coinvariants, and matching is defined on pure tensors.
- [Fields and extensions](/learn/algebra/#fields-and-extensions): the finite field $\mathbb{F}_{g^d}$ and the Frobenius conjugates $\theta^{g^i}$ of the section "The trunk part and Green's parametrization".
- [Haar measure](/learn/analysis/#haar-measure) and [the Fourier transform](/learn/analysis/#the-fourier-transform). A theta integral runs over a fundamental domain, and its test functions lie in a Schwartz space on the adele ring (see [adeles and ideles](/learn/number-fields/#adeles-and-ideles)).
- [Hecke characters](/learn/class-field-theory/#hecke-characters) and [Tate's thesis](/learn/class-field-theory/#tates-thesis-and-hecke-l-functions), for $\alpha$, $\beta$, $\nu = \alpha/\beta$, the partial L-function $L^{S_0}(s, \nu)$ and the epsilon factors in the recursion laws.
- [Primes and the explicit formula](/learn/l-functions/#primes-and-the-explicit-formula). The section "Zero-free half-planes for primitive characters" sums the von Mangoldt function.
- [Depth zero representations and types](/learn/representations/#depth-zero-representations-and-types) state Green's theorem on the cuspidal characters of $\mathrm{GL}_d(\mathbb{F}_g)$.
- [Reductive dual pairs](/learn/theta/#reductive-dual-pairs), [the Weil representation](/learn/theta/#the-weil-representation) and [the splitting characters of the Weil representation](/learn/theta/#splitting-characters). In a triple they are made from $\alpha$ and $\beta$.
- [The Schrödinger model](/learn/theta/#the-schrdinger-model) and [the Fock model](/learn/theta/#the-fock-model): the vacuum vector at each place, and the polynomial Fock space at the real places.
- [Theta kernels](/learn/theta/#theta-kernels) and [the global theta lift](/learn/theta/#the-global-theta-lift), for $\theta(g, h; \Phi)$ and its integral.
- [The local theta correspondence](/learn/theta/#the-local-theta-correspondence). LocalMatching has the form of Howe duality, with a common irreducible quotient.

## The new objects

- The theta integral of a model is $I_M(\Phi)(h) = \int_{\mathrm{dom}} \theta(g, h; \Phi)\, d\mu(g)$. When $\mu$ is a Haar measure and $\mathrm{dom}$ a fundamental domain, it is the usual theta lift from $\mathrm{U}(X)$ to $\mathrm{U}(W)$.
- A triple fixes a CM extension $E/F$, the spaces $V$, $V'$, $W$ with bounds on their sizes, two Hecke characters $\alpha$, $\beta$, and Weil representations of $\mathrm{U}(V) \times \mathrm{U}(W)$ and $\mathrm{U}(V') \times \mathrm{U}(W)$.
- [ThetaIntegralsAgree](/step/theta-integrals-agree-def/) says that the theta integrals of a triple converge, and that for matched test functions the lift from $\mathrm{U}(V)$ is $c$ times the lift from $\mathrm{U}(V')$, for one constant $c \ne 0$. Two recursion laws relate $c$ to the constant of a triple with one hyperbolic plane split off, through a partial L-value of $\nu$.
- [LocalMatching](/step/local-matching-def/) says that at each place the two local Weil representations map onto one irreducible representation $\Pi_v$ of $\mathrm{U}(W)(F_v)$, with matched vacuum vectors outside a finite set $T$.
- [Green](/step/green-def/) labels the cuspidal characters of $\mathrm{GL}_d(\mathbb{F}_g)$ by irreducible polynomials. [green-of-regular](/step/green-of-regular/) gets it from Green's theorem (1955), which labels them by Frobenius orbits of regular characters of $\mathbb{F}_{g^d}^\times$.
- [ZeroFreeAll](/step/zero-free-all-of-green-v-win/) says $L(s, \psi) \ne 0$ for each primitive $\psi$ and $\operatorname{Re}(s) > \frac12$. The record [HypsAlt](/step/hyps-alt-def/) belongs to the next chapter.

## The path through the chapter

1. The sections "Weil models, theta integrals and admissible triples", "Local matching" and "One constant and its recursion laws" unfold the theta inputs.
2. The section "The trunk part and Green's parametrization" sends both inputs into HypsAlt, built in [the unitary hypotheses chapter](/proof/unitary-hypotheses/).
3. The section "Zero-free half-planes for primitive characters" bounds a weighted sum of $\Lambda(n)$ by $x^{1/2 + O(\varepsilon)}$, and turns the bound into a zero-free half-plane, as in the explicit formula.
4. The section "[Imprimitive characters and the end of the branch](/step/imprimitive/)" removes the word "primitive" with the extra Euler factors of imprimitive characters.
