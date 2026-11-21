---
id: local-matching-def
title: The statement LocalMatching
decl: GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.LocalMatching
chapter: theta-matching
status: drafted
drafted_by: writer@claude-opus-5-5
uses: []
concepts: [6WB6TKE70H, H3Q2703KKV, 0R9R0Y1HDK, KPYFGB342X, NYJFYZ0B4M]
routine: []
open: [GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.Base, GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.Chars, GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.Geo, GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.IsMatched, GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.IsTriple]
---
## Statement

`LocalMatching` is a definition. It is a proposition with no parameters. It says the following.

Let $F$ and $E$ be number fields with $E$ an $F$-algebra, and let $\sigma : E \to E$ be an $F$-algebra map. Let $B$ be a base datum (`Base F E`), let $a, a'$ be natural numbers, let $G$ be a geometry (`Geo σ a a'`), let $X$ be a character datum (`Chars F E`), and let $\omega$, $\omega'$ be two representations (the Lean `om`, `om'`). Suppose that `IsTriple B G X om om'` holds. Then there exist real maps $R$ and finite maps $R_f$ such that `IsMatched B G X om om' R Rf` holds.

## What it means

The data are these. All of them are in the namespace `GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels`.

- `Base F E` holds an additive character $\psi$ of the [[adele ring|NYJFYZ0B4M]] $\mathbb{A}_F$, an embedding of $E$ over each infinite place of $F$, two weights $m_\alpha, m_\beta$ at the infinite places, a finite set $P$ of finite places with an embedding $\tau_v : E \to F_v$ for each $v \in P$, and one more place $v_1$ with an embedding $\tau_1$.
- `Geo σ a a'` holds two integers $p, q$, three spaces $V$, $V'$, $W$ of sizes $a$, $a'$, $a + a'$, and two Weil models $M$ (for $V$ and $W$) and $M'$ (for $V'$ and $W$). A space holds a matrix $J$ over $E$, a lattice, matrices at the infinite places and bases at the finite places. A model holds Darboux coordinates, a vacuum vector at each finite place, a measure $\mu$ and a set `dom`.
- `Chars F E` holds two characters $\alpha, \beta$ of $(\mathbb{A}_F \otimes_F E)^\times$ with values in the unit circle, and two finite sets $S_0$, $Q$ of places. Write $\nu = \alpha/\beta$ and $T = S_0 \cup Q$.
- $\omega$ is a group map from $U_V(\mathbb{A}) \times U_W(\mathbb{A})$ to the linear maps on functions $\Phi : \mathbb{A}_F^{a \times (a+a')} \to \mathbb{C}$. $\omega'$ is the same for $V'$ and $W$. Here $U_J(\mathbb{A})$ is the adelic [[unitary group|0R9R0Y1HDK]] of the form $J$.

`IsTriple B G X om om'` has five fields. `base`: $E/F$ is CM with conjugation $\sigma$, $E/\mathbb{Q}$ is Galois, $E/F$ is unramified, $\psi$ is standard, and conditions hold at the inert places and on $P$. `geo`: $a' < a$, $a + a'$ is even, $a + a' < m_\alpha(w) - m_\beta(w)$ at each infinite place $w$, $2(p+q) + 1$ is less than $(a - a')/2$ and less than $a'$, $V$ and $V'$ are Hermitian with signatures $(a - p, p)$ and $(q, a' - q)$, $W$ is skew-Hermitian with signature $(a + a' - p - q, p + q)$, and both models are good (a Haar measure and a fundamental domain for $U(F)$). `chars`: $\alpha$ and $\beta$ are [[Hecke characters|KPYFGB342X]] with infinity types $m_\alpha, m_\beta$ and given restrictions to $\mathbb{A}_F^\times$, $S_0$ and $Q$ are disjoint, $T \subseteq P$, $\nu$ is ramified above each place of $T$, $\alpha$ and $\beta$ are unramified outside $T$, and $v_1 \notin T$ splits fully in $E$. `weil` and `weil'`: $\omega$ is a [[Weil representation|H3Q2703KKV]] of the pair for the model $M$ with the characters $(\beta, \beta/\alpha)$, and $\omega'$ is one for $M'$ with $(\alpha, \alpha/\beta)$.

`IsMatched B G X om om' R Rf` has three fields: `triple` (the triple is good), `real` (`IsRealMaps`) and `fin` (`IsFinMaps`).

- `FinMaps` holds, for each finite place $v$, a complex vector space $\Pi_v$ and two linear maps $p_v$, $p'_v$ from the local Schwartz-Bruhat functions of $\omega_v$ and $\omega'_v$ to $\Pi_v$. `IsFinMaps` says: $p_v$ and $p'_v$ are onto; they kill the span of the vectors $\omega(g, 1)\varphi - \varphi$ for $g$ in $U_V(F_v)$ and $U_{V'}(F_v)$ (the space `augAt`); if $p_v \varphi = p'_v \varphi'$, then the same holds after an element $h \in U_W(F_v)$ acts on $\varphi$ and $\varphi'$; $\Pi_v$ is nonzero and has no $U_W(F_v)$-stable subspace other than $0$ and $\Pi_v$; for $v \notin T$ the two vacuum vectors have the same nonzero image; and for $v \in P \cap T$ the condition `IsZetaAt` holds. `IsZetaAt` says that, after two explicit linear isomorphisms to functions on matrices, $p_v \varphi = p'_v \varphi'$ holds exactly when two local integrals (`bigP` and `smallP`, with the local characters of $\nu$, $\beta$ and $\alpha$) agree.
- `RealMaps` holds one complex vector space $\Pi$ and two linear maps $p$, $p'$ from the Schwartz spaces at the infinite places to $\Pi$. `IsRealMaps` asks the same as above with the Lie algebra action of one-parameter subgroups and the action of the maximal compact subgroup `KInf`, on the polynomial Fock space `Pol`.

So `LocalMatching` says: for each good triple, at every place, the local theta lifts of $\omega_v$ and $\omega'_v$ to $U_W(F_v)$ have a common irreducible quotient $\Pi_v$, with the vacuum vectors matched outside $T$ and an explicit matching at the places of $T$. In the language of the [[theta correspondence|6WB6TKE70H]], this is a local matching of two theta lifts into the same group.

## Notes

The statement is a definition. In the proof of the Riemann Hypothesis it is not assumed. The theorem `theta_integrals_agree_and_local_matching_of_literature` proves it together with [ThetaIntegralsAgree](/step/theta-integrals-agree-def/), through `theoremK_head2`.

The conclusion asks for maps $R$ and $R_f$ but does not say that they are unique. The statement [ThetaIntegralsAgree](/step/theta-integrals-agree-def/) quantifies over all matched $R$ and $R_f$.

The field `triple` of `IsMatched` repeats the hypothesis `IsTriple`.

The step [EveryCharacter from theta integrals and local matching](/step/theta-local-matching/) takes this statement as the input $h_M$ and passes it to `nonempty_hyps_definite_side_of_closed_bound`. The [theta matching chapter](/proof/theta-matching/) gives more detail on the data.
