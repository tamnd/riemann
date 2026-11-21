---
id: theta-integrals-agree-def
title: The statement ThetaIntegralsAgree
decl: GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.ThetaIntegralsAgree
chapter: theta-matching
status: drafted
drafted_by: writer@claude-opus-5-5
uses: []
concepts: [6WB6TKE70H, H3Q2703KKV, 0R9R0Y1HDK, CE0V9686M8, EQ6A3ZN48K]
routine: []
open: [GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.Base, GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.Chars, GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.Coinv, GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.Decay, GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.Geo, GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.IsMatched, GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.IsTriple, GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.OneConst, GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.StepAlpha, GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.StepBeta]
---
## Statement

`ThetaIntegralsAgree` is a definition. It is a proposition with no parameters. It is the conjunction of three parts. The data $F$, $E$, $\sigma$, $B$, $G$, $X$, $\omega$, $\omega'$ and the conditions `IsTriple` and `IsMatched` are as in [the statement LocalMatching](/step/local-matching-def/).

1. **One triple.** For each $F$, $E$, $\sigma$, $B$, $a$, $a'$, $G$, $X$, $\omega$, $\omega'$ with `IsTriple B G X om om'`, the statement `Decay B G om om'` holds, and for all real maps $R$ and finite maps $R_f$ with `IsMatched B G X om om' R Rf`, both `OneConst B G X om om' R Rf` and `Coinv B G X om om' Rf` hold.
2. **First recursion.** There are signs $e_1, e_2, s \in \{\pm 1\}$ (units of $\mathbb{Z}$) such that `StepBeta σ e₁ e₂ s` holds for all $F$, $E$ and $\sigma$.
3. **Second recursion.** There are signs $e_1, e_2, s \in \{\pm 1\}$ such that `StepAlpha σ e₁ e₂ s` holds for all $F$, $E$ and $\sigma$.

The signs in parts 2 and 3 can differ.

## What it means

**Theta integrals.** For a model $M$ of the spaces $Y$ and $W$ and a representation $\omega$, the theta function is $\theta(g, h; \Phi) = \sum_\xi (\omega(g, h)\Phi)(\xi)$, with $\xi$ over the rational points (the Lean `theta`, built on `thetaSum`). The theta integral is
$$ I_M(\Phi)(h) = \int_{\mathrm{dom}} \theta(g, h; \Phi)\, d\mu(g), $$
where $\mu$ is the measure of the model, a [[Haar measure|CE0V9686M8]] on the [[unitary group|0R9R0Y1HDK]] $U_Y(\mathbb{A})$ for a good triple, and `dom` is a fundamental domain for $U_Y(F)$. So $I_M(\Phi)$ is a function on $U_W(\mathbb{A})$. For a triple there are two such integrals, $I_M$ from $U_V$ with $\omega$ and $I_{M'}$ from $U_{V'}$ with $\omega'$, both into $U_W$. This is a global [[theta correspondence|6WB6TKE70H]] for two [[Weil representations|H3Q2703KKV]].

**Decay.** `Decay` says: for each adelic Schwartz function $\Phi$, $g \mapsto \theta(g, h; \Phi)$ is integrable on `dom` for each $h$. For each $\Phi'$ in a subspace `So` (spanned by pure tensors with a special local factor at the place $v_1$ of $B$), three things hold: for each $N$ there are $C$ and $k$ with $|\theta(g, h; \Phi')| \cdot \mathrm{qht}(g)^N \leq C\, \mathrm{ht}(h)^k$ for all $g, h$; the function $g \mapsto \theta(g, h; \Phi')$ is integrable on `dom`; and $I_{M'}(\Phi')$ has moderate growth for the height `ht`. Here `ht` is a height on the adelic group and `qht` its infimum over the rational coset.

**One constant.** `IsConst c` says: for each pair $(\Phi, \Phi')$ that is matched (`Match`) by $R$ and $R_f$, and each $h \in U_W(\mathbb{A})$,
$$ I_M(\Phi)(h) = c \cdot I_{M'}(\Phi')(h). $$
A pair is matched when $\Phi' \in$ `So`, and $\Phi$ and $\Phi'$ are limits of sums of pure tensors whose images under $R$ and the maps $p_v$, $p'_v$ of $R_f$ agree in $\Pi_\infty \otimes \bigotimes_{v \in T'} \Pi_v$ for a finite set $T' \supseteq T$ (the condition `PolMatch`). `OneConst` says three things: some $\Phi' \in$ `So` has $I_{M'}(\Phi') \neq 0$; there is exactly one $c$ with `IsConst c`; and each such $c$ is not zero.

**Coinvariants.** `Coinv` has two parts. First, at each place $v$ that is good for $X$ ($v \notin T$ and $v$ splits fully in $E$): the kernel of $p_v$ on the Schwartz-Bruhat functions is exactly `augAt om v`, the kernel of $p'_v$ is exactly `augAt om' v`, each vector of $\Pi_v$ is $p'_v \varphi$ for some $\varphi$ in the local space `SoLoc` at each embedding $t : E \to F_v$, and each linear form that kills `augAt om' v` factors through $p'_v$. Second, `So` is stable under $\omega'$.

**StepBeta.** Let $b \in \mathbb{N}$. Let $G$ be a geometry for sizes $(a, b+2)$ and $G_1$ one for $(a, b)$, with the same space $V$, the same $p$, and $q_1 + 1 = q$. Let $H$ be a plane datum that splits a hyperbolic plane off $V'$ with complement $V'_1$, and $H'$ one that does the same for $W$ and $W_1$ (`Plane.IsAdapted`: a pair $x, y$ with form values $0, 0, 1$, an orthogonal complement with the Gram matrix of the smaller space, and compatible lattices; $H$ also holds a fractional ideal $\mathfrak{b}$). Then there is $C \neq 0$ such that for all matched data of the two triples, with the same $X$, and constants $c$ and $c_1$ of the two triples, there is $u$ with
$$ u \cdot C \cdot \mathrm{stepFac}(z) = 1, \qquad c \cdot L^{S_0}\bigl(\lfloor (a-b-2)/2 \rfloor + 1, \nu\bigr) = u \cdot c_1, $$
where $z = -\lfloor (a - b - 2)/2 \rfloor$. In words, $c \cdot L^{S_0}(\ldots) = c_1 / (C \cdot \mathrm{stepFac}(z))$.

**StepAlpha.** Let $G$ be a geometry for sizes $(b+2, a')$ and $G_1$ one for $(b, a')$, with the same $V'$, $q = q_1 = 0$, and $p_1 + 1 = p$. Let $H$ split a hyperbolic plane off $V$ and $H'$ one off $W$, both at the first index. Then there is $C \neq 0$ such that, for the constants $c$ and $c_1$ of matched data,
$$ c = C \cdot \mathrm{stepFac}(z) \cdot L^{S_0}\bigl(\lfloor (b+2-a')/2 \rfloor, \nu\bigr) \cdot c_1, \qquad z = 1 - \lfloor (b+2-a')/2 \rfloor. $$

Here $\nu = \alpha/\beta$, and $L^{S_0}(s, \nu)$ is the partial L-function of $\nu$ without the factors at $S_0$ (`charL`). The factor `stepFac B X e₁ e₂ s 𝔟 𝔠 z` is
$$ \nu(\mathfrak{b})^{e_1}\, \nu(\mathfrak{c})^{e_2} \prod_{v \in P,\ v \in T} \nu_v(s)\, \varepsilon(\psi, \nu_v, z), $$
with $\mathfrak{b}$, $\mathfrak{c}$ the ideals of $H$ and $H'$, $\nu(\mathfrak{b})$ the value of $\nu$ on a fractional ideal (`idealVal`), $\nu_v$ the local character at $v$ through $\tau_v$ (`chrW`), and $\varepsilon(\psi, \nu_v, z) = N(v)^{-c(\nu_v) z} \cdot \mathfrak{g}(\psi, \nu_v) \cdot \nu_v(\varpi)^{c(\nu_v)}$ (`eps`). Here $c(\nu_v)$ is the conductor exponent, $\varpi$ is a uniformizer and $\mathfrak{g}$ is a [[Gauss sum|EQ6A3ZN48K]] (`gauss`).

So `ThetaIntegralsAgree` says: the two theta integrals of a good triple converge, they are proportional on matched test functions with one nonzero constant, and the constant changes by an explicit factor with a partial L-value when a hyperbolic plane is split off one side.

## Notes

The statement is a definition. In the proof of the Riemann Hypothesis it is not assumed. The theorem `theta_integrals_agree_and_local_matching_of_literature` proves it together with [LocalMatching](/step/local-matching-def/), through `theoremK_head2`. The literature list names Kudla and Rallis on the regularized Siegel-Weil formula as related work, and it does not identify a published theorem with this exact form.

Parts 2 and 3 ask for one choice of signs for all number fields. So the signs cannot depend on $F$ or $E$.

In `StepBeta` the constant $c$ of the larger triple is multiplied by the L-value, and in `StepAlpha` the L-value multiplies $c_1$. The numbers $\lfloor (a-b-2)/2 \rfloor$ and $\lfloor (b+2-a')/2 \rfloor$ are natural number operations in Lean, so a negative difference becomes $0$. For a good triple $a + a'$ is even, so the division is exact when the difference is not negative.

Part 1 asks for `OneConst` for every matched $(R, R_f)$. With [LocalMatching](/step/local-matching-def/), at least one such pair exists, so the constant exists for each good triple.

The step [EveryCharacter from theta integrals and local matching](/step/theta-local-matching/) takes this statement as the input $h_A$ and passes it to `nonempty_hyps_definite_side_of_closed_bound`.
