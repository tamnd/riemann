This chapter covers the parts of analytic number theory that the proof uses: Gauss and Jacobi sums, Weil's bound for character sums, mean values and the large sieve, the zeros of Dirichlet $L$-functions, the explicit formula in the forms of von Mangoldt and of Guinand and Weil, primes in progressions and in short intervals, and primes represented by norm forms. We assume [L-functions](/learn/l-functions/) for Dirichlet characters, conductors, the functional equation and the statements of the theorems of Dirichlet and Linnik. We assume [class field theory](/learn/class-field-theory/) for Hecke characters, ray class fields and the Hilbert class field. The proof uses this material in four places. The window pair in [VWin](/step/vwin-def/) needs primes in progressions to a very large modulus. The window bound of [the theta matching](/proof/theta-matching/) turns bounds for twisted sums over primes into half planes free of zeros, which is the converse direction of the explicit formula. The fields `linnik` and `logDerOne` of [ThetaLocalInputs](/step/theta-local-inputs-def/) ask for a Linnik prime and for a bound on $L'/L(1, \chi)$, and their statements are given in [the literature chapter](/proof/literature/). The hypotheses of [HypsAlt](/step/hyps-alt-def/) ask for primes in short intervals, some of them represented by a norm form.

## Gauss and Jacobi sums

We write $e(x) = e^{2\pi i x}$ for $x \in \mathbb{R}$. Sums of characters over finite rings are the basic objects of the chapter. Their absolute values are fixed by an orthogonality argument, and their arguments carry arithmetic information.

**Definition (additive characters).** Let $q \geq 1$. The *additive characters* of $\mathbb{Z}/q\mathbb{Z}$ are the maps $a \mapsto e(ha/q)$ for $h \in \mathbb{Z}/q\mathbb{Z}$. Let $\mathbb{F}_q$ be a [[finite field|0ZXZ82FTX2]] of characteristic $p$. Its *canonical [[additive character|2WMYTJD33F]]* is $\psi_0(x) = e(\mathrm{Tr}_{\mathbb{F}_q/\mathbb{F}_p}(x)/p)$, where the trace is read as an integer in $[0, p-1]$. Each additive character of $\mathbb{F}_q$ is $\psi_b(x) = \psi_0(bx)$ for a unique $b \in \mathbb{F}_q$.

**Proposition (orthogonality).** For $h \in \mathbb{Z}$,
$$\sum_{a \bmod q} e(ha/q) = \begin{cases} q & \text{if } q \mid h, \\ 0 & \text{otherwise.} \end{cases}$$
For integers $a, b$ with $(b, q) = 1$,
$$\sum_{\chi \bmod q} \chi(a)\overline{\chi}(b) = \begin{cases} \varphi(q) & \text{if } a \equiv b \pmod q, \\ 0 & \text{otherwise,} \end{cases}$$
where $\chi$ runs over the [[Dirichlet character|JR4QSEFXWF]]s modulo $q$.

*Proof.* The first sum is a geometric series with ratio $e(h/q)$, which is $1$ only if $q \mid h$. The second is the [[orthogonality of characters|S6ARZ7M1YE]] for the finite abelian group $(\mathbb{Z}/q\mathbb{Z})^\times$, applied to $ab^{-1}$; if $(a, q) > 1$ each term is $0$. $\square$

The second relation turns the condition $n \equiv a \pmod q$ into a sum of characters. Each count of primes in a progression in this chapter starts in this way.

**Definition (Gauss sum over a finite field).** Let $\chi$ be a character of $\mathbb{F}_q^\times$, extended by $\chi(0) = 0$ if $\chi$ is nontrivial, and let $\psi$ be an additive character of $\mathbb{F}_q$. The *[[Gauss sum|EQ6A3ZN48K]]* is
$$g(\chi, \psi) = \sum_{x \in \mathbb{F}_q} \chi(x)\psi(x).$$

**Theorem.** Let $\chi$ and $\psi$ be nontrivial. Then $|g(\chi, \psi)| = \sqrt{q}$. For $b \in \mathbb{F}_q^\times$, $g(\chi, \psi_b) = \overline{\chi}(b) g(\chi, \psi_1)$.

*Proof.* The second claim follows from the substitution $x \mapsto b^{-1}x$. For the first,
$$|g(\chi, \psi)|^2 = \sum_{x, y \neq 0} \chi(x)\overline{\chi}(y)\psi(x - y) = \sum_{t \neq 0} \chi(t) \sum_{y \neq 0} \psi(y(t - 1)),$$
with $x = ty$. The inner sum is $q - 1$ if $t = 1$ and $-1$ otherwise, since the sum of $\psi$ over $\mathbb{F}_q$ is $0$. Hence $|g|^2 = (q - 1) - \sum_{t \neq 0, 1} \chi(t) = (q - 1) + 1 = q$, because $\sum_{t \neq 0} \chi(t) = 0$. $\square$

**Definition (Jacobi sum).** For characters $\chi_1, \chi_2$ of $\mathbb{F}_q^\times$, extended by $\chi(0) = 0$ when nontrivial and by $\chi(0) = 1$ when trivial, the *Jacobi sum* is
$$J(\chi_1, \chi_2) = \sum_{x \in \mathbb{F}_q} \chi_1(x)\chi_2(1 - x).$$

**Proposition.** Let $\chi_1, \chi_2$ be nontrivial and $\psi$ a nontrivial additive character. If $\chi_1\chi_2$ is nontrivial, then
$$J(\chi_1, \chi_2) = \frac{g(\chi_1, \psi)\, g(\chi_2, \psi)}{g(\chi_1\chi_2, \psi)}, \qquad |J(\chi_1, \chi_2)| = \sqrt{q}.$$
If $\chi_1\chi_2$ is trivial, then $J(\chi_1, \chi_2) = -\chi_1(-1)$. Also $J(1, 1) = q$ and $J(1, \chi) = 0$ for nontrivial $\chi$.

*Proof.* Group the terms of the product by $u = x + y$:
$$g(\chi_1, \psi)g(\chi_2, \psi) = \sum_{u} \psi(u) \sum_{x + y = u} \chi_1(x)\chi_2(y).$$
For $u \neq 0$ the substitution $x = ut$ gives the inner sum $\chi_1\chi_2(u) J(\chi_1, \chi_2)$. For $u = 0$ the inner sum is $\chi_2(-1)\sum_x \chi_1\chi_2(x)$, which is $0$ when $\chi_1\chi_2$ is nontrivial. This gives the first formula, and the absolute value follows from the theorem above. If $\chi_2 = \overline{\chi_1}$, then $J = \sum_{x \neq 0, 1} \chi_1(x/(1 - x))$, and $x \mapsto x/(1 - x)$ is a bijection from $\mathbb{F}_q \setminus \{0, 1\}$ onto $\mathbb{F}_q \setminus \{0, -1\}$, so $J = -\chi_1(-1)$. The last two values are direct. $\square$

**Example (Fermat curves).** Let $k \mid q - 1$ and let $N$ be the number of $(x, y) \in \mathbb{F}_q^2$ with $x^k + y^k = 1$. The number of $x$ with $x^k = u$ is $\sum_{\chi^k = 1} \chi(u)$, with the conventions above. Hence $N = \sum_{\chi_1^k = \chi_2^k = 1} J(\chi_1, \chi_2)$. The proposition gives
$$|N - q| \leq (k - 1)(k - 2)\sqrt{q} + (k - 1).$$
The projective curve $x^k + y^k = z^k$ has genus $(k - 1)(k - 2)/2$, so the main error term is $2g\sqrt{q}$. This is the bound of the next section in a case where it can be proved by hand.

For Dirichlet characters, [L-functions](/learn/l-functions/) defines $\tau(\chi) = \sum_{a \bmod q} \chi(a) e(a/q)$ and proves $|\tau(\chi)| = \sqrt{q}$ for primitive $\chi$. We need the twisted form.

**Lemma (separability).** Let $\chi$ be a primitive character modulo $q$. For each $n \in \mathbb{Z}$,
$$\sum_{a \bmod q} \chi(a) e(an/q) = \overline{\chi}(n)\tau(\chi).$$

*Proof.* If $(n, q) = 1$, substitute $a \mapsto an^{-1}$. Let $d = (n, q) > 1$ and $q_1 = q/d$. Since $\chi$ is primitive, it is not induced from a character modulo $q_1$, so there is $c$ with $(c, q) = 1$, $c \equiv 1 \pmod{q_1}$ and $\chi(c) \neq 1$ (Davenport, chapter 5). Since $(c - 1)n/q = ((c - 1)/q_1)(n/d)$ is an integer, the substitution $a \mapsto ca$ multiplies the sum by $\chi(c)$ and leaves it unchanged. So the sum is $0 = \overline{\chi}(n)\tau(\chi)$. $\square$

The lemma writes a multiplicative character as a combination of additive ones. It is the step from the additive large sieve to the multiplicative one, and from complete sums to incomplete sums.

**Theorem (Gauss).** Let $p$ be an odd prime and $\chi_p = (\cdot/p)$ the [[Legendre symbol|0JTC045NNZ]]. Then $\tau(\chi_p) = \sqrt{p}$ if $p \equiv 1 \pmod 4$ and $\tau(\chi_p) = i\sqrt{p}$ if $p \equiv 3 \pmod 4$.

The identity $\tau(\chi_p)^2 = \chi_p(-1)p$ follows from the Jacobi sum formula with $J(\chi_p, \chi_p) = -\chi_p(-1)$. The sign of the square root is the hard part; see Davenport, chapter 2, or Ireland and Rosen, chapter 6. It gives root number $1$ in the functional equation of $L(s, \chi)$ for real primitive $\chi$.

**Lemma (products of primitive characters).** Let $\chi_1$ be primitive modulo $q_1$ and $\chi_2$ primitive modulo $q_2$, with $(q_1, q_2) = 1$. Then $\chi_1\chi_2$ is primitive modulo $q_1q_2$, and
$$\tau(\chi_1\chi_2) = \chi_1(q_2)\chi_2(q_1)\tau(\chi_1)\tau(\chi_2).$$

*Proof.* Suppose $\chi_1\chi_2$ is induced from a modulus $d_1d_2$ with $d_i \mid q_i$. On the integers $a \equiv 1 \pmod{q_2}$ the product equals $\chi_1$, and the Chinese remainder theorem shows that $\chi_1$ is then trivial on $a \equiv 1 \pmod{d_1}$ with $(a, q_1) = 1$. So $d_1 = q_1$; in the same way $d_2 = q_2$. For the Gauss sum, write $a = a_1q_2 + a_2q_1$ with $a_i$ modulo $q_i$. Then $e(a/(q_1q_2)) = e(a_1/q_1)e(a_2/q_2)$ and $\chi_1\chi_2(a) = \chi_1(a_1q_2)\chi_2(a_2q_1)$. $\square$

The development volumes use this lemma when they twist a character of conductor $f$ by the symbol $(\cdot/q)$ of a prime $q \nmid f$: the twist is primitive of conductor $fq$, so the zero-free regions and zero counts below apply to it with $q$ replaced by $fq$.

**Lemma (the symbol $(n/q)$ as a function of $q$).** Let $n$ be a nonzero integer. There is a real Dirichlet character $\chi_n$ modulo $4|n|$ with $\chi_n(q) = (n/q)$ for each odd prime $q \nmid n$. It is principal if and only if $n$ is a square.

*Proof.* Write $n = \pm 2^e \prod p_i^{a_i}$. By [[quadratic reciprocity|0YY06KP3ZQ]] and its two supplements, $(n/q)$ is the product of $(\pm 1/q)$, $(2/q)^e$ and the factors $((-1)^{(p_i - 1)(q - 1)/4}(q/p_i))^{a_i}$, and each factor depends only on $q$ modulo $4|n|$. If $n$ is a square, each value is $1$. If $n$ is not a square, choose a class $r$ modulo $4|n|$ with $(r, 4|n|) = 1$ and $\chi_n(r) = -1$: if some $a_i$ is odd, take $r \equiv 1 \pmod 8$, $r$ a nonresidue modulo $p_i$ and $r \equiv 1$ modulo the other $p_j$; otherwise $n = \pm 2^e m^2$ with $n \neq m^2$, and a class modulo $8$ with $(\pm 2^e/r) = -1$ and $r \equiv 1$ modulo each $p_j$ does it. [[Dirichlet's theorem|0GNVN3CA2P]] gives a prime $q \equiv r$, so $\chi_n$ is not principal. $\square$

In a mean square over primes $q$ of $\sum_n c_n (n/q)$, the cross term of $n$ and $m$ is a sum of $\chi_{nm}(q)$. By the lemma it has a main term only when $nm$ is a square.

**Remark (Hasse and Davenport).** Let $\psi'$ and $\chi'$ be the characters of $\mathbb{F}_{q^r}$ obtained by composing $\psi$ and $\chi$ with the trace and the norm. Then $-g(\chi', \psi') = (-g(\chi, \psi))^r$. This is the *Hasse-Davenport relation*; see Ireland and Rosen, chapter 11. It shows that the sums over all finite extensions come from one pair of numbers of absolute value $\sqrt{q}$, which is the pattern of the next section.

## Weil's bound and incomplete character sums

Complete sums of a character evaluated at a polynomial are point counts on curves over a finite field. The Riemann hypothesis for curves bounds them by a constant times $\sqrt{q}$. Sums over an interval shorter than the modulus are reduced to complete sums by Fourier analysis.

**Theorem (Weil, multiplicative sums).** Let $\chi$ be a nontrivial character of $\mathbb{F}_q^\times$ of order $d$, and let $f \in \mathbb{F}_q[x]$ have $m$ distinct roots in $\overline{\mathbb{F}}_q$. Suppose $f$ is not of the form $c\,h^d$ with $c \in \mathbb{F}_q$ and $h \in \mathbb{F}_q[x]$. Then
$$\Big|\sum_{x \in \mathbb{F}_q} \chi(f(x))\Big| \leq (m - 1)\sqrt{q}.$$

**Theorem (Weil, additive sums).** Let $\psi$ be a nontrivial additive character of $\mathbb{F}_q$ and $f \in \mathbb{F}_q[x]$ of degree $n$ with $p \nmid n$. Then
$$\Big|\sum_{x \in \mathbb{F}_q} \psi(f(x))\Big| \leq (n - 1)\sqrt{q}.$$

**Theorem (Weil, Kloosterman sums).** For a prime $p$ and $a, b \in \mathbb{F}_p^\times$, the *Kloosterman sum* $K(a, b; p) = \sum_{x \in \mathbb{F}_p^\times} e((ax + bx^{-1})/p)$ satisfies $|K(a, b; p)| \leq 2\sqrt{p}$.

These three are in Weil, "On some exponential sums" (1948). Proofs by Stepanov's elementary method are in Schmidt, *Equations over finite fields: an elementary approach*, and both routes are in Iwaniec and Kowalski, chapter 11 (Sums over finite fields).

**Remark (the route through curves).** For the multiplicative sum, put $S_r = \sum_{x \in \mathbb{F}_{q^r}} \chi(N_{\mathbb{F}_{q^r}/\mathbb{F}_q}(f(x)))$. Under the hypothesis on $f$, the series $\exp(\sum_{r \geq 1} S_r T^r/r)$ is a polynomial of degree $m - 1$ in $T$; write it as $\prod_j (1 - \omega_j T)$. Then $S_1 = -\sum_j \omega_j$. The $\omega_j$ are eigenvalues of Frobenius on the first cohomology of the curve $y^d = f(x)$, so $|\omega_j| = \sqrt{q}$ by the Riemann hypothesis for curves. The statement of that theorem and the bound $|\#X(\mathbb{F}_q) - q - 1| \leq 2g\sqrt{q}$ are in [étale cohomology](/learn/etale-cohomology/). The additive and Kloosterman sums come in the same way from Artin-Schreier curves and from the curve $y^p - y = ax + b/x$.

**Theorem (Deligne).** Let $f \in \mathbb{F}_q[x_1, \ldots, x_n]$ have degree $d$ with $p \nmid d$, and suppose the homogeneous part of degree $d$ defines a smooth hypersurface in $\mathbb{P}^{n - 1}$. Then $|\sum_{x \in \mathbb{F}_q^n} \psi(f(x))| \leq (d - 1)^n q^{n/2}$.

This is in Deligne, "La conjecture de Weil I" (1974), section 8. We state it so that a reader knows the bound for sums in several variables exists in the same form.

**Proposition (the quadratic case).** Let $p$ be an odd prime, $a, b, c \in \mathbb{F}_p$ with $a \neq 0$, and $D = b^2 - 4ac$. Then
$$\sum_{x \in \mathbb{F}_p} \Big(\frac{ax^2 + bx + c}{p}\Big) = \begin{cases} -(a/p) & \text{if } D \neq 0, \\ (p - 1)(a/p) & \text{if } D = 0. \end{cases}$$

*Proof.* Since $4a(ax^2 + bx + c) = (2ax + b)^2 - D$ and $(4a/p) = (a/p)$, the sum is $(a/p)\sum_y ((y^2 - D)/p)$. If $D = 0$ this is $(a/p)(p - 1)$. If $D \neq 0$, the number of $(y, z)$ with $z^2 = y^2 - D$ is $\sum_y (1 + ((y^2 - D)/p))$. It is also the number of solutions of $(y - z)(y + z) = D$, which is $p - 1$. So $\sum_y ((y^2 - D)/p) = -1$. $\square$

Here $m = 2$ and Weil's bound is $\sqrt{p}$, while the true value has absolute value $1$. For higher degree there is no closed form, and the bound is sharp up to the constant.

**Theorem (Pólya and Vinogradov).** Let $\chi$ be a primitive character modulo $q > 1$. For each $M$ and each $N \geq 1$,
$$\Big|\sum_{M < n \leq M + N} \chi(n)\Big| \leq \sqrt{q}\,(1 + \log q).$$

*Proof.* By the separability lemma for $\overline{\chi}$, $\chi(n) = \tau(\overline{\chi})^{-1}\sum_{a \bmod q} \overline{\chi}(a)e(an/q)$. Summing over $n$,
$$\sum_{M < n \leq M + N} \chi(n) = \frac{1}{\tau(\overline{\chi})}\sum_{|a| \leq q/2} \overline{\chi}(a) \sum_{M < n \leq M + N} e(an/q),$$
where $a$ runs over a complete set of residues modulo $q$ with $|a| \leq q/2$, and the term $a = 0$ drops out because $\overline{\chi}(0) = 0$. The inner sum is a geometric series of absolute value at most $1/|\sin(\pi a/q)| \leq q/(2|a|)$, since $\sin(\pi x) \geq 2x$ on $[0, 1/2]$. With $|\tau(\overline{\chi})| = \sqrt{q}$ this gives at most $q^{-1/2} \cdot 2 \cdot \sum_{1 \leq a \leq q/2} q/(2a) \leq \sqrt{q}(1 + \log q)$. $\square$

The method is *completion*: an incomplete sum is a combination of complete sums twisted by additive characters. It applies to any complete sum with a square root bound, and with Weil's theorem it gives $\sum_{n \in I} \chi(f(n)) \ll m\sqrt{p}\log p$ for an interval $I$ and a prime $p$.

**Theorem (Burgess).** Let $p$ be a prime, $\chi$ a nontrivial character modulo $p$, $r \geq 1$ an integer and $\varepsilon > 0$. Then
$$\sum_{M < n \leq M + N} \chi(n) \ll_{r, \varepsilon} N^{1 - 1/r} p^{(r + 1)/(4r^2) + \varepsilon}.$$

See Burgess, "On character sums and $L$-series" (1962), and Iwaniec and Kowalski, chapter 12 (Character sums). The bound is nontrivial for $N > p^{1/4 + \varepsilon}$, while the Pólya-Vinogradov bound needs $N > p^{1/2 + \varepsilon}$. Its proof uses Weil's bound for $\sum_x \chi(f(x))$ with $f$ a product of linear factors.

The character sum chapters of the development volumes count integers or primes in boxes with prescribed quadratic symbols. They expand each condition $(n/q) = \epsilon$ as $(1 + \epsilon(n/q))/2$ and bound the resulting character sums by the Pólya-Vinogradov theorem or by Weil's bound.

## Mean values and the large sieve

A single character sum can be large. An average of many sums over a family of characters is controlled by orthogonality, and this control is often enough.

**Theorem (mean value of Dirichlet polynomials).** For complex numbers $a_n$ with $\sum n|a_n|^2 < \infty$ and $T > 0$,
$$\int_0^T \Big|\sum_n a_n n^{-it}\Big|^2 dt = \sum_n |a_n|^2 \big(T + O(n)\big),$$
with an absolute implied constant.

This is due to Montgomery and Vaughan, "Hilbert's inequality" (1974); see also Iwaniec and Kowalski, chapter 9 (The Dirichlet polynomials). The diagonal gives $T\sum |a_n|^2$, and the off-diagonal is bounded by a weighted form of Hilbert's inequality. Mean values of this kind are the input to the zero density theorems of the next section.

**Definition (well-spaced points).** Points $x_1, \ldots, x_R$ of $\mathbb{R}/\mathbb{Z}$ are *$\delta$-spaced* if $\|x_r - x_s\| \geq \delta$ for $r \neq s$, where $\|x\|$ is the distance from $x$ to the nearest integer.

**Theorem (the additive large sieve).** Let $x_1, \ldots, x_R$ be $\delta$-spaced, and let $S(x) = \sum_{M < n \leq M + N} a_n e(nx)$. Then
$$\sum_{r = 1}^R |S(x_r)|^2 \leq (N - 1 + \delta^{-1}) \sum_n |a_n|^2.$$

This form is due to Selberg and to Montgomery and Vaughan, "The large sieve" (1973). We prove the slightly weaker constant $\pi N + \delta^{-1}$, which is enough for each application below.

**Lemma (Gallagher).** Let $f$ be continuously differentiable on an interval $I$ of length $\delta$ with center $x$. Then
$$|f(x)| \leq \delta^{-1}\int_I |f(t)|\,dt + \frac{1}{2}\int_I |f'(t)|\,dt.$$

*Proof.* For $t \in I$, $f(x) = f(t) - \int_x^t f'(u)\,du$. Average over $t \in I$. A point $u$ of $I$ lies between $x$ and $t$ for a set of $t$ of measure $\delta/2 - |u - x| \leq \delta/2$, so the average of the integral is at most $\frac{1}{2}\int_I |f'|$. $\square$

*Proof of the large sieve with constant $\pi N + \delta^{-1}$.* Multiplying $S$ by $e(-kx)$ does not change $|S(x)|$, so we may assume that $n$ runs over integers with $|n| \leq N/2$. Apply the lemma to $f = S^2$ on the intervals of length $\delta$ centered at the $x_r$; they are disjoint modulo $1$. Summing,
$$\sum_r |S(x_r)|^2 \leq \delta^{-1}\int_0^1 |S|^2 + \int_0^1 |S S'| \leq \delta^{-1}\int_0^1 |S|^2 + \Big(\int_0^1 |S|^2\Big)^{1/2}\Big(\int_0^1 |S'|^2\Big)^{1/2}$$
by the [[Cauchy-Schwarz inequality|0RFWW56Y22]]. Parseval gives $\int_0^1 |S|^2 = \sum |a_n|^2$ and $\int_0^1 |S'|^2 = 4\pi^2\sum n^2|a_n|^2 \leq \pi^2N^2\sum |a_n|^2$. $\square$

**Theorem (the multiplicative large sieve).** For complex $a_n$ and $Q \geq 1$,
$$\sum_{q \leq Q} \frac{q}{\varphi(q)} \sum^{*}_{\chi \bmod q} \Big|\sum_{M < n \leq M + N} a_n\chi(n)\Big|^2 \leq (N - 1 + Q^2)\sum_n |a_n|^2,$$
where $\sum^{*}$ runs over primitive characters.

*Proof.* Let $S(\chi)$ be the inner sum and $S(x)$ the additive sum. For primitive $\chi$ modulo $q$ the separability lemma gives $\tau(\overline{\chi})S(\chi) = \sum_{(a, q) = 1} \overline{\chi}(a)S(a/q)$. Since $|\tau(\overline{\chi})|^2 = q$, adding the nonnegative terms of the imprimitive characters and using orthogonality,
$$q\sum^{*}_{\chi} |S(\chi)|^2 \leq \sum_{\chi \bmod q}\Big|\sum_{(a, q) = 1} \overline{\chi}(a)S(a/q)\Big|^2 = \varphi(q)\sum_{(a, q) = 1}|S(a/q)|^2.$$
The fractions $a/q$ with $q \leq Q$ and $(a, q) = 1$ are $Q^{-2}$-spaced, since $|a/q - a'/q'| \geq 1/(qq')$. Apply the additive large sieve. $\square$

For a single modulus the bound $\sum_{\chi \bmod q} |S(\chi)|^2 \leq (N/q + 1)\varphi(q)\sum |a_n|^2$ follows from orthogonality alone. The large sieve gives the same quality of bound for all moduli up to $Q$ together, at the cost of $Q^2$ in place of $\sum_q \varphi(q)$.

**Proposition (mean square over primes of real character sums).** Let $A > 0$. There is $c = c(A) > 0$ such that for $Q \geq 3$, $1 \leq N \leq (\log Q)^A$ and complex numbers $c_n$ ($n \leq N$),
$$\sum_{2 < p \leq Q}\Big|\sum_{n \leq N} c_n\Big(\frac{n}{p}\Big)\Big|^2 = \pi(Q)\sum_{\substack{n, m \leq N \\ nm = \square}} c_n\overline{c_m} + O_A\Big(Q e^{-c\sqrt{\log Q}}\Big(\sum_n |c_n|\Big)^2\Big),$$
where $p$ runs over primes and the implied constant is not effective.

*Proof.* Expand the square. The cross term of $n$ and $m$ is $\sum_{2 < p \leq Q} (nm/p)$. If $nm$ is a square it is $\pi(Q) - 1 - \omega'(nm)$, where $\omega'(nm) = O(\log N)$ counts the odd primes dividing $nm$. If not, it is $\sum_{p \leq Q} \chi_{nm}(p) + O(\log N)$ with $\chi_{nm}$ the nonprincipal character of the last lemma of the first section, of modulus $4nm \leq 4(\log Q)^{2A}$. The Siegel-Walfisz theorem of the sixth section gives $\sum_{p \leq Q}\chi_{nm}(p) \ll_A Q e^{-c\sqrt{\log Q}}$. $\square$

If $|c_n| \leq \Lambda(n)$, the pairs with $nm$ a square are $n = p^a$, $m = p^b$ with $a + b$ even, and the main term is $O(N\log N)$. The development volumes prove a bound of this shape for sums $\sum_{n \leq Z}\Lambda(n)\min(1, y/n)\kappa(n)(n/q)$ over primes $q$ in a progression. The progression adds a second subtlety: $\chi_{nm}$ can be induced from the modulus of the progression without $nm$ being a square (for example $nm = 2$ and $8$ dividing the modulus), and these pairs also give main terms.

**Remark (Heath-Brown's quadratic large sieve).** For $N$ larger than a power of $\log Q$ the Siegel-Walfisz step fails. Heath-Brown, "A mean value estimate for real character sums" (1995), proves
$$\sum^{\flat}_{m \leq M}\Big|\sum^{\flat}_{n \leq N} a_n\Big(\frac{n}{m}\Big)\Big|^2 \ll_\varepsilon (MN)^\varepsilon (M + N)\sum_n |a_n|^2,$$
where $\flat$ restricts to odd squarefree integers and $(n/m)$ is the [[Jacobi symbol|0ADTQBXRMC]]. The multiplicative large sieve gives only $M^2 + N$ here, because the real characters are a thin subset of all characters.

## Zeros of Dirichlet L-functions

The distribution of primes in progressions is controlled by the zeros of the [[Dirichlet L-function|24GAZHVTGB]]s. We need four facts: a region free of zeros near $\mathrm{Re}\, s = 1$, with one possible exception; Siegel's bound for the exception; a count of zeros; and a bound for the number of zeros near $\mathrm{Re}\, s = 1$. Throughout, $\rho = \beta + i\gamma$ is a zero of $L(s, \chi)$ with $0 < \beta < 1$.

**Lemma (the trigonometric inequality).** For real $\theta$, $3 + 4\cos\theta + \cos 2\theta = 2(1 + \cos\theta)^2 \geq 0$. Hence for $\sigma > 1$, real $t$ and a character $\chi$ modulo $q$ with principal character $\chi_0$,
$$\mathrm{Re}\Big(-3\frac{L'}{L}(\sigma, \chi_0) - 4\frac{L'}{L}(\sigma + it, \chi) - \frac{L'}{L}(\sigma + 2it, \chi^2)\Big) \geq 0.$$

*Proof.* The identity is $\cos 2\theta = 2\cos^2\theta - 1$. For $\sigma > 1$, $-\frac{L'}{L}(s, \chi) = \sum_n \Lambda(n)\chi(n)n^{-s}$, where $\Lambda$ is the [[von Mangoldt function|0NK8JTE1NN]]. For $(n, q) = 1$ write $\chi(n)n^{-it} = e^{i\theta}$; the $n$-th term of the left side is $\Lambda(n)n^{-\sigma}(3 + 4\cos\theta + \cos 2\theta) \geq 0$. For $(n, q) > 1$ the term is $0$. $\square$

**Theorem (zero-free region).** There is an absolute constant $c > 0$ with the following property. Let $\chi$ be a character modulo $q$. Then $L(s, \chi)$ has no zero in the region
$$\sigma \geq 1 - \frac{c}{\log(q(|t| + 2))},$$
except, when $\chi$ is real and nonprincipal, at most one zero, which is real and simple. Among the real characters modulo $q$, at most one has such a zero.

See Davenport, chapter 14. The proof combines the lemma with the partial fraction expansion of $L'/L$. A zero $\rho$ close to $1 + it$ makes $-\mathrm{Re}\,\frac{L'}{L}(\sigma + it, \chi)$ large and negative near $\sigma = 1$, which the lemma forbids unless $\chi^2$ is principal and $t$ is small. The exceptional zero is written $\beta_1$, and the character $\chi_1$. The second claim (Landau and Page) uses the product $\zeta(s)L(s, \chi)L(s, \chi')L(s, \chi\chi')$, which is the [[Dedekind zeta function|KXS5DQDFYD]] of a biquadratic field and has nonnegative coefficients.

**Theorem (Siegel).** For each $\varepsilon > 0$ there is $c(\varepsilon) > 0$ such that for each real primitive character $\chi$ modulo $q$,
$$L(1, \chi) > c(\varepsilon)q^{-\varepsilon}, \qquad \text{and} \qquad \beta \leq 1 - c(\varepsilon)q^{-\varepsilon}$$
for each real zero $\beta$ of $L(s, \chi)$. The constant $c(\varepsilon)$ is not effective.

See Siegel, "Über die Classenzahl quadratischer Zahlkörper" (1935), and Davenport, chapter 21. The proof uses two real characters: if one of them has a zero very close to $1$, this zero gives a lower bound for $L(1, \chi)$ for all others, but no one can say which character it is. Every constant in this chapter that comes from Siegel's theorem is ineffective. The [[class number formula|55XX5A7XZV]] turns the first bound into $h(-q) \gg_\varepsilon q^{1/2 - \varepsilon}$ for imaginary quadratic fields.

**Remark.** Without Siegel's theorem one has the effective bound $1 - \beta_1 \gg q^{-1/2}(\log q)^{-2}$, from $L(1, \chi_1) \gg q^{-1/2}$ and $|L'(\sigma, \chi_1)| \ll \log^2 q$ near $1$. The development volumes state their bounds in terms of a parameter that measures how close the possible exceptional zero is to $1$, and they need Siegel's theorem only in a bound of the form $\beta \leq 1 - c(\delta)k^{-\delta}$.

**Definition.** For a character $\chi$ and $T > 0$, let $N(T, \chi)$ be the number of zeros $\rho$ of $L(s, \chi)$ with $0 < \beta < 1$ and $|\gamma| \leq T$, counted with multiplicity. For $\frac{1}{2} \leq \sigma \leq 1$, let $N(\sigma, T, \chi)$ be the number of those with $\beta \geq \sigma$.

**Theorem (the zero count).** Let $\chi$ be primitive modulo $q$ and $T \geq 2$. Then
$$N(T, \chi) = \frac{T}{\pi}\log\frac{qT}{2\pi e} + O(\log(qT)).$$
For each real $t$, the number of zeros with $|\gamma - t| \leq 1$ is $O(\log(q(|t| + 2)))$, and for $-1 \leq \sigma \leq 2$,
$$\frac{L'}{L}(s, \chi) = \sum_{|\gamma - t| < 1} \frac{1}{s - \rho} + O(\log(q(|t| + 2))).$$

See Davenport, chapters 15 and 16. The local formula comes from the partial fraction expansion of $L'/L$ and the bound at $\sigma = 2$, by subtraction. At $s = 1$ and $\chi$ nonprincipal it gives
$$\frac{L'}{L}(1, \chi) = \sum_{|\gamma| < 1}\frac{1}{1 - \rho} + O(\log q).$$
This is the content of `LogDerOne`, a field of [ThetaLocalInputs](/step/theta-local-inputs-def/) whose exact form is in [the literature chapter](/proof/literature/).

**Corollary.** Let $\chi$ be primitive modulo $q$ and $T \geq 2$. Then
$$\sum_{\substack{|\gamma| \leq T \\ \rho \neq 1 - \beta_1}} \frac{1}{|\rho|} \ll \log^2(qT),$$
where the excluded term is present only when $\chi$ is the exceptional character.

*Proof.* By the functional equation, $\rho$ is a zero of $L(s, \chi)$ if and only if $1 - \overline{\rho}$ is a zero of $L(s, \overline{\chi})$. The zero-free region for $\overline{\chi}$ gives $|\rho| \geq c/\log(q)$ for zeros with $|\gamma| \leq 1$, other than $1 - \beta_1$, and there are $O(\log q)$ such zeros. For $2^k < |\gamma| \leq 2^{k + 1}$ there are $O(2^k\log(q2^k))$ zeros, each with $1/|\rho| \leq 2^{-k}$. Summing over $k \leq \log_2 T$ gives the claim. $\square$

**Theorem (log-free zero density).** There is an absolute constant $A > 0$ such that for $q \geq 1$, $T \geq 2$ and $\frac{1}{2} \leq \sigma \leq 1$,
$$\sum_{\chi \bmod q} N(\sigma, T, \chi) \ll (qT)^{A(1 - \sigma)}.$$

This is Linnik's density theorem; see Iwaniec and Kowalski, chapter 18 (The least prime in an arithmetic progression), and Gallagher, "A large sieve density estimate near $\sigma = 1$" (1970), who proves a version summed over all moduli up to $T$ from the large sieve. Iwaniec and Kowalski, chapter 10 (Zero-density estimates), gives the classical estimates with powers of $\log$. The point is the absence of a power of $\log(qT)$: near $\sigma = 1$ the count is $O(1)$ in a region of width $1/\log(qT)$. The development volumes use a form $N(\sigma, T) \leq C(MT)^{A(1 - \sigma)}\log^B(MT)$, summed over all characters modulo $M$.

**Theorem (Deuring and Heilbronn).** There are absolute constants $c_1, c_2 > 0$ such that the following holds. Suppose the exceptional zero $\beta_1$ of $L(s, \chi_1)$, $\chi_1$ modulo $q$, exists. Let $\chi$ be a character modulo $q$ and $\rho = \beta + i\gamma \neq \beta_1$ a zero of $L(s, \chi)$, and put $\mathcal{L} = \log(q(|\gamma| + 2))$. Then
$$\beta \leq 1 - \frac{c_1}{\mathcal{L}}\log\frac{c_2}{(1 - \beta_1)\mathcal{L}}.$$

See Iwaniec and Kowalski, chapter 18. The proof by Turán's power sum method is the one the development volumes follow. The closer $\beta_1$ is to $1$, the further all other zeros are pushed from $1$. Together with the density theorem this compensates for the bad main term that an exceptional zero produces in the sixth section.

## The explicit formula

The [[explicit formula|72WNRWJQC1]] expresses a sum over primes as a sum over zeros. [L-functions](/learn/l-functions/) states von Mangoldt's formula for $\psi(x)$. Here we need the form for a character with a truncation, its converse, and the symmetric form of Guinand and Weil. We write $\psi(x, \chi) = \sum_{n \leq x}\Lambda(n)\chi(n)$.

**Theorem (truncated explicit formula).** Let $\chi$ be a primitive nonprincipal character modulo $q$, and let $2 \leq T \leq x$. Then
$$\psi(x, \chi) = -\sum_{|\gamma| < T}\frac{x^\rho}{\rho} + R(x, T),$$
where $R(x, T)$ consists of a term $-b(\chi) - (1 - a)\log x$ with $a \in \{0, 1\}$ and $\chi(-1) = (-1)^a$, a bounded sum over the trivial zeros, and an error $O(xT^{-1}\log^2(qx))$ plus terms of lower order. The constant satisfies $b(\chi) = -\sum_{|\gamma| < 1} 1/\rho + O(\log q)$.

See Davenport, chapter 19, for the exact form of $R$. The proof applies Perron's formula to $-L'/L(s, \chi)$ on the line $\mathrm{Re}\, s = 1 + 1/\log x$, truncated at height $T$, and moves the contour to the left. Each zero contributes its residue $x^\rho/\rho$.

**Proposition (the prime number theorem for a character).** There is an absolute constant $c > 0$ such that for $x \geq 2$ and each primitive nonprincipal character $\chi$ modulo $q$ whose $L$-function has no exceptional zero,
$$|\psi(x, \chi)| \ll x\log^2(qx)\exp\Big(-\frac{c\log x}{\log q + \sqrt{\log x}}\Big).$$

*Proof.* Take $T = \exp(\sqrt{\log x})$ in the truncated formula. Each zero with $|\gamma| < T$ has $\beta \leq 1 - c/\log(qT)$, so $|x^\rho| \leq x\exp(-c\log x/(\log q + \sqrt{\log x}))$. By the corollary of the previous section, $\sum_{|\gamma| < T}1/|\rho| \ll \log^2(qT)$; there is no zero near $0$ to exclude, because there is no exceptional zero. The term $b(\chi)$ is $O(\log^2 q)$ for the same reason, and the truncation error is $O(x\log^2(qx)e^{-\sqrt{\log x}})$. $\square$

The development volumes use this bound with $\lambda$ in place of $\log q$ to control the tails of sums twisted by a character.

**Lemma (the smoothed sum at $s = 1$).** Let $\chi$ be nonprincipal and $y \geq 1$. Then
$$\sum_{n \leq y}\Lambda(n)\chi(n)\Big(\frac{y}{n} - 1\Big) + y\frac{L'}{L}(1, \chi) = -y\int_y^\infty \psi(u, \chi)\frac{du}{u^2}.$$

*Proof.* By the prime number theorem for $\chi$, $\psi(u, \chi) \ll u e^{-c\sqrt{\log u}}$ with a constant that depends on $\chi$. By partial summation, $\sum_n \Lambda(n)\chi(n)n^{-s} = s\int_1^\infty \psi(u, \chi)u^{-s - 1}du$ for $\mathrm{Re}\, s > 1$, and the integral converges uniformly for $\mathrm{Re}\, s \geq 1$. Letting $s \to 1$ gives $-\frac{L'}{L}(1, \chi) = \int_1^\infty \psi(u, \chi)u^{-2}du$. Partial summation also gives $\sum_{n \leq y}\Lambda(n)\chi(n)(y/n - 1) = y\int_1^y \psi(u, \chi)u^{-2}du$. Subtract. $\square$

**Remark.** For the trivial character, $\sum_{n \leq y}\Lambda(n)(y/n - 1) = y\log y - (1 + \gamma)y + o(y)$, where $\gamma$ is the [[Euler-Mascheroni constant|00C5P9JZBK]]. This follows from $\sum_{n \leq y}\Lambda(n)/n = \log y - \gamma + o(1)$ and $\psi(y) = y + o(y)$. The lemma turns a bound for $\psi(u, \chi)$ on $[y, \infty)$ into a bound for a sum of length $y$, with the constant $L'/L(1, \chi)$ as the only global term.

**Theorem (the converse direction).** Let $\chi$ be a nonprincipal Dirichlet character and $0 \leq \theta < 1$. If $\psi(x, \chi) = O(x^\theta)$ as $x \to \infty$, then $L(s, \chi) \neq 0$ for $\mathrm{Re}\, s > \theta$. For the trivial character, $\psi(x) - x = O(x^\theta)$ implies $\zeta(s) \neq 0$ for $\mathrm{Re}\, s > \theta$.

*Proof.* For $\mathrm{Re}\, s > 1$, $-\frac{L'}{L}(s, \chi) = s\int_1^\infty \psi(u, \chi)u^{-s - 1}du$. Under the hypothesis the integral converges absolutely and locally uniformly for $\mathrm{Re}\, s > \theta$, so the right side is holomorphic there. The left side is meromorphic in $\mathbb{C}$, and the two agree for $\mathrm{Re}\, s > 1$. So $L'/L$ has no pole in $\mathrm{Re}\, s > \theta$. A zero of $L$ of order $m \geq 1$ at $s_0$ is a pole of $L'/L$ with residue $m$ (see the [[order of a zero|0QX19C7K1C]]). For $\zeta$, use $-\frac{\zeta'}{\zeta}(s) - \frac{s}{s - 1} = s\int_1^\infty (\psi(u) - u)u^{-s - 1}du$. $\square$

With $\theta = \frac{1}{2} + \varepsilon$ for each $\varepsilon > 0$, the theorem says that a bound for prime sums implies the [[Riemann Hypothesis|VCGF9YR36X]] for $L(s, \chi)$; the explicit formula gives the reverse implication. The proof needs a form in which the bound $G_m(x) \leq x^\theta$ for twisted prime sums is known only on windows $[Y, Y^\lambda]$ for a sequence of $Y$ tending to infinity. [The theta matching](/proof/theta-matching/) proves that this still gives $L(s, \psi') \neq 0$ for $\mathrm{Re}\, s > \theta$. The idea is a smoothed explicit formula in which a zero with real part greater than $\theta$ gives a term too large for some long window. With $\theta = \frac{1}{2}$ for each primitive character, the conclusion is [ZeroFreeAll](/step/zero-free-all-of-green-v-win/): $L(s, \psi) \neq 0$ for $\mathrm{Re}\, s > \frac{1}{2}$ for every primitive Dirichlet character $\psi$.

**Theorem (Guinand and Weil).** Let $h$ be an even function, holomorphic in the strip $|\mathrm{Im}\, r| \leq \frac{1}{2} + \varepsilon$ for some $\varepsilon > 0$, with $h(r) \ll (1 + |r|)^{-2 - \varepsilon}$ there. Let $g(u) = \frac{1}{2\pi}\int_{\mathbb{R}} h(r)e^{-iru}dr$. Write the nontrivial zeros of the [[Riemann zeta function|TXB2F07CC6]] as $\rho = \frac{1}{2} + i\gamma$, with $\gamma \in \mathbb{C}$. Then
$$\begin{aligned} \sum_\rho h(\gamma) &= h\big(\tfrac{i}{2}\big) + h\big(-\tfrac{i}{2}\big) - g(0)\log\pi + \frac{1}{2\pi}\int_{\mathbb{R}} h(r)\,\frac{\Gamma'}{\Gamma}\Big(\frac{1}{4} + \frac{ir}{2}\Big)dr \\ &\quad - 2\sum_{n \geq 1}\frac{\Lambda(n)}{\sqrt{n}}\,g(\log n). \end{aligned}$$

*Proof sketch.* Let $\xi(s) = \frac{1}{2}s(s - 1)\pi^{-s/2}\Gamma(s/2)\zeta(s)$. Integrate $h(-i(s - \frac{1}{2}))\,\xi'(s)/\xi(s)$ over the boundary of the rectangle with vertical sides $\mathrm{Re}\, s = -\varepsilon'$ and $\mathrm{Re}\, s = 1 + \varepsilon'$, and let its height tend to infinity. The residues give $\sum_\rho h(\gamma)$. The functional equation $\xi(s) = \xi(1 - s)$ folds the two vertical sides into one. On the right side, expand
$$\frac{\xi'}{\xi}(s) = \frac{1}{s} + \frac{1}{s - 1} - \frac{1}{2}\log\pi + \frac{1}{2}\frac{\Gamma'}{\Gamma}\Big(\frac{s}{2}\Big) + \frac{\zeta'}{\zeta}(s),$$
and move the first four terms to $\mathrm{Re}\, s = \frac{1}{2}$, past the poles at $0$ and $1$. The Dirichlet series of $\zeta'/\zeta$ gives the sum over prime powers through the [[Fourier transform|DPVM34ADZV]]. See Iwaniec and Kowalski, chapter 5 (Classical analytic theory of $L$-functions). $\square$

The same proof works for any $L$-function with an [[Euler product|0C3PN4075R]], an analytic continuation and a functional equation, with the conductor in place of $\pi$ and the gamma factors of the $L$-function in the integral. For $L(s, \chi)$ with $\chi$ primitive modulo $q$, the term $g(0)\log\pi$ becomes $g(0)\log(\pi/q)$, the poles disappear, and the prime sum is $\sum_n \Lambda(n)n^{-1/2}(\chi(n)g(\log n) + \overline{\chi}(n)g(-\log n))$.

**Theorem (Weil's criterion).** The Riemann hypothesis holds if and only if $\sum_\rho h(\gamma) \geq 0$ for each $h$ of the form $h(r) = |\hat g_0(r)|^2$, with $g_0$ smooth and compactly supported on $\mathbb{R}$ and $h$ extended to the strip by $h(r) = \hat g_0(r)\overline{\hat g_0(\overline{r})}$.

If the Riemann hypothesis holds, each $\gamma$ is real and each term $|\hat g_0(\gamma)|^2$ is nonnegative, which proves one direction. The converse is in Weil, "Sur les formules explicites de la théorie des nombres premiers" (1952). The criterion makes the Riemann hypothesis a positivity statement for a quadratic form on test functions, and the formula of Guinand and Weil writes that form as a sum of local terms, one at each prime and one at the real place.

## Primes in progressions and in short intervals

We write $\psi(x; q, a) = \sum_{n \leq x, n \equiv a (q)}\Lambda(n)$ and $\pi(x; q, a)$ for the number of primes $p \leq x$ with $p \equiv a \pmod q$. By orthogonality,
$$\psi(x; q, a) = \frac{1}{\varphi(q)}\sum_{\chi \bmod q}\overline{\chi}(a)\psi(x, \chi),$$
and each $\psi(x, \chi)$ equals $\psi(x, \chi^*)$ for the primitive character $\chi^*$ that induces $\chi$, up to $O(\log q\log x)$. The theorems below differ in the range of $q$ and in what is known about the zeros.

**Theorem (Siegel and Walfisz).** For each $A > 0$ there is $c > 0$ such that for $q \leq (\log x)^A$ and $(a, q) = 1$,
$$\psi(x; q, a) = \frac{x}{\varphi(q)} + O_A\big(x e^{-c\sqrt{\log x}}\big).$$
The constant in $O_A$ is not effective.

See Davenport, chapter 22. The zero-free region handles all zeros except $\beta_1$, and Siegel's theorem gives $x^{\beta_1} \ll x e^{-c\sqrt{\log x}}$ when $q \leq (\log x)^A$. The theorem is the [[prime number theorem|0EHBY5Y84N]] in progressions with a modulus that grows slowly.

**Theorem (Brun and Titchmarsh).** For $1 \leq q < x$ and $(a, q) = 1$,
$$\pi(x; q, a) \leq \frac{2x}{\varphi(q)\log(x/q)}.$$

This form is in Montgomery and Vaughan, "The large sieve" (1973). It is an upper bound of the right order for each $q < x^{1 - \varepsilon}$ and needs no information on zeros. It is the standard bound for error terms that count primes in a progression from above.

**Theorem (Bombieri and Vinogradov).** For each $A > 0$ there is $B > 0$ such that
$$\sum_{q \leq x^{1/2}(\log x)^{-B}}\ \max_{(a, q) = 1}\ \max_{y \leq x}\Big|\psi(y; q, a) - \frac{y}{\varphi(q)}\Big| \ll_A x(\log x)^{-A}.$$

See Davenport, chapter 28. The proof uses the multiplicative large sieve for moduli in a dyadic range and Siegel-Walfisz for small moduli. On average over $q$ it gives what the [[Generalized Riemann Hypothesis|DNKA4WBKDS]] gives for each $q$.

For one modulus larger than a power of $\log x$, the exceptional zero must be kept in the main term. The following form is the one the development volumes use.

**Theorem (primes in progressions with the exceptional term).** There are absolute constants $C \geq 1$ and $c > 0$ with the following property. Let $q \geq 3$, $(a, q) = 1$ and $x \geq q^C$. Put $E = \chi_1(a)x^{\beta_1 - 1}/\beta_1$ if the exceptional zero $\beta_1$ modulo $q$ exists, and $E = 0$ otherwise. Then
$$\psi(x; q, a) = \frac{x}{\varphi(q)}\,(1 - E)\Big(1 + O\Big(\exp\Big(-c\frac{\log x}{\log q}\Big)\Big)\Big).$$

*Proof sketch.* This is the method of Gallagher (1970); Iwaniec and Kowalski, chapter 18, give the details. Start from the explicit formula in progressions with $T = x^{1/(4A)}$, where $A$ is the density exponent. The zero $\beta_1$ gives $-\chi_1(a)x^{\beta_1}/(\beta_1\varphi(q))$. The other zeros contribute $\frac{x}{\varphi(q)}\sum_{\chi}\sum_{\rho}x^{\beta - 1}$, and the density theorem bounds this by $x^{-\eta/2}$, where $1 - \eta$ is the largest real part of a nonexceptional zero. If there is no exceptional zero, $\eta \geq c/\log q$. If there is one, the main term is only $\gg \min(1, (1 - \beta_1)\log x)$, but the theorem of Deuring and Heilbronn gives $x^{-\eta/2} \leq ((1 - \beta_1)\log q/c_2)^{c'\log x/\log q}$, which is smaller than $(1 - \beta_1)\log x$ by the stated factor once $C$ is large. The truncation error is handled with the effective lower bound for $1 - \beta_1$. $\square$

The development volumes prove a version for $\pi(X; M, b)$ with main term $(\mathrm{li}\, X - \mathrm{Re}\,\chi_1(b)\,\mathrm{li}(X^{\beta_1}))/\varphi(M)$, an exceptional pair defined by $1 - 1/(8\log M) < \beta_1 < 1$, and the range $\log X \geq C_0\log M\log(\log M + 2)$. The ingredients are those of the sketch: a smoothed explicit formula, the log-free density theorem over all characters modulo $M$, and Deuring-Heilbronn by a power sum.

**Corollary (Linnik).** There is an absolute constant $L$ such that for $(a, q) = 1$ there is a prime $p \equiv a \pmod q$ with $p \ll q^L$.

*Proof.* Take $x = q^C$ with $C$ large. If $\chi_1(a) = -1$ or there is no exceptional zero, $1 - E \geq 1/2$. If $\chi_1(a) = 1$, then $1 - E \geq 1 - x^{\beta_1 - 1} \gg \min(1, (1 - \beta_1)\log x) > 0$. In both cases the error factor is less than $1/2$, so $\psi(x; q, a) > 0$, and the contribution of prime powers is $O(\sqrt{x}\log x)$. $\square$

[L-functions](/learn/l-functions/) records that $L = 5$ is admissible (Xylouris). The field `linnik` of [ThetaLocalInputs](/step/theta-local-inputs-def/) is a statement of this kind, and the development volumes use it to find a prime $p \equiv 1 \pmod M$ with $p \leq M^A$.

**Example (the window pair).** The definition of [VWin](/step/vwin-def/) asks for primes $q \equiv 3 \pmod 8$ and $d \equiv 7 \pmod{16}$ with $q \mid d + 1$ and $p \mid d + 1$ for each odd prime $p \leq z$. Fix a prime $q \equiv 3 \pmod 8$ by Dirichlet's theorem. The conditions on $d$ say $d \equiv 7 \pmod{16}$ and $d \equiv -1$ modulo $q$ and modulo each odd $p \leq z$. By the Chinese remainder theorem they define one class $a$ modulo $M = 16\,\mathrm{lcm}(q, \prod_{3 \leq p \leq z}p)$, and $(a, M) = 1$. Linnik's theorem gives $d \ll M^L$. The modulus $M$ is about $e^{z}$, far beyond the range of Siegel-Walfisz, so a count of such $d$ in a range needs the theorem with the exceptional term.

**Theorem (primes in short intervals from zero density).** Suppose that for some $A \geq 2$ and $B \geq 0$,
$$N(\sigma, T) \ll T^{A(1 - \sigma)}\log^B T \qquad \text{for } \tfrac{1}{2} \leq \sigma \leq 1,\ T \geq 2,$$
where $N(\sigma, T)$ counts zeros of $\zeta$. Then for each $\varepsilon > 0$, $\psi(x + h) - \psi(x) \sim h$ as $x \to \infty$, uniformly for $x^{1 - 1/A + \varepsilon} \leq h \leq x$.

*Proof sketch.* By the truncated formula for $\zeta$,
$$\psi(x + h) - \psi(x) - h = -\sum_{|\gamma| < T}\frac{(x + h)^\rho - x^\rho}{\rho} + O\Big(\frac{x\log^2 x}{T}\Big),$$
and each term of the sum is at most $hx^{\beta - 1}$. Take $T = x^{1/A - \varepsilon/2}$, so the error is $o(h)$. Then $\sum_{|\gamma| < T}x^{\beta - 1} = \int x^{\sigma - 1}dN(\sigma, T)$ is bounded by the density hypothesis and the zero-free region of Vinogradov and Korobov, which gives $\beta \leq 1 - c(\log T)^{-2/3}(\log\log T)^{-1/3}$; the factor $x^{-\eta}$ beats $\log^B T$, so the sum is $o(1)$. $\square$

This is the method of Hoheisel and Ingham. Huxley's density bound with $A = 12/5$ gives $h = x^{7/12 + \varepsilon}$; Baker, Harman and Pintz get primes in $[x, x + x^{0.525}]$ by sieve methods. These results and the bounds for [[prime gaps|XS05T5JA7G]] are in [L-functions](/learn/l-functions/). The same argument with the density theorem for characters gives primes in short intervals in a progression, $\psi(x + h; q, a) - \psi(x; q, a) \sim h/\varphi(q)$ for $h \geq x^{1 - 1/A + \varepsilon}$ and $q$ small. The hypothesis `hLit` of [HypsAlt](/step/hyps-alt-def/) is a statement of this kind.

## Primes represented by norm forms

A prime of the form $x^2 + ny^2$ is a norm from an imaginary quadratic order. Whether a prime is such a norm depends on its Frobenius in a class field, and the density and the distribution in short intervals follow from Hecke $L$-functions. We treat the case the development volumes use: $K = \mathbb{Q}(\sqrt{-d})$ with $d \equiv 3 \pmod 4$ a prime.

**Definition (binary quadratic forms).** A *binary quadratic form* is $f(x, y) = ax^2 + bxy + cy^2$ with $a, b, c \in \mathbb{Z}$. Its *[[discriminant|3BCYVS9E17]]* is $D = b^2 - 4ac$. It is *primitive* if $\gcd(a, b, c) = 1$, and *positive definite* if $D < 0$ and $a > 0$. Two forms are *equivalent* if they differ by a substitution $(x, y) \mapsto (\alpha x + \beta y, \gamma x + \delta y)$ with $\alpha\delta - \beta\gamma = 1$. The number of classes of primitive positive definite forms of discriminant $D$ is the *class number* $h(D)$.

**Theorem (forms and ideals).** Let $D < 0$ be the discriminant of the imaginary [[quadratic field|7SV4WA92SM]] $K = \mathbb{Q}(\sqrt{D})$. The map that sends the form $ax^2 + bxy + cy^2$ to the class of the ideal $a\mathbb{Z} + \frac{-b + \sqrt{D}}{2}\mathbb{Z}$ is a bijection from classes of primitive positive definite forms of discriminant $D$ onto the [[ideal class group|WQ46BD3ARY]] of $K$. So $h(D)$ is the class number $h_K$, and the form class of $f$ represents a prime $p$ if and only if the corresponding ideal class contains a prime ideal of norm $p$.

See Cox, *Primes of the form $x^2 + ny^2$*, section 7. Under the bijection the principal form $x^2 + xy + \frac{1 - D}{4}y^2$ goes to the class of principal ideals.

**Proposition.** Let $d > 3$ be a prime with $d \equiv 3 \pmod 4$, $K = \mathbb{Q}(\sqrt{-d})$ and $p \neq d$ a prime. The following are equivalent:

1. $4p = A^2 + dB^2$ for some integers $A, B$;
2. $p = \pi\overline{\pi}$ for some $\pi \in \mathcal{O}_K$;
3. $p$ splits in $K$ and the primes of $K$ above $p$ are principal;
4. $p$ splits completely in the [[Hilbert class field|WWCJ7CR2R3]] $H_K$ of $K$.

In particular $(p/d) = 1$ is necessary, and the set of such $p$ has Dirichlet density $1/(2h_K)$.

*Proof.* Since $-d \equiv 1 \pmod 4$, $\mathcal{O}_K = \mathbb{Z}[\frac{1 + \sqrt{-d}}{2}]$, whose elements are $\pi = \frac{A + B\sqrt{-d}}{2}$ with $A \equiv B \pmod 2$, and $\pi\overline{\pi} = (A^2 + dB^2)/4$. If $4p = A^2 + dB^2$ then $A \equiv B \pmod 2$, because $d$ is odd. This proves that 1 and 2 are equivalent. If $p = \pi\overline{\pi}$ with $p \neq d$, then $(\pi)$ has norm $p$, so $p$ splits and $(\pi)$, $(\overline{\pi})$ are the primes above it. Conversely a principal prime $(\pi)$ of norm $p$ gives $p = \pi\overline{\pi}$, since the units are $\pm 1$. So 2 and 3 are equivalent. By [class field theory](/learn/class-field-theory/), a prime of $K$ is principal if and only if it splits completely in $H_K$. Since $H_K/\mathbb{Q}$ is Galois of degree $2h_K$, a prime $p$ that splits in $K$ into principal primes splits completely in $H_K$, and conversely. So 3 and 4 are equivalent. The [[Chebotarev|X8VKW5Y1CZ]] density theorem for $H_K/\mathbb{Q}$ and the trivial class gives density $1/(2h_K)$. By quadratic reciprocity, an odd $p$ splits in $K$ if and only if $(-d/p) = 1$, that is $(p/d) = 1$. For $p = 2$ both conditions mean $d \equiv 7 \pmod 8$. $\square$

**Example.** For $d = 7$, $h_K = 1$, so each prime $p \neq 7$ that splits in $K$ satisfies $4p = A^2 + 7B^2$: for example $4 \cdot 2 = 1^2 + 7 \cdot 1^2$ and $4 \cdot 11 = 4^2 + 7 \cdot 2^2$. For $d = 23$, $h_K = 3$. The prime $2$ splits in $K$, since $23 \equiv 7 \pmod 8$, but $8$ is not of the form $A^2 + 23B^2$, so the primes above $2$ are not principal; they lie in the two classes of the form $2x^2 + xy + 3y^2$ and its inverse. The prime $59$ is principal: $4 \cdot 59 = 12^2 + 23 \cdot 2^2$. Among the primes that split in $K$, the principal ones have relative density $1/3$.

**Definition (class group L-functions).** Let $\chi$ be a character of the class group $\mathrm{Cl}(K)$. Its $L$-function is $L(s, \chi) = \sum_{\mathfrak{a}}\chi(\mathfrak{a})N\mathfrak{a}^{-s} = \prod_{\mathfrak{p}}(1 - \chi(\mathfrak{p})N\mathfrak{p}^{-s})^{-1}$ for $\mathrm{Re}\, s > 1$, the sum over nonzero ideals of $\mathcal{O}_K$. It is a [[Hecke character|KPYFGB342X]] $L$-function of conductor $1$.

By Hecke, $L(s, \chi)$ has an analytic continuation, entire for $\chi \neq 1$, and a functional equation with conductor $|D|$ and gamma factor $(2\pi)^{-s}\Gamma(s)$; see [class field theory](/learn/class-field-theory/) for Tate's proof. The product $\prod_\chi L(s, \chi)$ is the Dedekind zeta function of $H_K$. By orthogonality on $\mathrm{Cl}(K)$,
$$\sum_{\substack{N\mathfrak{p} \leq x \\ \mathfrak{p} \text{ principal}}}\log N\mathfrak{p} = \frac{1}{h_K}\sum_{\chi}\ \sum_{N\mathfrak{p} \leq x}\chi(\mathfrak{p})\log N\mathfrak{p} + O(\sqrt{x}),$$
so the distribution of primes $4p = A^2 + dB^2$ is governed by the zeros of the $h_K$ functions $L(s, \chi)$, exactly as primes in progressions are governed by Dirichlet $L$-functions.

**Theorem (primes of a norm form in short intervals).** Let $K$ be an imaginary quadratic field and $\mathcal{C}$ an ideal class. There is $\theta < 1$ such that the number of prime ideals $\mathfrak{p} \in \mathcal{C}$ of degree $1$ with $x < N\mathfrak{p} \leq x + h$ is asymptotic to $h/(h_K\log x)$ for $x^\theta \leq h \leq x$.

The proof is the argument of Hoheisel and Ingham with the zero-free region and a zero density estimate for the $L$-functions of the class group characters. For a fixed $K$ the dependence on $K$ is in the constants. The hypothesis on primes $4p = A^2 + dB^2$ in an interval $[X, X(1 + h)]$ used by the development volumes is a lower bound of this kind. Each prime ideal of the class gives one prime $p$, and each $p$ at most two prime ideals, so the count of primes is at least half the count of prime ideals.

**Definition (ray class groups).** Let $\mathfrak{m}$ be a nonzero ideal of $\mathcal{O}_K$. Let $I^{\mathfrak{m}}$ be the group of fractional ideals prime to $\mathfrak{m}$ and $P_{\mathfrak{m}}$ the subgroup of principal ideals $(\alpha)$ with $\alpha \equiv 1 \pmod{\mathfrak{m}}$, in the multiplicative sense. The *ray class group* is $\mathrm{Cl}_{\mathfrak{m}}(K) = I^{\mathfrak{m}}/P_{\mathfrak{m}}$, and its characters are the Hecke characters of finite order with conductor dividing $\mathfrak{m}$. The *ray class field* $K_{\mathfrak{m}}$ is the abelian extension of $K$ with Galois group $\mathrm{Cl}_{\mathfrak{m}}(K)$ given by the Artin map.

**Proposition.** Let $\mathfrak{p} \nmid \mathfrak{m}$ be a prime of $K$. Then $\mathfrak{p} = (\pi)$ with $\pi \equiv 1 \pmod{\mathfrak{m}}$ if and only if $\mathfrak{p}$ splits completely in $K_{\mathfrak{m}}$. The density of such primes among all primes of $K$ is $1/|\mathrm{Cl}_{\mathfrak{m}}(K)|$.

*Proof.* The Artin symbol of $\mathfrak{p}$ in $K_{\mathfrak{m}}/K$ is the class of $\mathfrak{p}$ in $\mathrm{Cl}_{\mathfrak{m}}(K)$, and $\mathfrak{p}$ splits completely if and only if its Artin symbol is trivial, that is $\mathfrak{p} \in P_{\mathfrak{m}}$. The density is Chebotarev for $K_{\mathfrak{m}}/K$. $\square$

The development volumes need primes of $K$ of the form $\pi\overline{\pi}$ with $\pi \equiv 1 \pmod N$ and $N\pi \leq N^{C}$. This is Linnik's theorem for the ray class characters modulo $N$. Fogels extended Linnik's method to Hecke $L$-functions, and Lagarias, Montgomery and Odlyzko gave a bound $N\mathfrak{p} \ll d_L^{A}$ for the least prime with a given Frobenius in a Galois extension $L$. For the ray class field $L = K_{(N)}$, $\log d_L$ is of size $[L : \mathbb{Q}]\log N$ and the degree grows with $N$, so this bound is not polynomial in $N$. The polynomial bound needs the method of Linnik applied to the $L$-functions of the ray class group, with the zero density theorem and Deuring-Heilbronn for that family.

**Remark (effective Chebotarev).** Lagarias and Odlyzko proved an effective form of the [[Chebotarev|X8VKW5Y1CZ]] density theorem: for a Galois extension $L/K$ and a conjugacy class $C$ of its group $G$, the number of primes of $K$ of norm at most $x$ with Frobenius in $C$ is $\frac{|C|}{|G|}\mathrm{li}(x)$ up to an explicit error that involves a possible exceptional zero of the Dedekind zeta function of $L$, for $\log x$ larger than a constant times $[L : \mathbb{Q}](\log d_L)^2$. It is the general form of the theorem with the exceptional term of the previous section.

## Notes and references

Davenport, *Multiplicative Number Theory* (third edition, revised by Montgomery), is the standard first text. It covers Gauss sums (chapter 2), primitive characters (chapter 5), the functional equation (chapter 9), the zero-free regions (chapters 13 and 14), the zero counts $N(T)$ and $N(T, \chi)$ (chapters 15 and 16), the explicit formulas for $\psi(x)$ and $\psi(x, \chi)$ (chapters 17 and 19), the prime number theorem for progressions (chapters 20 and 22), Siegel's theorem (chapter 21), the Pólya-Vinogradov inequality (chapter 23), the large sieve (chapter 27) and the theorem of Bombieri and Vinogradov (chapter 28). Read it for the fourth, fifth and sixth sections.

Iwaniec and Kowalski, *Analytic Number Theory*, is the reference for the rest. Chapter 3 (Characters) has Gauss and Jacobi sums. Chapter 5 (Classical analytic theory of $L$-functions) has the explicit formula for general $L$-functions, with the Guinand-Weil form. Chapter 7 (Bilinear forms and the large sieve) has the additive and multiplicative large sieve with the sharp constant. Chapter 9 (The Dirichlet polynomials) has the mean value theorems. Chapter 10 (Zero-density estimates) has the density theorems with powers of $\log$. Chapter 11 (Sums over finite fields) proves Weil's bounds, by Stepanov's method and by the route through curves. Chapter 12 (Character sums) has the theorems of Pólya-Vinogradov and Burgess. Chapter 18 (The least prime in an arithmetic progression) proves the log-free density theorem, the Deuring-Heilbronn phenomenon and Linnik's theorem by Gallagher's method; read it for the theorem with the exceptional term.

Ireland and Rosen, *A Classical Introduction to Modern Number Theory*, chapters 6, 8 and 11, is a gentle source for Gauss and Jacobi sums, the Fermat curve example and the Hasse-Davenport relation. Apostol, *Introduction to Analytic Number Theory*, chapter 4, has the partial summation used in the lemma on the smoothed sum. Montgomery and Vaughan, *Multiplicative Number Theory I. Classical Theory*, treats the prime number theorem in progressions and the explicit formula with full proofs.

The original sources cited in the text are: Weil, "On some exponential sums", Proc. Nat. Acad. Sci. 34 (1948), for the bounds of the second section; Deligne, "La conjecture de Weil I", Publ. Math. IHÉS 43 (1974), section 8, for sums in several variables; Schmidt, *Equations over finite fields: an elementary approach*, for Stepanov's method; Burgess, "On character sums and $L$-series", Proc. London Math. Soc. (1962); Montgomery and Vaughan, "The large sieve", Mathematika 20 (1973), for the sharp large sieve and the Brun-Titchmarsh theorem with constant $2$; Montgomery and Vaughan, "Hilbert's inequality", J. London Math. Soc. (1974), for the mean value theorem; Heath-Brown, "A mean value estimate for real character sums", Acta Arith. 72 (1995); Siegel, "Über die Classenzahl quadratischer Zahlkörper", Acta Arith. 1 (1935); Gallagher, "A large sieve density estimate near $\sigma = 1$", Invent. Math. 11 (1970); Weil, "Sur les formules explicites de la théorie des nombres premiers" (1952), for the explicit formula and the positivity criterion; Lagarias and Odlyzko, "Effective versions of the Chebotarev density theorem" (1977); Lagarias, Montgomery and Odlyzko, "A bound for the least prime ideal in the Chebotarev density theorem", Invent. Math. 54 (1979).

For norm forms and class fields of imaginary quadratic fields, read Cox, *Primes of the form $x^2 + ny^2$*, sections 7 to 9, after [class field theory](/learn/class-field-theory/). For the background on Dirichlet characters and the statements of the theorems of Dirichlet, Linnik and Chebotarev, see [L-functions](/learn/l-functions/); for the Riemann hypothesis for curves, see [étale cohomology](/learn/etale-cohomology/).
