Galois cohomology is the continuous cohomology of a profinite Galois group. Over local and global fields its groups are finite and satisfy duality theorems, and Selmer and Tate-Shafarevich groups are the subgroups of $H^1$ cut out by local conditions. The window bound bounds the lengths of Tate-Shafarevich groups with these dualities, Iwasawa theory and Kato's Euler system.

## Continuous cohomology

Let $G$ be a profinite group ([Galois representations](/learn/galois-representations/)).

**Definition.** A *discrete $G$-module* is an abelian group $M$ with an action of $G$ such that the stabilizer of each $m \in M$ is open. Let $C^n(G, M)$ be the group of continuous maps $G^n \to M$, with the standard differential of group cohomology ([[group cohomology|YXJXA0Q52R]]). The cohomology of this complex is $H^n(G, M)$.

So $H^0(G, M) = M^G$, and $H^1(G, M)$ is the group of continuous $f$ with $f(gh) = f(g) + g f(h)$ modulo the maps $g \mapsto gm - m$; for trivial action it is $\mathrm{Hom}_{\mathrm{cont}}(G, M)$.

**Proposition.** $H^n(G, M) = \varinjlim_U H^n(G/U, M^U)$ over the open normal subgroups $U$, so $H^n(G, M)$ is torsion for $n \geq 1$. A short exact sequence of discrete modules gives a long exact sequence. For a closed normal subgroup $H$, the inflation-restriction sequence $0 \to H^1(G/H, M^H) \to H^1(G, M) \to H^1(H, M)^{G/H}$ is exact.

**Definition.** For a field $K$ and a discrete $G_K$-module $M$, the *[[Galois cohomology|9MPCZ3EAJM]]* of $M$ is $H^n(K, M) = H^n(G_K, M)$. For a number field $K$ and a set $S$ of places, write $H^n(G_S, M)$ when $M$ is a $G_S$-module.

**Example (Kummer theory).** If $n$ is prime to the characteristic of $K$, Hilbert's Theorem 90 and the sequence $1 \to \mu_n \to \overline{K}^\times \to \overline{K}^\times \to 1$ give $H^1(K, \mu_n) \cong K^\times / K^{\times n}$.

**Example.** For a finite field $k$ and a finite $G_k$-module $M$, $H^1(k, M) = M / (\mathrm{Frob} - 1) M$ and $H^n(k, M) = 0$ for $n \geq 2$.

$H^n$ commutes with direct limits such as $\mathbb{Q}_\ell/\mathbb{Z}_\ell(k) = \varinjlim_n \mathbb{Z}/\ell^n(k)$. For compact $\mathbb{Z}_\ell(k)$ put $H^n(G, \mathbb{Z}_\ell(k)) = \varprojlim_n H^n(G, \mathbb{Z}/\ell^n(k))$; this agrees with continuous cochain cohomology when each $H^{n-1}(G, \mathbb{Z}/\ell^m(k))$ is finite (Tate, 1976). [VWin](/proof/vwin/) adds up the lengths of subgroups of $H^1(G_S, \mathbb{Q}_l/\mathbb{Z}_l(-e))$ such as the group of [VWin](/step/vwin-def/).

## Local fields

Let $K$ be a finite extension of $\mathbb{Q}_p$, and let $M$ be a finite $G_K$-module of order $m$. Put $M^\vee = \mathrm{Hom}(M, \mu_m)$; for example $(\mathbb{Z}/\ell^n(k))^\vee = \mathbb{Z}/\ell^n(1-k)$.

**Theorem (local finiteness; Tate, 1962).** $H^n(K, M)$ is finite for each $n$ and $0$ for $n \geq 3$, and $H^2(K, \mu_m) \cong \mathbb{Z}/m\mathbb{Z}$.

**Theorem (Local Tate duality; Tate, 1962).** For $n = 0, 1, 2$, the cup product and $H^2(K, \mu_m) \cong \mathbb{Z}/m\mathbb{Z}$ give a perfect pairing $H^n(K, M) \times H^{2-n}(K, M^\vee) \to \mathbb{Q}/\mathbb{Z}$.

**Theorem (local Euler characteristic formula; Tate, 1962).**
$$\frac{\#H^0(K, M)\, \#H^2(K, M)}{\#H^1(K, M)} = p^{-v_p(m)[K : \mathbb{Q}_p]}.$$

**Example.** For $M = \mu_p$ and $K = \mathbb{Q}_p$ with $p$ odd, $H^0 = 0$ and $H^2 = \mathbb{Z}/p$, so $\#H^1(\mathbb{Q}_p, \mu_p) = p^2$, in agreement with $\mathbb{Q}_p^\times / \mathbb{Q}_p^{\times p} \cong (\mathbb{Z}/p)^2$.

**Definition.** The *unramified classes* are $H^1_{\mathrm{ur}}(K, M) = \ker(H^1(K, M) \to H^1(I_K, M)) = H^1(G_K / I_K, M^{I_K})$.

**Proposition.** If $M$ is unramified and $p \nmid m$, then $H^1_{\mathrm{ur}}(K, M)$ and $H^1_{\mathrm{ur}}(K, M^\vee)$ are exact annihilators under local Tate duality.

The bundle `coh : LitCoh` of the [window bound](/proof/vwin/) states the three theorems, and `vwin_of_counts` takes `LocalFinitenessK` and `LocalTateDualityK` as hypotheses.

## Global fields

Let $K$ be a number field, let $M$ be a finite $G_K$-module of order $m$, and let $S$ be a finite set of places that contains the infinite places, the places above the primes dividing $m$, and the places where $M$ is ramified. Then $M$ and $M^\vee$ are $G_S$-modules.

**Theorem (Tate).** The groups $H^n(G_S, M)$ are finite.

**Theorem (Tate global Euler characteristic formula; Tate, 1962).**
$$\frac{\#H^0(G_S, M)\, \#H^2(G_S, M)}{\#H^1(G_S, M)} = \prod_{v \mid \infty} \frac{\#H^0(K_v, M)}{|m|_v},$$
where $|m|_v = m$ for a real place and $|m|_v = m^2$ for a complex place.

**Example.** If $K$ is totally complex of degree $n$, the ratio is $(m/m^2)^{n/2} = m^{-n/2}$.

**Definition.** For $n = 1, 2$, put $\text{Ш}^n_S(M) = \ker\big(H^n(G_S, M) \to \prod_{v \in S} H^n(K_v, M)\big)$.

**Theorem (Poitou-Tate duality; Poitou and Tate, 1962 and 1963).** The local Tate pairings give a perfect pairing $\text{Ш}^1_S(M) \times \text{Ш}^2_S(M^\vee) \to \mathbb{Q}/\mathbb{Z}$ and an exact sequence
$$0 \to H^0 \to P^0_S \to (H^2_\vee)^* \to H^1 \to P^1_S \to (H^1_\vee)^* \to H^2 \to P^2_S \to (H^0_\vee)^* \to 0,$$
where $H^n = H^n(G_S, M)$, $H^n_\vee = H^n(G_S, M^\vee)$, $A^* = \mathrm{Hom}(A, \mathbb{Q}/\mathbb{Z})$, $P^n_S = \prod_{v \in S} H^n(K_v, M)$, and $P^0_S$ uses Tate cohomology at the infinite places.

The theorem passes to limits. Since the dual of $\mathbb{Z}/l^n(-e)$ is $\mathbb{Z}/l^n(e+1)$, it relates the Tate-Shafarevich group of $\mathbb{Q}_l/\mathbb{Z}_l(-e)$ to $H^2(G_S, \mathbb{Z}_l(e+1))$. The statement `LemmaK` of [the window bound](/proof/vwin/), for a totally complex field $L$, says that this $H^2$ is finite and bounds $\log \# H^2$, and `ThmBab` uses it with `PoitouTateDuality`.

## Selmer and Tate-Shafarevich groups

**Definition.** Let $K$ be a number field and let $M$ be a discrete $G_K$-module. The *[[Tate-Shafarevich group|BK9WBMF56G]]* of $M$ is
$$\text{Ш}(K, M) = \ker\Big(H^1(K, M) \to \prod_v H^1(K_v, M)\Big),$$
over all places $v$ of $K$.

**Definition.** A *Selmer structure* $\mathcal{L}$ on $M$ is a family of subgroups $L_v \subset H^1(K_v, M)$, one for each place $v$, with $L_v = H^1_{\mathrm{ur}}(K_v, M)$ for almost all $v$. Its *[[Selmer group|36YNSTESMQ]]* is
$$H^1_{\mathcal{L}}(K, M) = \{x \in H^1(K, M) : \mathrm{res}_v(x) \in L_v \text{ for all } v\}.$$
For finite $M$, the *dual Selmer structure* $\mathcal{L}^*$ on $M^\vee$ takes the annihilators $L_v^\perp$ under local Tate duality.

The same formula with all $L_v = 0$ gives $\text{Ш}(K, M)$.

**Example.** Let $A$ be an elliptic curve over $K$ (Chapter 12 defines it), and let $L_v$ be the image of the Kummer map $A(K_v)/n \to H^1(K_v, A[n])$. Then there is an exact sequence $0 \to A(K)/n \to \mathrm{Sel}^n(A/K) \to \text{Ш}(A/K)[n] \to 0$.

**Theorem (Greenberg-Wiles formula; Wiles, 1995).** Let $M$ be a finite $G_K$-module and let $\mathcal{L}$ be a Selmer structure on $M$. Then $H^1_{\mathcal{L}}(K, M)$ and $H^1_{\mathcal{L}^*}(K, M^\vee)$ are finite, and
$$\frac{\#H^1_{\mathcal{L}}(K, M)}{\#H^1_{\mathcal{L}^*}(K, M^\vee)} = \frac{\#H^0(K, M)}{\#H^0(K, M^\vee)} \prod_v \frac{\#L_v}{\#H^0(K_v, M)}.$$

The factor is $1$ when $v \nmid m\infty$, $M$ is unramified at $v$ and $L_v$ is unramified, so the product is finite. The proof combines Poitou-Tate duality with both Euler characteristic formulas.

**Definition (Bloch-Kato).** Let $V$ be a p-adic representation of $G_K$, unramified outside a finite set, and let $T \subset V$ be a $G_K$-stable lattice. For a finite place $v$ put
$$H^1_f(K_v, V) = \begin{cases} \ker\big(H^1(K_v, V) \to H^1(I_v, V)\big), & v \nmid p, \\ \ker\big(H^1(K_v, V) \to H^1(K_v, V \otimes_{\mathbb{Q}_p} B_{\mathrm{cris}})\big), & v \mid p, \end{cases}$$
and let $H^1_f(K_v, V/T)$ be its image. The *Bloch-Kato Selmer group* $H^1_f(K, V/T)$ is the Selmer group of $V/T$ for these local conditions; $H^1_f(K, V)$ is defined in the same way.

A class in $H^1(K_v, V)$ is an extension $0 \to V \to X \to \mathbb{Q}_p \to 0$. If $v \mid p$ and $V$ is crystalline at $v$ ([Galois representations](/learn/galois-representations/)), the class lies in $H^1_f$ exactly when $X$ is crystalline.

`LitCoh` has statements named after the Greenberg-Wiles formula and the Bloch-Kato local conditions, and `KatoTwoW` concludes that the Bloch-Kato Selmer groups of two twists of a two-dimensional representation $W$ vanish.

## Plus and minus parts

Let $E$ be a CM field with complex conjugation $c$, let $S$ be a set of places of $E$ stable under $c$, and let $M$ be a discrete $\mathbb{Z}_l$-module with an action of $\mathrm{Gal}(E_S/E^+)$. Conjugation by a lift of $c$ is an involution of $H^n(G_S, M)$.

**Definition.** For $l$ odd and a $\mathbb{Z}_l$-module $X$ with an involution $c$, put $X^{\pm} = \frac{1 \pm c}{2} X$. Then $X = X^+ \oplus X^-$, and the length of $X$ is the sum of the lengths of $X^+$ and $X^-$.

**Example.** Complex conjugation acts on $\mu_{l^n}$ by $\zeta \mapsto \zeta^{-1}$, so it acts on $\mathbb{Z}_l(k)$ by $(-1)^k$.

The splitting needs $2$ to be invertible. So `shaLen_eq_add` in [the window bound](/proof/vwin/) splits the length into the part at $l = 2$ and the $(-1)^e$ and $(-1)^{e+1}$ eigenspaces of $c$, which `ThmBab`, `ThmBcFree` and `ThmHV` bound.

## Iwasawa theory

Let $K$ be a number field and let $p$ be a prime. The *cyclotomic $\mathbb{Z}_p$-extension* is the unique extension $K_\infty / K$ in $K(\mu_{p^\infty})$ with $\Gamma = \mathrm{Gal}(K_\infty/K) \cong \mathbb{Z}_p$. Its *cyclotomic layers* are the fields $K_n$ with $\mathrm{Gal}(K_n/K) \cong \mathbb{Z}/p^n$.

**Definition.** The *Iwasawa algebra* is $\Lambda = \mathbb{Z}_p[[\Gamma]] = \varprojlim_n \mathbb{Z}_p[\mathrm{Gal}(K_n/K)]$. A generator $\gamma$ of $\Gamma$ gives $\Lambda \cong \mathbb{Z}_p[[T]]$ with $\gamma \mapsto 1 + T$. *[[Iwasawa theory|Y2SPPSQ5D4]]* studies the class groups, Selmer groups and cohomology groups of the layers $K_n$ as $\Lambda$-modules.

**Theorem (structure theorem).** For a finitely generated torsion $\Lambda$-module $X$ there is a map with finite kernel and cokernel
$$X \to \bigoplus_i \Lambda/(p^{m_i}) \oplus \bigoplus_j \Lambda/(f_j),$$
with distinguished polynomials $f_j$. Put $\mu = \sum_i m_i$ and $\lambda = \sum_j \deg f_j$.

**Theorem (Iwasawa, 1959).** Let $p^{e_n}$ be the order of the $p$-part of the class group of $K_n$. There are integers $\mu, \lambda \geq 0$ and $\nu$ with $e_n = \mu p^n + \lambda n + \nu$ for all large $n$.

**Theorem (Ferrero-Washington theorem; Ferrero and Washington, 1979).** If $K$ is an abelian extension of $\mathbb{Q}$, then $\mu = 0$ for the cyclotomic $\mathbb{Z}_p$-extension of $K$.

In [the window bound](/proof/vwin/), `ThmBab` uses `ferreroWashington` to bound the part at $l = 2$ (`BaAt`) and the parts over cyclotomic layers (`BbAt`).

## Euler systems and Kato

Let $T$ be a free $\mathbb{Z}_p$-module of finite rank with a continuous $G_K$-action unramified outside a finite set $\Sigma$ of places. Put $T^* = \mathrm{Hom}(T, \mathbb{Z}_p(1))$ and $W^* = \mathrm{Hom}(T, \mu_{p^\infty})$.

**Definition (Rubin, 2000).** An *Euler system* for $T$ is a family of classes $c_F \in H^1(F, T)$, one for each finite abelian extension $F$ of $K$ in a fixed family, such that for $F \subset F'$
$$\mathrm{cor}_{F'/F}(c_{F'}) = \Big(\prod_{v} P_v(\mathrm{Frob}_v^{-1})\Big) c_F,$$
where $v$ runs over the places outside $\Sigma \cup \{p\}$ that ramify in $F'$ but not in $F$, and $P_v(X) = \det(1 - \mathrm{Frob}_v^{-1} X \mid T^*)$.

**Theorem (Kolyvagin; Rubin, 2000, Theorem 2.2.3).** Suppose that $c_K$ is not torsion and that the image of $G_K$ in $\mathrm{Aut}(T)$ satisfies Rubin's hypotheses. Then a Selmer group of $W^*$, with the Bloch-Kato conditions away from $p$, is finite, with order bounded in terms of the index of $c_K$ in $H^1(K, T)$.

**Theorem (Kato Euler system; Kato, 2004).** Let $f$ be a newform of weight $k \geq 2$ with p-adic Galois representation $V$. Kato builds an Euler system for $V$ from Beilinson elements in $K_2$ of modular curves, with an explicit reciprocity law that relates it to the values $L(f, \chi, r)$. If $1 \leq r \leq k - 1$ and $L(f, r) \neq 0$, the Bloch-Kato Selmer group of the twist of $V$ that matches $L(f, r)$ is zero (Kato, 2004, Theorem 14.2).

`KatoTwoW` feeds the count `CountI`. Its proof `katoTwoW_of_printsH` has a largest part `Kato.Final.zetaUr`, whose pieces are named after Kato's Euler system.

## Hida theory

Let $p \geq 5$ and let $N \geq 1$ be prime to $p$. A normalized eigenform of level $Np$ is *ordinary* at $p$ if its $U_p$-eigenvalue is a $p$-adic unit. Hida's *ordinary projector* on p-adic modular forms is $e = \lim_n U_p^{n!}$.

**Theorem (Hida theory; Hida, 1986).** Let $\Lambda = \mathbb{Z}_p[[1 + p\mathbb{Z}_p]]$. The ordinary Hecke algebra $\mathbb{T}^{\mathrm{ord}}$ of tame level $N$ is finite and free over $\Lambda$, and for each $k \geq 2$ its specialization at weight $k$ is the ordinary Hecke algebra of weight $k$ and level $Np$. So the rank of the ordinary part in weight $k$ depends only on $k$ modulo $p - 1$.

**Theorem (Hida, 1986; Wiles, 1988).** For each maximal ideal $\mathfrak{m}$ of $\mathbb{T}^{\mathrm{ord}}$ with absolutely irreducible residual representation, a continuous representation $G_{\mathbb{Q}} \to \mathrm{GL}_2(\mathbb{T}^{\mathrm{ord}}_{\mathfrak{m}})$ interpolates the representations of the ordinary eigenforms. Its restriction to $G_{\mathbb{Q}_p}$ is upper triangular with an unramified quotient.

In [the window bound](/proof/vwin/), `core_alt_bis` proves `DenseThresholdMainCase`, on ordinary points of a universal ordinary determinant ring for $2 \leq n \leq 4$, and the field `hWu` of [HypsAlt](/step/hyps-alt-def/) quantifies over each `HidaSetting`.

## Further reading

- J. Neukirch, A. Schmidt and K. Wingberg, *Cohomology of Number Fields*, 2nd ed. (2008), chapters I, VII and VIII.
- J. S. Milne, *Arithmetic Duality Theorems*, 2nd ed. (2006), chapter I, sections 2 to 5.
- H. Darmon, F. Diamond and R. Taylor, Fermat's Last Theorem, in *Elliptic Curves, Modular Forms and Fermat's Last Theorem* (1997), section 2.
- L. Washington, *Introduction to Cyclotomic Fields*, 2nd ed. (1997), chapters 7 and 13.
- K. Rubin, *Euler Systems* (2000), chapters 1 and 2.
