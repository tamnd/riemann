This chapter gives the algebraic combinatorics that the development volumes use without comment: binomial coefficients and their $p$-adic valuations, partitions and tableaux, symmetric and Schur polynomials, the Pieri and Littlewood-Richardson rules, identities among minors, Vandermonde and confluent determinants, polynomials on spaces of matrices with their integral structure, and the Mahler measure and other sizes of polynomials. The Pieri rule and a column condition on skew diagrams bound the lattice inclusions of Weyl modules in [the unitary hypotheses](/proof/unitary-hypotheses/). Paths of horizontal strips and standard products of minors give bases of polynomial spaces in the growth bounds below [EveryCharacter from theta integrals and local matching](/step/theta-local-matching/). Schur polynomials in the roots of characteristic polynomials express weights in [the Galois row](/proof/galois-row/). Products of leading minors are the highest weight vectors of [the determinants chapter](/proof/determinants/), and Mahler measures of Chow forms enter the heights behind [the covolume bound](/step/covolume-bound-of-x-def/). A ring is commutative with $1$, and $\mathbb{N} = \{0, 1, 2, \dots\}$.

## Binomial coefficients, factorials and divided powers

We use multi-index notation. For $\alpha \in \mathbb{N}^n$ put $|\alpha| = \alpha_1 + \dots + \alpha_n$, $\alpha! = \alpha_1! \cdots \alpha_n!$ and $x^\alpha = x_1^{\alpha_1} \cdots x_n^{\alpha_n}$. For $\beta \le \alpha$ coordinatewise, $\binom{\alpha}{\beta} = \prod_i \binom{\alpha_i}{\beta_i}$. The numbers $\alpha!$ are the *monomial factorials*. They are the squared norms of the monomials for the Fock pairing of the last section.

**Definition.** Let $A$ be a $\mathbb{Q}$-algebra, $x \in A$ and $k \in \mathbb{N}$. The *[[binomial coefficient|0GBZM0MT0F]]* is $\binom{x}{k} = x(x-1)\cdots(x-k+1)/k!$. Its numerator is the *[[descending factorial|Y1BVY7J6AE]]* $x^{\underline{k}}$. For $x = m \in \mathbb{N}$, $\binom{m}{k}$ is the number of subsets with $k$ elements of a set with $m$ elements, and $\binom{m}{k} = m!/(k!\,(m-k)!)$ for $k \le m$.

**Proposition.** In $\mathbb{Q}[x]$, $\binom{x+1}{k} = \binom{x}{k} + \binom{x}{k-1}$ for $k \ge 1$ ([[Pascal's rule|0YRG241HQQ]]). In each ring, $(a + b)^m = \sum_{k=0}^{m} \binom{m}{k} a^k b^{m-k}$, and
$$(x_1 + \dots + x_n)^d = \sum_{|\alpha| = d} \frac{d!}{\alpha!}\, x^\alpha.$$
The integers $d!/\alpha!$ are the *[[multinomial coefficients|0PCV9EDJM2]]*.

**Theorem ([[Vandermonde's identity|01JADB9VW5]]).** In $\mathbb{Q}[x, y]$, for each $k \in \mathbb{N}$,
$$\binom{x+y}{k} = \sum_{j=0}^{k} \binom{x}{j} \binom{y}{k-j}.$$

*Proof.* For $x = a$ and $y = b$ in $\mathbb{N}$, both sides count the subsets with $k$ elements of a disjoint union of a set with $a$ elements and a set with $b$ elements: sort them by the number $j$ of elements in the first set. So the difference $D(x, y) = \sum_i c_i(y) x^i$ vanishes on $\mathbb{N}^2$. For each $b \in \mathbb{N}$, $D(x, b)$ has infinitely many zeros, so $c_i(b) = 0$. Then each $c_i$ has infinitely many zeros, so $D = 0$. $\square$

**Definition.** A polynomial $f \in \mathbb{Q}[x_1, \dots, x_n]$ is *integer-valued* if $f(\mathbb{Z}^n) \subseteq \mathbb{Z}$.

**Theorem (Pólya).** The integer-valued polynomials in $\mathbb{Q}[x_1, \dots, x_n]$ are the $\mathbb{Z}$-linear combinations of the products $\binom{x_1}{k_1} \cdots \binom{x_n}{k_n}$, $k \in \mathbb{N}^n$.

*Proof.* Take $n = 1$; the general case is the same, one variable at a time. Since $\binom{-m}{k} = (-1)^k \binom{m+k-1}{k}$, each $\binom{x}{k}$ is integer-valued. The polynomial $\binom{x}{k}$ has degree $k$, so these polynomials form a $\mathbb{Q}$-basis of $\mathbb{Q}[x]$. Let $(\Delta f)(x) = f(x+1) - f(x)$. By Pascal's rule, $\Delta \binom{x}{k} = \binom{x}{k-1}$. So if $f = \sum_k c_k \binom{x}{k}$, then $c_k = (\Delta^k f)(0)$. This is an integer when $f$ is integer-valued. $\square$

For a prime $p$, let $v_p$ be the $p$-adic valuation on $\mathbb{Q}$, and let $s_p(m)$ be the sum of the digits of $m \in \mathbb{N}$ in base $p$.

**Theorem ([[Legendre's formula|01WPV9PHN7]]).** For $m \in \mathbb{N}$,
$$v_p(m!) = \sum_{i \ge 1} \left\lfloor \frac{m}{p^i} \right\rfloor = \frac{m - s_p(m)}{p - 1}.$$

*Proof.* Each $j \le m$ contributes $v_p(j)$, the number of $i \ge 1$ with $p^i \mid j$, and there are $\lfloor m/p^i \rfloor$ integers $j \le m$ with $p^i \mid j$. This gives the first formula. If $m = \sum_r d_r p^r$ with digits $d_r$, then $\lfloor m/p^i \rfloor = \sum_{r \ge i} d_r p^{r-i}$, and the sum over $i \ge 1$ is $\sum_r d_r (p^r - 1)/(p-1)$. $\square$

**Theorem ([[Kummer's theorem|0VBWK9XYDG]]).** For $k, m \in \mathbb{N}$, $v_p \binom{k+m}{k}$ is the number of carries when $k$ and $m$ are added in base $p$.

*Proof.* By Legendre's formula, $v_p \binom{k+m}{k} = (s_p(k) + s_p(m) - s_p(k+m))/(p-1)$. Each carry replaces a digit sum $p + c$ by the digit $c$ and adds $1$ to the next digit, so it lowers the digit sum by $p - 1$. $\square$

**Theorem ([[Lucas's theorem|0RY4GGMEQG]]).** Let $m = \sum_i m_i p^i$ and $k = \sum_i k_i p^i$ with digits $0 \le m_i, k_i < p$. Then $\binom{m}{k} \equiv \prod_i \binom{m_i}{k_i} \pmod p$.

*Proof.* In $\mathbb{F}_p[x]$, $(1 + x)^p = 1 + x^p$. So $(1+x)^m = \prod_i (1 + x^{p^i})^{m_i}$. Compare the coefficients of $x^k$; by uniqueness of the base $p$ expansion, the only contribution on the right is $\prod_i \binom{m_i}{k_i}$. $\square$

**Example.** In base $2$, $3 = 11_2$, and $3 + 3$ has two carries. So $v_2 \binom{6}{3} = v_2(20) = 2$. By Lucas, $\binom{6}{3} \equiv \binom{1}{0}\binom{1}{1}\binom{0}{1} = 0 \pmod 2$.

**Definition.** Let $D$ be an endomorphism of a $\mathbb{Q}$-vector space. Its *divided powers* are $D^{(k)} = D^k / k!$, $k \in \mathbb{N}$. If $D$ and $D'$ commute, $(D + D')^{(k)} = \sum_{i + j = k} D^{(i)} D'^{(j)}$.

On the polynomial ring $\mathbb{Q}[x_{ij}]$ in the entries of an $r \times n$ matrix, the *polarization operators* are $E_{ab} = \sum_{j=1}^{n} x_{aj}\, \partial / \partial x_{bj}$, for $1 \le a, b \le r$. They satisfy $[E_{ab}, E_{cd}] = \delta_{bc} E_{ad} - \delta_{ad} E_{cb}$, so they give an action of $\mathfrak{gl}_r$ by infinitesimal row operations.

**Proposition.** Let $a \ne b$ and $f \in \mathbb{Q}[x_{ij}]$. Let $f_t$ be $f$ with each $x_{bj}$ replaced by $x_{bj} + t x_{aj}$. Then $f_t = \sum_{k \ge 0} t^k E_{ab}^{(k)} f$. In particular $E_{ab}^{(k)}$ maps $\mathbb{Z}[x_{ij}]$ to itself, and so acts on $R[x_{ij}]$ for each ring $R$.

*Proof.* The flow of the vector field $E_{ab}$ is $x_{bj} \mapsto x_{bj} + t x_{aj}$, with the other variables fixed, since $a \ne b$. So $f_t = \exp(t E_{ab}) f$, a finite sum on polynomials. If $f$ has integer coefficients, so does $f_t$. $\square$

These divided powers of polarization operators, $E_{ab}^{(k)}$, define the integral Weyl modules of the section on polynomials on matrices. The growth bounds below [EveryCharacter from theta integrals and local matching](/step/theta-local-matching/) use operators $\sum_{k} (-1)^k \binom{h+k}{k}^{-1} E_{ba}^{(k)} E_{ab}^{(k)}$, and they control the $p$-adic size of the denominators $\binom{h+k}{k}$ by Kummer's theorem.

## Partitions and Young tableaux

**Definition.** A *[[partition|0JV30XN73Z]]* is a sequence $\lambda = (\lambda_1, \lambda_2, \dots)$ of integers with $\lambda_1 \ge \lambda_2 \ge \dots \ge 0$ and only finitely many $\lambda_i \ne 0$, the *parts*. Its *size* is $|\lambda| = \sum_i \lambda_i$ and its *length* $\ell(\lambda)$ is the number of parts. We write $\lambda \vdash d$ if $|\lambda| = d$, and $(2, 2, 1) = (2^2, 1)$.

**Definition.** The *Young diagram* of $\lambda$ is the set of boxes $(i, j) \in \mathbb{Z}^2$ with $i \ge 1$ and $1 \le j \le \lambda_i$, drawn with row $i$ from the top and column $j$ from the left. The *conjugate* partition $\lambda'$ has $\lambda'_j = \#\{i : \lambda_i \ge j\}$; its diagram is the transpose. The *content* of the box $(i, j)$ is $c(i,j) = j - i$, and its *hook length* is $h(i,j) = \lambda_i - j + \lambda'_j - i + 1$, the number of boxes to its right, below it, and itself.

**Example.** For $\lambda = (4, 2, 1)$, $\lambda' = (3, 2, 1, 1)$. The hook lengths are $6, 4, 2, 1$ in the first row, $3, 1$ in the second and $1$ in the third. The contents are $0, 1, 2, 3$, then $-1, 0$, then $-2$.

**Definition.** For partitions $\mu \subseteq \lambda$ (that is, $\mu_i \le \lambda_i$ for all $i$), the *skew diagram* $\lambda/\mu$ is the set of boxes of $\lambda$ not in $\mu$. It is a *horizontal strip* if no two of its boxes lie in one column, and a *vertical strip* if no two lie in one row.

**Proposition.** Let $\mu \subseteq \lambda$. Then $\lambda/\mu$ is a horizontal strip if and only if $\lambda$ and $\mu$ *interlace*:
$$\lambda_1 \ge \mu_1 \ge \lambda_2 \ge \mu_2 \ge \lambda_3 \ge \cdots.$$
It is a vertical strip if and only if $\lambda_i - \mu_i \in \{0, 1\}$ for each $i$.

*Proof.* The boxes of $\lambda/\mu$ in column $j$ are the boxes $(i, j)$ with $\mu'_j < i \le \lambda'_j$, an interval. So some column has two boxes if and only if $(i, j)$ and $(i+1, j)$ both lie in $\lambda/\mu$ for some $i, j$, that is, $\mu_i < j \le \lambda_{i+1}$. No such $j$ exists if and only if $\lambda_{i+1} \le \mu_i$ for each $i$. The second claim is clear. $\square$

The same words apply to the *dominant weights* of $\mathrm{GL}_n$ of [the representations chapter](/learn/representations/#highest-weights-and-branching), the $\lambda \in \mathbb{Z}^n$ with $\lambda_1 \ge \dots \ge \lambda_n$. For dominant $\lambda, \mu \in \mathbb{Z}^n$ we say that $\lambda/\mu$ is a horizontal strip of size $|\lambda| - |\mu|$ if $\lambda_1 \ge \mu_1 \ge \lambda_2 \ge \dots \ge \lambda_n \ge \mu_n$. Adding $(m, \dots, m)$ to both makes them partitions and does not change the condition.

**Definition.** Let $\lambda/\mu$ be a skew diagram and $n \ge 1$. A *semistandard tableau* of shape $\lambda/\mu$ with entries in $[n] = \{1, \dots, n\}$ is a filling $T$ of its boxes by elements of $[n]$ that weakly increases along each row and strictly increases down each column. Its *weight* is $\alpha(T) \in \mathbb{N}^n$, with $\alpha_i$ the number of entries $i$, and we put $x^T = x^{\alpha(T)}$. For $\lambda \vdash d$, a *standard tableau* of shape $\lambda$ is a filling by $1, \dots, d$, each used once, that increases along rows and down columns. We write $f^\lambda$ for their number. The *Kostka number* $K_{\lambda\alpha}$ is the number of semistandard tableaux of shape $\lambda$ and weight $\alpha$.

**Proposition (tableaux as chains of strips).** The map that sends $T$ to the chain of shapes $\mu^{(i)} = \{$boxes of $T$ with entry $\le i\}$ is a bijection from the semistandard tableaux of shape $\lambda$ with entries in $[n]$ onto the chains
$$\emptyset = \mu^{(0)} \subseteq \mu^{(1)} \subseteq \dots \subseteq \mu^{(n)} = \lambda$$
of partitions in which each $\mu^{(i)}/\mu^{(i-1)}$ is a horizontal strip. The weight of $T$ is $\alpha_i = |\mu^{(i)}| - |\mu^{(i-1)}|$, and $\ell(\mu^{(i)}) \le i$.

*Proof.* Since entries increase along rows and columns, each $\mu^{(i)}$ is a Young diagram. The boxes with entry $i$ form $\mu^{(i)}/\mu^{(i-1)}$, and the columns are strict exactly when this is a horizontal strip. Conversely a chain determines $T$ by writing $i$ in the boxes of $\mu^{(i)}/\mu^{(i-1)}$. The entry in row $r$ is at least $r$, so $\ell(\mu^{(i)}) \le i$. $\square$

Writing the parts of the $\mu^{(i)}$ as a triangle gives a *Gelfand-Tsetlin pattern*: an array $(\mu^{(i)}_j)_{1 \le j \le i \le n}$ of integers with top row $\lambda$ and $\mu^{(i)}_j \ge \mu^{(i-1)}_j \ge \mu^{(i)}_{j+1}$. These index bases of the representations of $\mathrm{GL}_n$, through the branching law below.

**Example.** The semistandard tableaux of shape $(2, 1)$ with entries in $[2]$ have first row $1\,1$ or $1\,2$ and second row $2$. With entries in $[3]$ there are $8$ of them.

**Definition.** For $\lambda, \mu \vdash d$, $\mu$ is *dominated* by $\lambda$, written $\mu \le \lambda$, if $\mu_1 + \dots + \mu_i \le \lambda_1 + \dots + \lambda_i$ for each $i$.

**Proposition.** If $K_{\lambda\mu} \ne 0$, then $\mu \le \lambda$. Also $K_{\lambda\lambda} = 1$.

*Proof.* Since columns are strict, the entries $\le i$ of a tableau lie in its first $i$ rows. So $\mu_1 + \dots + \mu_i \le \lambda_1 + \dots + \lambda_i$. If $\mu = \lambda$, equality for each $i$ forces row $i$ to be filled with $i$. $\square$

**Theorem (hook length formula).** For $\lambda \vdash d$,
$$f^\lambda = \frac{d!}{\prod_{(i,j) \in \lambda} h(i,j)}$$
(J. S. Frame, G. de B. Robinson and R. M. Thrall, *The hook graphs of the symmetric group*, Canad. J. Math. 6, 1954).

**Example.** For $\lambda = (4, 2, 1)$, $f^\lambda = 7!/(6 \cdot 4 \cdot 2 \cdot 1 \cdot 3 \cdot 1 \cdot 1) = 5040/144 = 35$.

The number $f^\lambda$ is the degree of the irreducible character $\chi^\lambda$ of $S_d$ (Frobenius formula below). A bound of a character value by $f^\lambda$ enters the mean square bounds of the development volumes.

## Symmetric polynomials

The symmetric group $S_n$ acts on $\mathbb{Z}[x_1, \dots, x_n]$ by permuting the variables.

**Definition.** A polynomial is *[[symmetric|0VHSHB9B6J]]* if it is fixed by $S_n$. The symmetric polynomials form a graded ring $\Lambda_n = \bigoplus_d \Lambda_n^d$. For a partition $\lambda$ with $\ell(\lambda) \le n$, the *monomial symmetric polynomial* $m_\lambda$ is the sum of the distinct monomials $x^\alpha$ with $\alpha$ a permutation of $(\lambda_1, \dots, \lambda_n)$. For $k \ge 1$ we have:

- the *[[elementary symmetric polynomial|0X5QVCF06N]]* $e_k = \sum_{i_1 < \dots < i_k} x_{i_1} \cdots x_{i_k}$;
- the *complete homogeneous polynomial* $h_k = \sum_{|\alpha| = k} x^\alpha$;
- the *[[power sum|0ZNXZB4HNB]]* $p_k = x_1^k + \dots + x_n^k$.

Put $e_0 = h_0 = 1$, and $e_\lambda = e_{\lambda_1} e_{\lambda_2} \cdots$, and the same for $h_\lambda$ and $p_\lambda$.

The $m_\lambda$ with $\ell(\lambda) \le n$ and $|\lambda| = d$ form a $\mathbb{Z}$-basis of $\Lambda_n^d$. In a variable $t$,
$$E(t) = \prod_{i=1}^n (1 + x_i t) = \sum_{k \ge 0} e_k t^k, \qquad H(t) = \prod_{i=1}^n \frac{1}{1 - x_i t} = \sum_{k \ge 0} h_k t^k.$$
Since $H(t) E(-t) = 1$, $\sum_{i=0}^{k} (-1)^i e_i h_{k-i} = 0$ for each $k \ge 1$.

**Theorem ([[fundamental theorem of symmetric polynomials|0GW1ZZH0R4]]).** $\Lambda_n = \mathbb{Z}[e_1, \dots, e_n]$, and $e_1, \dots, e_n$ are algebraically independent. Also $\Lambda_n = \mathbb{Z}[h_1, \dots, h_n]$, and $\Lambda_n \otimes \mathbb{Q} = \mathbb{Q}[p_1, \dots, p_n]$.

*Proof.* Order monomials lexicographically. The leading monomial of $e_1^{a_1} \cdots e_n^{a_n}$ is $x^\lambda$ with $\lambda_i = a_i + \dots + a_n$, with coefficient $1$, and each partition $\lambda$ with $\ell(\lambda) \le n$ arises from one $a$. Subtract from $f \in \Lambda_n$ the product whose leading monomial is that of $f$, and repeat; this ends, and distinct products have distinct leading monomials. The relation $\sum_i (-1)^i e_i h_{k-i} = 0$ expresses $e_k$ through $h_1, \dots, h_k$ and conversely, and Newton's identities below do the same for $p_k$ over $\mathbb{Q}$. $\square$

**Theorem ([[Newton's identities|0WG2A3HE0S]]).** For $k \ge 1$,
$$k e_k = \sum_{i=1}^{k} (-1)^{i-1} e_{k-i} p_i, \qquad k h_k = \sum_{i=1}^{k} h_{k-i} p_i.$$

*Proof.* Put $P(t) = \sum_{k \ge 1} p_k t^{k-1} = \sum_i x_i / (1 - x_i t)$. Then $H'(t) = P(t) H(t)$ and $E'(t) = P(-t) E(t)$, by logarithmic differentiation. Compare the coefficients of $t^{k-1}$. $\square$

**Proposition ([[Vieta's formulas|0M8EWQJ1YV]]).** In $R[X]$, $\prod_{i=1}^n (X - \alpha_i) = \sum_{k=0}^n (-1)^k e_k(\alpha_1, \dots, \alpha_n) X^{n-k}$.

**Corollary.** Let $K$ be a field and $A \in M_n(K)$ with eigenvalues $\alpha_1, \dots, \alpha_n$ in an algebraic closure, with multiplicity. Then the coefficients of the characteristic polynomial of $A$ are $\pm e_k(\alpha)$, and $\operatorname{tr} A^k = p_k(\alpha)$. If $K$ has characteristic $0$ or larger than $n$, the traces $\operatorname{tr} A^k$, $1 \le k \le n$, determine the characteristic polynomial.

*Proof.* Triangularize $A$ over the algebraic closure. For the last claim, Newton's identities give $e_k$ from $p_1, \dots, p_k$ with divisions by $1, \dots, k$. $\square$

This is how the Galois row passes between characteristic polynomials of Frobenius and traces of Frobenius on étale cohomology ([the étale cohomology chapter](/learn/etale-cohomology/)), and the development volumes build power sums of Frobenius eigenvalues from it.

**Remark.** Setting $x_{n+1} = 0$ maps $\Lambda_{n+1}^d$ onto $\Lambda_n^d$, with $m_\lambda \mapsto m_\lambda$ if $\ell(\lambda) \le n$ and $m_\lambda \mapsto 0$ otherwise. It is an isomorphism for $n \ge d$. The inverse limit $\Lambda = \bigoplus_d \varprojlim_n \Lambda_n^d$ is the *ring of symmetric functions*. An identity in $\Lambda^d$ can be checked in $d$ variables, and it then holds in each number of variables.

## Minors and determinant identities

Let $A \in M_{m \times n}(R)$. For $I \subseteq [m]$ and $J \subseteq [n]$ with $|I| = |J| = k$, let $A_{I,J}$ be the submatrix on the rows $I$ and columns $J$, in increasing order. Its determinant is a *[[minor|0BT9BYWVRY]]* of size $k$. The algebra chapter defines the [determinant](/learn/algebra/#matrices) and the leading principal minors $\Delta_s$.

The exterior power $\wedge^k R^n$ is free with basis $e_S = e_{s_1} \wedge \dots \wedge e_{s_k}$, $S = \{s_1 < \dots < s_k\}$. For $A \in M_{m \times n}(R)$, the map $\wedge^k A$ sends $e_J$ to $Ae_{j_1} \wedge \dots \wedge Ae_{j_k} = \sum_I \det A_{I,J}\, e_I$. So the matrix of $\wedge^k A$, the *$k$-th compound matrix*, has the minors of size $k$ as entries.

**Theorem (Cauchy-Binet formula).** Let $A \in M_{m \times n}(R)$, $B \in M_{n \times p}(R)$, $I \subseteq [m]$ and $J \subseteq [p]$ with $|I| = |J| = k$. Then
$$\det (AB)_{I,J} = \sum_{S \subseteq [n],\ |S| = k} \det A_{I,S} \, \det B_{S,J}.$$
In particular, if $m = p = k \le n$, then $\det(AB) = \sum_{|S| = k} \det A_{[k],S} \det B_{S,[k]}$, and if $k > n$, then $\det (AB)_{I,J} = 0$.

*Proof.* $\wedge^k$ is a functor, so $\wedge^k(AB) = \wedge^k A \circ \wedge^k B$. Compare the $(I, J)$ entries. If $k > n$, then $\wedge^k R^n = 0$. $\square$

**Corollary.** Let $A \in M_{k \times n}(\mathbb{C})$ and $A^*$ its conjugate transpose. Then $\det(A A^*) = \sum_{|S| = k} |\det A_{[k],S}|^2$. So the Gram matrix $AA^*$ of the rows of $A$ is invertible if and only if $A$ has rank $k$.

**Proposition.** Over a field, the rank of $A$ is the largest $k$ such that $A$ has a nonzero minor of size $k$. By Cauchy-Binet, $\operatorname{rank}(AB) \le \min(\operatorname{rank} A, \operatorname{rank} B)$.

The corank bounds of the development volumes (the chapters on Pieri rules and column minors) show that a matrix has small corank by finding one nonzero minor of the right size.

**Theorem (Laplace expansion).** Let $A \in M_n(R)$ and $I \subseteq [n]$ with $|I| = k$. Write $\Sigma I$ for the sum of the elements of $I$, and $I^c$ for the complement. Then
$$\det A = \sum_{|J| = k} (-1)^{\Sigma I + \Sigma J} \det A_{I,J} \det A_{I^c, J^c}.$$

**Theorem (Jacobi's complementary minor formula).** Let $A \in \mathrm{GL}_n(R)$ and $I, J \subseteq [n]$ with $|I| = |J|$. Then
$$\det (A^{-1})_{J,I} = (-1)^{\Sigma I + \Sigma J}\, \frac{\det A_{I^c, J^c}}{\det A}.$$
For $|I| = 1$ this is the adjugate formula for $A^{-1}$. For both theorems see R. A. Horn and C. R. Johnson, *Matrix Analysis*, Chapter 0.

**Proposition (Gauss decomposition).** Let $K$ be a field and $A \in \mathrm{GL}_n(K)$. Then $A = L D U$ with $L$ lower unitriangular, $D$ diagonal and $U$ upper unitriangular if and only if $\Delta_s(A) \ne 0$ for $1 \le s < n$. The decomposition is then unique, and $D = \operatorname{diag}(\Delta_1, \Delta_2/\Delta_1, \dots, \Delta_n/\Delta_{n-1})$.

*Proof.* The first $s$ rows of $LX$ are $L_{[s],[s]}$ times the first $s$ rows of $X$, so $\Delta_s(LX) = \Delta_s(X)$; in the same way $\Delta_s(XU) = \Delta_s(X)$. So $\Delta_s(LDU) = d_1 \cdots d_s$, which gives $D$ and the necessity. Conversely, if the $\Delta_s$ are nonzero, Gaussian elimination without row exchanges produces $L$ and $U$, and uniqueness holds because $L^{-1} L' = D U U'^{-1} D'^{-1}$ is both lower and upper triangular. $\square$

**Definition.** Let $R$ be a principal ideal domain and $A \in M_{m \times n}(R)$. The *$k$-th determinantal divisor* $d_k(A)$ is a gcd of the minors of size $k$ of $A$.

**Theorem (Smith normal form).** Let $R$ be a principal ideal domain and $A \in M_{m \times n}(R)$ of rank $r$. There are $U \in \mathrm{GL}_m(R)$ and $V \in \mathrm{GL}_n(R)$ such that $UAV$ has diagonal entries $s_1, \dots, s_r, 0, \dots$ with $s_1 \mid s_2 \mid \dots \mid s_r$ and zeros elsewhere. Up to units, $s_1 \cdots s_k = d_k(A)$, so the $s_i$ are unique (N. Jacobson, *Basic Algebra I*, Chapter 3).

*Proof of the formula for $d_k$.* By Cauchy-Binet, each minor of size $k$ of $UAV$ is an $R$-combination of minors of size $k$ of $A$, so $d_k(A) \mid d_k(UAV)$. The same with $U^{-1}, V^{-1}$ gives the converse. For the diagonal matrix with $s_1 \mid \dots \mid s_r$, the gcd of the minors of size $k$ is $s_1 \cdots s_k$. $\square$

**Corollary.** Let $\mathcal{O}$ be a discrete valuation ring with valuation $v$, and $A \in M_n(\mathcal{O})$ with $\det A \ne 0$. Then the [length](/learn/algebra/#rings-ideals-and-modules) of $\mathcal{O}^n / A\mathcal{O}^n$ is $v(\det A)$, and $v(s_1) + \dots + v(s_k)$ is the least valuation of a minor of size $k$.

The development volumes measure lattice inclusions and cokernels in this way: they count the Smith entries of small norm and bound valuations of minors.

**Theorem (Lindström-Gessel-Viennot lemma).** Let $G$ be a finite directed graph without cycles, with weights on the edges in a ring $R$. For vertices $u, v$ let $e(u, v)$ be the sum over the paths from $u$ to $v$ of the products of the weights. Let $u_1, \dots, u_k$ and $v_1, \dots, v_k$ be vertices. Then $\det (e(u_i, v_j))_{i,j}$ is the sum, over the families of pairwise vertex-disjoint paths $P_i$ from $u_i$ to $v_{\sigma(i)}$ with $\sigma \in S_k$, of $\operatorname{sgn}(\sigma) \prod_i w(P_i)$ (B. Lindström, Bull. London Math. Soc. 5, 1973; I. Gessel and G. Viennot, *Binomial determinants, paths, and hook length formulae*, Adv. Math. 58, 1985).

If the graph is planar and the only possible permutation for disjoint families is $\sigma = 1$, the determinant counts families of nonintersecting paths. This gives the Jacobi-Trudi formula below, and shows that minors of matrices of path counts are nonnegative.

**Theorem ([[Vandermonde determinant|0P84B554AS]]).** The *[[Vandermonde matrix|Q3JWBZ7EFY]]* $(x_i^{j-1})_{1 \le i, j \le n}$ has determinant
$$\det (x_i^{j-1}) = \prod_{1 \le i < j \le n} (x_j - x_i).$$

*Proof.* The determinant is a polynomial in $\mathbb{Z}[x_1, \dots, x_n]$ of degree $0 + 1 + \dots + (n-1)$. It vanishes when $x_i = x_j$, so it is divisible by each of the pairwise coprime primes $x_j - x_i$, and hence by their product, which has the same degree. Both sides have coefficient $1$ at the diagonal monomial $x_2 x_3^2 \cdots x_n^{n-1}$. $\square$

**Definition.** For $\alpha \in \mathbb{N}^n$, the *alternant* is $a_\alpha = \det (x_i^{\alpha_j})_{i,j} = \sum_{w \in S_n} \operatorname{sgn}(w)\, w(x^\alpha)$. Let $\delta = (n-1, n-2, \dots, 1, 0)$. Reversing the columns of the Vandermonde matrix gives $a_\delta = \prod_{i<j} (x_i - x_j)$.

A polynomial $f$ is *antisymmetric* if $w f = \operatorname{sgn}(w) f$ for each $w \in S_n$.

**Proposition.** Each antisymmetric $f \in \mathbb{Z}[x_1, \dots, x_n]$ is $a_\delta g$ with $g \in \Lambda_n$. The alternants $a_{\lambda + \delta}$, for partitions $\lambda$ with $\ell(\lambda) \le n$, form a $\mathbb{Z}$-basis of the antisymmetric polynomials.

*Proof.* The transposition of $x_i$ and $x_j$ changes the sign of $f$. So $f$ becomes $0$ when we put $x_i = x_j$, since $\mathbb{Z}[x]$ has no $2$-torsion, and $x_i - x_j$ divides $f$. These primes are pairwise coprime, so $a_\delta \mid f$, and the quotient is symmetric. For the basis: the coefficients of $f$ satisfy $c_{w\alpha} = \operatorname{sgn}(w) c_\alpha$, so $c_\alpha = 0$ if $\alpha$ has two equal entries, and $f = \sum c_\alpha a_\alpha$ over the strictly decreasing $\alpha$. These are the $\alpha = \lambda + \delta$. $\square$

For a point $y$ and $k \in \mathbb{N}$, let $r_k(y) = \bigl(\binom{j}{k} y^{j-k}\bigr)_{0 \le j < n}$, the row of the *divided derivatives* $\frac{1}{k!} \frac{d^k}{dy^k} y^j$. Its entries lie in $\mathbb{Z}[y]$.

**Theorem (confluent Vandermonde determinant).** Let $y_1, \dots, y_r$ be points with multiplicities $m_1, \dots, m_r \ge 1$, $\sum_i m_i = n$. Let $C$ be the $n \times n$ matrix with rows $r_0(y_1), \dots, r_{m_1 - 1}(y_1), r_0(y_2), \dots, r_{m_r - 1}(y_r)$. Then
$$\det C = \prod_{1 \le i < j \le r} (y_j - y_i)^{m_i m_j}.$$

*Proof.* Work in a polynomial ring with extra variables $t_{i,k}$. In the Vandermonde matrix, put the points $z_{i,k} = y_i + t_{i,k}$ for $0 \le k < m_i$ in the rows of cluster $i$. In each cluster, replace the row $(z_k^j)_j$ by the divided difference $f[z_0, \dots, z_k]$ of $f = X^j$. This is a lower triangular change of rows with diagonal entries $1/\prod_{l < k} (z_k - z_l)$. By the Vandermonde formula, the new determinant is the product of the factors $(x_b - x_a)$ over the pairs $a < b$ of points in different clusters. The divided differences of a polynomial are polynomials in the $z$'s, so we may put all $t_{i,k} = 0$. Then $f[z_0, \dots, z_k]$ becomes $f^{(k)}(y_i)/k!$, which is the row $r_k(y_i)$, and each of the $m_i m_j$ factors between the clusters $i < j$ becomes $y_j - y_i$. $\square$

**Corollary (Hermite interpolation).** Let $K$ be a field, $y_1, \dots, y_r \in K$ distinct and $\sum_i m_i = n$. For each choice of $c_{i,k} \in K$ there is one $f \in K[x]$ of degree $< n$ whose divided derivatives at $y_i$ are $c_{i,0}, \dots, c_{i, m_i - 1}$. Equivalently, $K[x]_{< n} \to \prod_i K[x]/(x - y_i)^{m_i}$ is an isomorphism.

**Theorem (Cauchy determinants).** In the field of rational functions,
$$\det \left( \frac{1}{x_i + y_j} \right)_{i,j} = \frac{\prod_{i<j} (x_j - x_i)(y_j - y_i)}{\prod_{i,j} (x_i + y_j)}, \qquad \det \left( \frac{1}{1 - x_i y_j} \right)_{i,j} = \frac{a_\delta(x)\, a_\delta(y)}{\prod_{i,j} (1 - x_i y_j)}$$
(C. Krattenthaler, *Advanced determinant calculus*, Sém. Lothar. Combin. 42, 1999, which collects these and many related evaluations).

## Schur polynomials

**Definition.** Let $\lambda$ be a partition with $\ell(\lambda) \le n$. The *Schur polynomial* is
$$s_\lambda(x_1, \dots, x_n) = \frac{a_{\lambda + \delta}}{a_\delta} = \frac{\det \bigl(x_i^{\lambda_j + n - j}\bigr)}{\det \bigl(x_i^{n-j}\bigr)}.$$
If $\ell(\lambda) > n$, put $s_\lambda = 0$. For a dominant $\lambda \in \mathbb{Z}^n$, the same ratio defines a symmetric Laurent polynomial, and $s_\lambda = (x_1 \cdots x_n)^{\lambda_n} s_{\lambda - (\lambda_n, \dots, \lambda_n)}$.

**Theorem.** The $s_\lambda$ with $\ell(\lambda) \le n$ and $|\lambda| = d$ form a $\mathbb{Z}$-basis of $\Lambda_n^d$.

*Proof.* Multiplication by $a_\delta$ is a bijection from $\Lambda_n$ onto the antisymmetric polynomials, by the last proposition of the previous section. It sends $s_\lambda$ to the basis element $a_{\lambda + \delta}$. $\square$

**Theorem (tableau formula).** For a partition $\lambda$,
$$s_\lambda(x_1, \dots, x_n) = \sum_T x^T,$$
over the semistandard tableaux $T$ of shape $\lambda$ with entries in $[n]$. So $s_\lambda = \sum_\mu K_{\lambda\mu} m_\mu$, with $K_{\lambda\lambda} = 1$ and $K_{\lambda\mu} = 0$ unless $\mu \le \lambda$ (Macdonald, Chapter I, Sections 3 and 5; Fulton, *Young Tableaux*, Chapters 2 and 6).

**Corollary.** The number $K_{\lambda\alpha}$ of tableaux of shape $\lambda$ and weight $\alpha \in \mathbb{N}^n$ does not change when the entries of $\alpha$ are permuted, since $s_\lambda$ is symmetric.

**Example.** $s_{(k)} = h_k$ and $s_{(1^k)} = e_k$. In three variables, $s_{(2,1)} = m_{(2,1)} + 2 m_{(1,1,1)}$: the two tableaux of weight $(1,1,1)$ are the standard tableaux of shape $(2,1)$.

**Theorem (Jacobi-Trudi formulas).** For a partition $\lambda$ with $\ell(\lambda) \le l$ and $\lambda_1 \le l'$,
$$s_\lambda = \det \bigl( h_{\lambda_i - i + j} \bigr)_{1 \le i, j \le l} = \det \bigl( e_{\lambda'_i - i + j} \bigr)_{1 \le i, j \le l'},$$
with $h_k = e_k = 0$ for $k < 0$ (Macdonald, Chapter I, Section 3). The first formula is the Lindström-Gessel-Viennot lemma applied to lattice paths, one path for each row of a tableau.

The ring automorphism $\omega$ of $\Lambda$ with $\omega(e_k) = h_k$ is an involution, and by Jacobi-Trudi $\omega(s_\lambda) = s_{\lambda'}$.

**Theorem (Cauchy identity).** In the ring of formal power series in $x_1, \dots, x_n, y_1, \dots, y_n$,
$$\prod_{i,j=1}^{n} \frac{1}{1 - x_i y_j} = \sum_{\lambda} s_\lambda(x)\, s_\lambda(y),$$
over the partitions $\lambda$ with $\ell(\lambda) \le n$. Also $\prod_{i,j} (1 + x_i y_j) = \sum_\lambda s_\lambda(x) s_{\lambda'}(y)$.

*Proof of the first identity.* Write $\frac{1}{1 - x_i y_j} = \sum_{k \ge 0} x_i^k y_j^k$, the $(i, j)$ entry of the product of the $n \times \infty$ matrix $(x_i^k)$ and the $\infty \times n$ matrix $(y_j^k)$. By Cauchy-Binet, applied degree by degree to finite truncations,
$$\det \left( \frac{1}{1 - x_i y_j} \right) = \sum_{k_1 > \dots > k_n \ge 0} \det(x_i^{k_l}) \det(y_j^{k_l}) = \sum_\lambda a_{\lambda + \delta}(x)\, a_{\lambda+\delta}(y).$$
Compare with the Cauchy determinant and divide by $a_\delta(x) a_\delta(y)$. $\square$

A bijective proof is the Robinson-Schensted-Knuth correspondence between matrices in $\mathbb{N}^{n \times n}$ and pairs of tableaux of the same shape (Fulton, *Young Tableaux*, Chapter 4).

**Theorem (Schur, Weyl).** Let $\lambda \in \mathbb{Z}^n$ be dominant, and $V_\lambda$ the irreducible representation of $\mathrm{GL}_n(\mathbb{C})$ of highest weight $\lambda$. If $g$ has eigenvalues $x_1, \dots, x_n$, then $\operatorname{tr}(g \mid V_\lambda) = s_\lambda(x_1, \dots, x_n)$. The representation $V_\lambda$ is polynomial if and only if $\lambda_n \ge 0$, and $\mathrm{Sym}^k \mathbb{C}^n = V_{(k)}$, $\wedge^k \mathbb{C}^n = V_{(1^k)}$ (W. Fulton and J. Harris, *Representation Theory*, Lecture 6 and Appendix A).

This is the Weyl character formula for $\mathrm{U}(n)$ of [the representations chapter](/learn/representations/#highest-weights-and-branching): the denominator $a_\delta$ is the Weyl denominator.

**Corollary (dimension formulas).** For dominant $\lambda \in \mathbb{Z}^n$,
$$\dim V_\lambda = s_\lambda(1, \dots, 1) = \prod_{1 \le i < j \le n} \frac{\lambda_i - \lambda_j + j - i}{j - i}.$$
For a partition $\lambda$ with $\ell(\lambda) \le n$ this equals $\prod_{(i,j) \in \lambda} (n + c(i,j))/h(i,j)$, the *hook content formula* (R. P. Stanley, *Enumerative Combinatorics*, Vol. 2, Section 7.21).

*Proof of the product.* Put $x_i = q^{i-1}$ and $\alpha = \lambda + \delta$. Then $a_\alpha(1, q, \dots, q^{n-1}) = \det(q^{(i-1)\alpha_j})$ is the Vandermonde determinant in the $q^{\alpha_j}$, so
$$s_\lambda(1, q, \dots, q^{n-1}) = \prod_{i < j} \frac{q^{\alpha_j} - q^{\alpha_i}}{q^{\delta_j} - q^{\delta_i}}.$$
As $q \to 1$, each factor tends to $(\alpha_i - \alpha_j)/(\delta_i - \delta_j) = (\lambda_i - \lambda_j + j - i)/(j - i)$. $\square$

This is the [[Weyl dimension formula|6VBN872BK1]]. For example, $\dim V_{(2,1,0)} = 2 \cdot 2 \cdot 2 = 8$ for $\mathrm{GL}_3$, and the hook content formula gives $(3 \cdot 4 \cdot 2)/(3 \cdot 1 \cdot 1) = 8$.

**Theorem (Frobenius character formula).** For $\rho \vdash d$,
$$p_\rho = \sum_{\lambda \vdash d} \chi^\lambda(\rho)\, s_\lambda,$$
where $\chi^\lambda$ runs over the irreducible characters of $S_d$ and $\chi^\lambda(\rho)$ is the value on a permutation of cycle type $\rho$. In particular $\chi^\lambda(1) = f^\lambda$ (Macdonald, Chapter I, Section 7).

**Corollary.** $|\chi^\lambda(\sigma)| \le f^\lambda$ for each $\sigma \in S_d$.

*Proof.* $\chi^\lambda(\sigma)$ is the trace of a matrix of finite order and size $f^\lambda$, so a sum of $f^\lambda$ roots of unity. $\square$

The Galois row says that a representation of a definite unitary group has weight $\lambda$ if its trace at $y$ is $s_\lambda$ evaluated at the roots of the characteristic polynomial of $y$, place by place ([the Galois row](/proof/galois-row/)). The development volumes expand sums of such weights through the Frobenius formula and bound the coefficients by the corollary.

## The Pieri and Littlewood-Richardson rules

**Theorem (Pieri rules).** For a partition $\mu$ and $k \ge 0$,
$$s_\mu h_k = \sum_{\lambda} s_\lambda, \qquad s_\mu e_k = \sum_{\lambda'} s_{\lambda'},$$
where the first sum is over the $\lambda \supseteq \mu$ with $\lambda/\mu$ a horizontal strip of size $k$, and the second over the $\lambda' \supseteq \mu$ with $\lambda'/\mu$ a vertical strip of size $k$. The identities hold in $\Lambda$, and in $\Lambda_n$ with $s_\lambda = 0$ for $\ell(\lambda) > n$ (Macdonald, Chapter I, Section 5).

In alternants: $a_{\mu + \delta} h_k$ is the sum of the $a_{\lambda + \delta}$ over the $\lambda$ that interlace $\mu$ from above with $|\lambda| = |\mu| + k$ and $\ell(\lambda) \le n$. The growth bounds use the rule in this form.

**Corollary.** Let $\mu \in \mathbb{Z}^n$ be dominant and $k \ge 0$. As representations of $\mathrm{GL}_n(\mathbb{C})$,
$$V_\mu \otimes \mathrm{Sym}^k \mathbb{C}^n \cong \bigoplus_{\lambda/\mu \text{ horizontal}} V_\lambda, \qquad V_\mu \otimes \wedge^k \mathbb{C}^n \cong \bigoplus_{\lambda - \mu \in \{0,1\}^n} V_\lambda,$$
with $|\lambda| = |\mu| + k$ and $\lambda$ dominant in $\mathbb{Z}^n$. Also $V_\mu \otimes (\mathrm{Sym}^k \mathbb{C}^n)^* \cong \bigoplus V_\lambda$ over the dominant $\lambda$ with $\mu/\lambda$ a horizontal strip of size $k$. Each sum is multiplicity free.

*Proof.* Twist by a power of $\det$ to make $\mu$ a partition. The characters of $\mathrm{Sym}^k$ and $\wedge^k$ are $h_k$ and $e_k$, and characters determine representations, so the first two follow from Pieri. For the third, by complete reducibility the multiplicity of $V_\lambda$ in $V_\mu \otimes W^*$ is $\dim \mathrm{Hom}(V_\lambda \otimes W, V_\mu)$, which is the multiplicity of $V_\mu$ in $V_\lambda \otimes W$. $\square$

**Definition.** Fix $n$, letters $1, \dots, N$, each either a *vector letter* or a *covector letter*, and $B \in \mathbb{N}^N$. A *path* is a sequence of dominant weights $0 = \mu_0, \mu_1, \dots, \mu_N \in \mathbb{Z}^n$ such that $\mu_i/\mu_{i-1}$ is a horizontal strip of size $B_i$ for a vector letter $i$, and $\mu_{i-1}/\mu_i$ is one for a covector letter.

**Proposition.** Let $W = W_1 \otimes \dots \otimes W_N$ with $W_i = \mathrm{Sym}^{B_i} \mathbb{C}^n$ for a vector letter and $W_i = (\mathrm{Sym}^{B_i} \mathbb{C}^n)^*$ for a covector letter. The multiplicity of $V_\mu$ in $W$ is the number of paths with $\mu_N = \mu$. If all letters are vector letters, it is the Kostka number $K_{\mu B}$, and $h_{B_1} \cdots h_{B_N} = \sum_\mu K_{\mu B} s_\mu$.

*Proof.* Induction on $N$ with the corollary: $V_{\mu_{N-1}} \otimes W_N$ is the sum of the $V_{\mu_N}$ over the allowed last steps. With only vector letters, paths are tableaux by the proposition on chains of strips. $\square$

The space $\mathrm{Pol}(n, B)$ of the development volumes, of polynomials in variables $X_{i,m}$ ($i \le N$, $m \le n$) that are homogeneous of degree $B_i$ in the variables of letter $i$, is such a space $W$. Its highest weight vectors are indexed by paths, and the volumes build one for each path and each standard filling as a product of minors (next section). [EveryCharacter from theta integrals and local matching](/step/theta-local-matching/) depends on the fact that these vectors form a basis over a discrete valuation ring.

**Theorem (branching rule).** For a partition $\lambda$ with $\ell(\lambda) \le n$,
$$s_\lambda(x_1, \dots, x_n) = \sum_{\mu} s_\mu(x_1, \dots, x_{n-1})\, x_n^{|\lambda| - |\mu|},$$
over the partitions $\mu$ that interlace $\lambda$, $\lambda_1 \ge \mu_1 \ge \lambda_2 \ge \dots \ge \mu_{n-1} \ge \lambda_n$.

*Proof.* In a tableau of shape $\lambda$ with entries in $[n]$, the boxes with entry $n$ form a horizontal strip $\lambda/\mu$, and the rest is a tableau of shape $\mu$ with entries in $[n-1]$. Apply the tableau formula. $\square$

This is the character form of the Weyl branching law of [the representations chapter](/learn/representations/#highest-weights-and-branching). Iterated down to $\mathrm{GL}_1$, it splits $V_\lambda$ into lines indexed by Gelfand-Tsetlin patterns, so $\dim V_\lambda$ is the number of these patterns. The local Bessel models of the development volumes use equivariant branching maps between the polynomial models of $V_\lambda$ for $\mathrm{GL}_N$ and $V_\sigma$ for $\mathrm{GL}_{N-1}$ with $\sigma$ interlacing $\lambda$.

**Definition.** The *skew Schur polynomial* of a skew diagram $\lambda/\mu$ is $s_{\lambda/\mu} = \sum_T x^T$, over the semistandard tableaux of shape $\lambda/\mu$. The *Littlewood-Richardson coefficients* $c^\lambda_{\mu\nu}$ are defined by $s_\mu s_\nu = \sum_\lambda c^\lambda_{\mu\nu} s_\lambda$ in $\Lambda$. Then $s_{\lambda/\mu} = \sum_\nu c^\lambda_{\mu\nu} s_\nu$.

**Definition.** A sequence $w_1 w_2 \cdots w_N$ of positive integers is a *lattice word* if, in each initial segment $w_1 \cdots w_M$, each $i$ occurs at least as often as $i + 1$. The *reverse reading word* of a tableau reads its rows from right to left, from the top row down.

**Theorem (Littlewood-Richardson rule).** $c^\lambda_{\mu\nu}$ is the number of semistandard tableaux of shape $\lambda/\mu$ and weight $\nu$ whose reverse reading word is a lattice word (Macdonald, Chapter I, Section 9; Fulton, *Young Tableaux*, Chapter 5).

So $c^\lambda_{\mu\nu} \ge 0$, $c^\lambda_{\mu\nu} = c^\lambda_{\nu\mu}$, and $c^\lambda_{\mu\nu} = 0$ unless $\mu, \nu \subseteq \lambda$ and $|\lambda| = |\mu| + |\nu|$. For $\nu = (k)$ the only possible tableau has all entries $1$, and the rule is the Pieri rule. As representations of $\mathrm{GL}_n(\mathbb{C})$, $V_\mu \otimes V_\nu \cong \bigoplus_\lambda (V_\lambda)^{\oplus c^\lambda_{\mu\nu}}$ over the $\lambda$ with $\ell(\lambda) \le n$.

**Example.** For $\lambda = (3,2,1)$ and $\mu = \nu = (2,1)$, the skew diagram $\lambda/\mu$ has one box in each of its three rows, and in different columns. A filling of weight $(2,1)$ is a lattice word if it starts with $1$, which leaves $112$ and $121$. So $c^{(3,2,1)}_{(2,1),(2,1)} = 2$, and
$$\begin{aligned} s_{(2,1)}^2 = {} & s_{(4,2)} + s_{(4,1,1)} + s_{(3,3)} + 2 s_{(3,2,1)} \\ & + s_{(3,1,1,1)} + s_{(2,2,2)} + s_{(2,2,1,1)}. \end{aligned}$$

**Corollary (column condition).** If $c^\lambda_{\mu\nu} \ne 0$, then each column of $\lambda/\mu$ has at most $\ell(\nu)$ boxes, and each row of $\lambda/\mu$ has at most $\nu_1$ boxes.

*Proof.* A tableau of weight $\nu$ has entries in $\{1, \dots, \ell(\nu)\}$, and they strictly increase down each column. For rows, apply $\omega$: $c^{\lambda'}_{\mu'\nu'} = c^\lambda_{\mu\nu}$, and $\ell(\nu') = \nu_1$. $\square$

The graded Lemma D behind [the unitary hypotheses](/proof/unitary-hypotheses/) is a statement of this kind. For a block weight $(w, \dots, w, \lambda_2)$ with $p$ entries $w$, it kills the path spaces of the shapes $\tau$ for which $\tau/\lambda_2$ has a column of more than $p$ boxes. It then bounds a power of $l$ by integers $\prod_c (w - c)^{m(c)}$, where $m(c)$ counts the boxes of content $c$ in the remaining skew diagrams.

## Polynomials on matrices

Let $R[x] = R[x_{ij}]$ be the polynomial ring in the entries of an $m \times n$ matrix $x$. The group $\mathrm{GL}_m \times \mathrm{GL}_n$ acts by $((g, h) f)(x) = f(g^T x h)$. The torus element $(\operatorname{diag}(a), \operatorname{diag}(b))$ multiplies the monomial $\prod x_{ij}^{A_{ij}}$ by $\prod_i a_i^{\sum_j A_{ij}} \prod_j b_j^{\sum_i A_{ij}}$.

**Theorem (Cauchy decomposition).** As a representation of $\mathrm{GL}_m(\mathbb{C}) \times \mathrm{GL}_n(\mathbb{C})$,
$$\mathbb{C}[x]_d \cong \bigoplus_{\lambda \vdash d,\ \ell(\lambda) \le \min(m,n)} V^{(m)}_\lambda \otimes V^{(n)}_\lambda.$$

*Proof.* By the formula for the torus action, the character of $\mathbb{C}[x]$ at $(\operatorname{diag}(a), \operatorname{diag}(b))$ is $\sum_A \prod_{i,j} (a_i b_j)^{A_{ij}} = \prod_{i,j} (1 - a_i b_j)^{-1}$. By the Cauchy identity (with zeros added to the shorter set of variables) this is $\sum_\lambda s_\lambda(a) s_\lambda(b)$. The representations are polynomial, and characters determine them. $\square$

This is the simplest case of Howe duality, here for the pair $(\mathrm{GL}_m, \mathrm{GL}_n)$ (R. Howe, *Remarks on classical invariant theory*, Trans. Amer. Math. Soc. 313, 1989). [The theta chapter](/learn/theta/#reductive-dual-pairs) gives the general setting.

**Proposition (highest weight vectors).** Let $\lambda$ be a partition with $\ell(\lambda) \le \min(m, n)$ and put
$$\mathrm{hw}_\lambda = \prod_{s \ge 1} \Delta_s^{\lambda_s - \lambda_{s+1}},$$
with $\Delta_s$ the leading principal minor of size $s$. For upper triangular $g$ and $h$, $\mathrm{hw}_\lambda(g^T x h) = \prod_s (g_{ss} h_{ss})^{\lambda_s}\, \mathrm{hw}_\lambda(x)$. So $\mathrm{hw}_\lambda$ spans the highest weight line of the summand $V^{(m)}_\lambda \otimes V^{(n)}_\lambda$.

*Proof.* $g^T$ is lower triangular, so the first $s$ rows of $g^T x h$ are $(g^T)_{[s],[s]}$ times the first $s$ rows of $x h$, and the first $s$ columns of $x h$ are the first $s$ columns of $x$ times $h_{[s],[s]}$. So $\Delta_s(g^T x h) = \prod_{i \le s} g_{ii} h_{ii}\, \Delta_s(x)$. The weight $(\lambda, \lambda)$ occurs in one summand only, once, as its highest weight. $\square$

[The determinants chapter](/proof/determinants/) uses $\mathrm{hw}_\nu$ as the test vector at infinity, moved into the Fock space of polynomials in $n \times d$ variables.

**Definition.** Let $\sigma$ be a partition with $\sigma_1 \le \min(m, n)$. A *bitableau* $(S \mid T)$ of shape $\sigma$ is a pair of fillings of the diagram of $\sigma$, $S$ with entries in $[m]$ and $T$ with entries in $[n]$, both strictly increasing along each row. Its *bideterminant* is
$$(S \mid T) = \prod_{i} \det x_{S_i, T_i},$$
where $S_i$ and $T_i$ are the sets of entries in row $i$. The bitableau is *standard* if, in addition, the columns of $S$ and of $T$ weakly increase downwards.

**Theorem (straightening law).** The standard bideterminants form a basis of the free $\mathbb{Z}$-module $\mathbb{Z}[x_{ij}]$, and so of $R[x_{ij}]$ for each ring $R$. Each bideterminant is a $\mathbb{Z}$-linear combination of standard bideterminants (P. Doubilet, G.-C. Rota and J. Stein, *On the foundations of combinatorial theory IX: Combinatorial methods in invariant theory*, Stud. Appl. Math. 53, 1974; C. De Concini, D. Eisenbud and C. Procesi, *Young diagrams and determinantal varieties*, Invent. Math. 56, 1980).

**Remark.** The transpose of a filling with strictly increasing rows and weakly increasing columns of shape $\sigma$ is a semistandard tableau of shape $\sigma'$. So the number of standard bideterminants of degree $d$ is $\sum_{\lambda \vdash d} s_\lambda(1^m) s_\lambda(1^n)$, in agreement with the Cauchy decomposition. The development volumes use bases of the same kind, products over columns of minors indexed by paths and standard fillings, for the spaces $\mathrm{Pol}(n, B)$ of the previous section, over a discrete valuation ring.

Now take $m = n = r$, and let $\mathrm{GL}_r$ act on $\mathbb{Z}[x_{ij}]$ by row operations, through the polarization operators $E_{ab}$ and their divided powers.

**Definition.** Let $\nu \in \mathbb{N}^r$ be dominant. The *dual Weyl module* $\nabla(\nu) \subseteq \mathbb{Z}[x_{ij}]$ is the set of polynomials $f$ with $f(xt) = t^\nu f(x)$ for diagonal $t$ and $f(xu) = f(x)$ for upper unitriangular $u$, as identities of polynomials in the entries of $t$ and $u$. The *Weyl module* $\Delta(\nu)$ is the $\mathbb{Z}$-span of the polynomials $E^{(k_1)}_{a_1 b_1} \cdots E^{(k_q)}_{a_q b_q} \mathrm{hw}_\nu$, with $a_i \ne b_i$.

**Proposition.** $\Delta(\nu) \subseteq \nabla(\nu)$. Both are lattices in the $\mathbb{Q}$-space $\nabla(\nu) \otimes \mathbb{Q}$, which is the irreducible representation of $\mathrm{GL}_r$ of highest weight $\nu$, and $\Delta(\nu) \otimes \mathbb{Q} = \nabla(\nu) \otimes \mathbb{Q}$. So for each weight $\mu$ the quotient $\nabla(\nu)_\mu / \Delta(\nu)_\mu$ is a finite group.

*Proof.* $\mathrm{hw}_\nu \in \nabla(\nu)$ by the computation of the last proposition. Row operations commute with column operations, and the divided powers $E_{ab}^{(k)}$ preserve $\mathbb{Z}[x_{ij}]$ by the proposition of the first section. So $\Delta(\nu) \subseteq \nabla(\nu)$. Over $\mathbb{Q}$, $\nabla(\nu)$ is irreducible of highest weight $\nu$ (Borel-Weil), and $\Delta(\nu) \otimes \mathbb{Q}$ is a nonzero subrepresentation. Each weight space of both is a finitely generated $\mathbb{Z}$-module of the same rank. $\square$

Reduced modulo a prime $l$, $\nabla(\nu)$ has the simple module $L(\nu)$ as its socle (J. C. Jantzen, *Representations of Algebraic Groups*, Part II, Chapter 2). The exponent $e$ such that $l^e \nabla(\nu)_\mu \subseteq \Delta(\nu)_\mu$, up to integers prime to $l$, is the quantity of the graded Lemma D in [the unitary hypotheses](/proof/unitary-hypotheses/). J. A. Green, *Polynomial Representations of $\mathrm{GL}_n$*, Lecture Notes in Math. 830, builds the Weyl and dual Weyl modules from bideterminants.

## Mahler measure and the size of polynomials

Let $\mathbb{T}^n = \{z \in \mathbb{C}^n : |z_1| = \dots = |z_n| = 1\}$ with its Haar probability measure $d\mu$.

**Definition.** The *[[Mahler measure|QVPYBPRHRC]]* of a nonzero $f \in \mathbb{C}[x_1, \dots, x_n]$ is
$$M(f) = \exp \int_{\mathbb{T}^n} \log |f| \, d\mu,$$
and $m(f) = \log M(f)$. The integral converges (K. Mahler, *On some inequalities for polynomials in several variables*, J. London Math. Soc. 37, 1962). Since $\log |fg| = \log|f| + \log|g|$, $M(fg) = M(f) M(g)$.

**Theorem (Jensen's formula).** Let $f$ be holomorphic on a neighbourhood of the closed unit disc, with $f(0) \ne 0$ and zeros $\alpha_1, \dots, \alpha_k$ in the closed disc, with multiplicity. Then
$$\int_0^1 \log |f(e^{2\pi i t})| \, dt = \log |f(0)| + \sum_{j=1}^{k} \log \frac{1}{|\alpha_j|}$$
(W. Rudin, *Real and Complex Analysis*, Chapter 15).

**Corollary.** If $f = a \prod_{i=1}^{d} (x - \alpha_i) \in \mathbb{C}[x]$ with $a \ne 0$, then $M(f) = |a| \prod_i \max(1, |\alpha_i|)$. So $M(f) \ge |a|$ and $M(f) \ge |f(0)|$, and $M(f) \ge 1$ for nonzero $f \in \mathbb{Z}[x]$.

*Proof.* By multiplicativity it is enough to treat $x - \alpha$. If $|\alpha| \ge 1$, Jensen's formula gives $m = \log|f(0)| = \log|\alpha|$, since a zero on the circle contributes $\log 1 = 0$. If $|\alpha| < 1$, then $|e^{2\pi i t} - \alpha| = |1 - \bar\alpha e^{2\pi i t}|$, and $1 - \bar\alpha z$ has no zero in the closed disc, so $m = \log 1 = 0$. $\square$

**Theorem (Kronecker).** Let $f \in \mathbb{Z}[x]$ with $f(0) \ne 0$. Then $M(f) = 1$ if and only if $f$ is $\pm$ a product of cyclotomic polynomials (Bombieri and Gubler, Chapter 1).

**Remark.** It is not known whether $M(f) - 1$ is bounded below by a positive constant for the other $f \in \mathbb{Z}[x]$ (Lehmer's problem). The least known value above $1$ is $M = 1.17628\ldots$, for $x^{10} + x^9 - x^7 - x^6 - x^5 - x^4 - x^3 + x + 1$.

For $f = \sum_\alpha f_\alpha x^\alpha$ let $H(f) = \max_\alpha |f_\alpha|$ and $\|f\|_2 = (\sum_\alpha |f_\alpha|^2)^{1/2}$. By Parseval, $\|f\|_2^2 = \int_{\mathbb{T}^n} |f|^2 \, d\mu$.

**Proposition (Mahler).** Let $f = \sum_{k=0}^{d} a_k x^k \in \mathbb{C}[x]$ have degree $d$. Then $|a_k| \le \binom{d}{k} M(f)$ for each $k$. So $H(f) \le 2^d M(f)$.

*Proof.* With $f = a \prod_i (x - \alpha_i)$, Vieta gives $a_{d-k} = (-1)^k a\, e_k(\alpha)$. Each of the $\binom{d}{k}$ terms of $e_k(\alpha)$ has absolute value at most $\prod_i \max(1, |\alpha_i|)$. $\square$

**Proposition (Landau).** For nonzero $f \in \mathbb{C}[x_1, \dots, x_n]$, $M(f) \le \|f\|_2$.

*Proof.* The logarithm is concave, so by Jensen's inequality for the probability measure $\mu$,
$$m(f) = \frac12 \int \log |f|^2 \, d\mu \le \frac12 \log \int |f|^2 \, d\mu = \log \|f\|_2. \qquad \square$$

**Corollary.** Let $f = f_1 \cdots f_r \in \mathbb{C}[x]$ have degree $d$. Then $\prod_j H(f_j) \le 2^d \sqrt{d+1}\, H(f)$.

*Proof.* $\prod_j H(f_j) \le \prod_j 2^{\deg f_j} M(f_j) = 2^d M(f) \le 2^d \|f\|_2 \le 2^d \sqrt{d+1}\, H(f)$. $\square$

This is the one-variable case of *Gelfond's lemma*, which bounds the heights of the factors of a polynomial in several variables by its height and its partial degrees (Bombieri and Gubler, Section 1.6).

**Definition.** Let $K$ be a field with a non-archimedean absolute value $|\cdot|_v$. The *Gauss norm* of $f = \sum f_\alpha x^\alpha \in K[x_1, \dots, x_n]$ is $|f|_v = \max_\alpha |f_\alpha|_v$.

**Theorem (Gauss's lemma).** $|fg|_v = |f|_v |g|_v$.

*Proof.* The inequality $\le$ is the ultrametric inequality. Scale $f$ and $g$ so that $|f|_v = |g|_v = 1$, if necessary after a finite extension of $K$. Their coefficients lie in the valuation ring, and their reductions $\bar f, \bar g$ in $k_v[x]$ are nonzero. The ring $k_v[x]$ is a domain, so $\bar f \bar g \ne 0$ and $|fg|_v = 1$. $\square$

Over $\mathbb{Z}$: the *[[content|0R2X8K9QA7]]* $c(f)$ is the gcd of the coefficients, $f$ is *[[primitive|0TXNRQZY0H]]* if $c(f) = 1$, and by the theorem at each prime, $c(fg) = c(f) c(g)$; in particular a product of primitive polynomials is primitive ([[Gauss's lemma|08C1NWBNHA]]).

**Definition.** Let $K$ be a number field of degree $D$, and for each place $v$ let $|\cdot|_v$ extend the usual absolute value of $\mathbb{Q}_p$ or $\mathbb{R}$, with local degree $d_v$. For nonzero $f \in K[x_1, \dots, x_n]$, the *height* and the *Mahler height* are
$$\begin{aligned} h(f) &= \sum_v \frac{d_v}{D} \log |f|_v, \\ h_M(f) &= \sum_{v \nmid \infty} \frac{d_v}{D} \log |f|_v + \sum_{v \mid \infty} \frac{d_v}{D}\, m(\sigma_v f), \end{aligned}$$
with $|f|_v = H(\sigma_v f)$ for $v \mid \infty$, where $\sigma_v$ is the embedding of $v$.

By the product formula, $h(cf) = h(f)$ for $c \in K^\times$, so $h(f)$ is the [height](/learn/arakelov/#heights) of the coefficient vector of $f$ as a point of projective space. By Gauss's lemma and the multiplicativity of $M$, $h_M(fg) = h_M(f) + h_M(g)$. For $n = 1$ and $\deg f = d$, the two propositions above give $-d \log 2 \le h_M(f) - h(f) \le \frac12 \log(d+1)$.

For heights of varieties one uses the Mahler measure of a Chow form, often over spheres in place of tori. Let $\sigma$ be the unitarily invariant probability measure on the unit sphere $S^{2n-1} \subset \mathbb{C}^n$, and put $m_S(f) = \int_{S^{2n-1}} \log|f| \, d\sigma$ (and products of spheres for multihomogeneous $f$).

**Proposition (spherical Mahler measure of a linear form).** For $u \in \mathbb{C}^n \setminus \{0\}$ and $\ell_u(z) = \sum_j u_j z_j$,
$$m_S(\ell_u) = \log |u| - \tfrac12 H_{n-1}, \qquad H_{n-1} = 1 + \tfrac12 + \dots + \tfrac{1}{n-1}.$$

*Proof.* By unitary invariance we may take $u = |u| e_1$, so $m_S(\ell_u) = \log|u| + \int \log |z_1| \, d\sigma$. For $z$ uniform on the sphere, $(|z_1|^2, \dots, |z_n|^2)$ is uniform on the simplex, so $|z_1|^2$ has density $(n-1)(1-t)^{n-2}$ on $[0, 1]$. With $s = 1 - t$,
$$\begin{aligned} \int_0^1 \log t \cdot (n-1)(1-t)^{n-2} \, dt &= -(n-1) \sum_{k \ge 1} \frac{1}{k(k + n - 1)} \\ &= -H_{n-1}. \end{aligned}$$
Halve this for $\log |z_1|$. $\square$

The constant $\delta H_{n-1}/2$ in the formula of the development volumes for the Mahler measure of a Chow form cut by a linear form comes from this integral. The formula is an archimedean input to the heights of cycles below [the covolume bound](/step/covolume-bound-of-x-def/). J.-B. Bost, H. Gillet and C. Soulé, *Heights of projective varieties and positive Green forms*, J. Amer. Math. Soc. 7, 1994, compare the Fubini-Study height of a variety with the spherical Mahler measure of its Chow form, and P. Philippon, *Sur des hauteurs alternatives I*, Math. Ann. 289, 1991, studies these heights.

The last size of a polynomial is the Fock norm. It is the norm of the Fock model of the Weil representation in [the theta chapter](/learn/theta/#the-fock-model), where the weight is $e^{-\pi|z|^2}$ and the norms carry extra powers of $\pi$.

**Definition.** For $f = \sum_\alpha f_\alpha z^\alpha$ and $g = \sum_\alpha g_\alpha z^\alpha$ in $\mathbb{C}[z_1, \dots, z_n]$, the *Fock pairing* (or Fischer pairing) is $\langle f, g \rangle = \sum_\alpha \alpha!\, f_\alpha \overline{g_\alpha}$.

**Proposition.** (1) The monomials are orthogonal, and $\langle z^\alpha, z^\alpha \rangle = \alpha!$. (2) $\langle z_i f, g \rangle = \langle f, \partial_i g \rangle$, with $\partial_i = \partial/\partial z_i$. (3) $\langle f, g \rangle = \pi^{-n} \int_{\mathbb{C}^n} f(z) \overline{g(z)}\, e^{-|z|^2} \, dV(z)$.

*Proof.* (2) On monomials, both sides vanish unless $\beta = \alpha + e_i$, where $\langle z^{\alpha + e_i}, z^\beta \rangle = \beta!$ and $\langle z^\alpha, \beta_i z^{\beta - e_i} \rangle = \beta_i (\beta - e_i)! = \beta!$. (3) By rotation in each variable, distinct monomials are orthogonal for the integral, and in polar coordinates $\int_{\mathbb{C}} |z|^{2a} e^{-|z|^2} \, dV = \pi \int_0^\infty s^a e^{-s} \, ds = \pi\, a!$. $\square$

**Corollary.** On $\mathbb{C}[z_{ij}]$, the adjoint of the polarization operator $E_{ab}$ for the Fock pairing is $E_{ba}$. So $\mathrm{U}(r)$ acts unitarily, and distinct weight spaces and distinct isotypic components are orthogonal.

*Proof.* By (2) and its conjugate $\langle \partial_i f, g \rangle = \langle f, z_i g \rangle$, $\langle z_{aj} \partial_{bj} f, g \rangle = \langle f, z_{bj} \partial_{aj} g \rangle$. Sum over $j$. $\square$

The development volumes express leading coefficients of determinants as Fock pairings and bound Gram determinants of integral polynomials through the monomial factorials $\alpha!$.

**Theorem (Bombieri's inequality).** For homogeneous $f, g \in \mathbb{C}[z_1, \dots, z_n]$, $\langle fg, fg \rangle \ge \langle f, f \rangle \langle g, g \rangle$. Equivalently, with the *Bombieri norm* $[f]^2 = \langle f, f \rangle / (\deg f)!$,
$$[fg] \ge \sqrt{\frac{d!\, e!}{(d+e)!}}\, [f]\, [g], \qquad d = \deg f, \ e = \deg g$$
(B. Beauzamy, E. Bombieri, P. Enflo and H. L. Montgomery, *Products of polynomials in many variables*, J. Number Theory 36, 1990).

## Notes and references

- I. G. Macdonald, *Symmetric Functions and Hall Polynomials*, 2nd ed., Oxford, 1995, Chapter I. Section 1 for partitions, strips and dominance; Section 2 for $e_k$, $h_k$, $p_k$ and Newton's identities; Section 3 for Schur functions, alternants and Jacobi-Trudi; Section 4 for the Cauchy identity and the Hall inner product; Section 5 for skew Schur functions, the tableau formula and the Pieri rules; Section 6 for Kostka numbers; Section 7 for the characters of the symmetric groups; Section 9 for the Littlewood-Richardson rule. Appendix A to Chapter I treats polynomial representations of $\mathrm{GL}_n$. This is the main reference.
- W. Fulton, *Young Tableaux*, London Math. Soc. Student Texts 35, Cambridge, 1997, Part I (Chapters 1 to 6): bumping and sliding, the Robinson-Schensted-Knuth correspondence, the Littlewood-Richardson rule and symmetric polynomials, all from tableaux. Chapter 8 for representations of $\mathrm{GL}_n$ and the quadratic relations among minors. The best first reading on tableaux.
- R. P. Stanley, *Enumerative Combinatorics*, Vol. 2, Cambridge, 1999, Chapter 7, with Appendix 1 by S. Fomin: symmetric functions, the hook content formula (Section 7.21), RSK and the Littlewood-Richardson rule.
- W. Fulton and J. Harris, *Representation Theory: A First Course*, Lecture 6 (Weyl's construction and Schur functors) and Appendix A (symmetric functions), for the link with characters of $\mathrm{GL}_n$.
- B. E. Sagan, *The Symmetric Group*, 2nd ed., Springer, 2001, for standard tableaux, the hook length formula and the characters of $S_n$.
- R. L. Graham, D. E. Knuth and O. Patashnik, *Concrete Mathematics*, Chapter 5, for binomial identities. A. Granville, *Arithmetic properties of binomial coefficients I*, CMS Conf. Proc. 20, 1997, for Kummer, Lucas and their extensions. P.-J. Cahen and J.-L. Chabert, *Integer-Valued Polynomials*, Math. Surveys Monogr. 48, AMS, 1997, Chapter I, for Pólya's theorem.
- J. E. Humphreys, *Introduction to Lie Algebras and Representation Theory*, Section 26 (Kostant's $\mathbb{Z}$-form), for divided powers; J. C. Jantzen, *Representations of Algebraic Groups*, Part II, and J. A. Green, *Polynomial Representations of $\mathrm{GL}_n$*, LNM 830, for Weyl modules over $\mathbb{Z}$ and in positive characteristic.
- R. A. Horn and C. R. Johnson, *Matrix Analysis*, Chapter 0, for Cauchy-Binet, Laplace and Jacobi; N. Jacobson, *Basic Algebra I*, Chapter 3, for the Smith normal form; C. Krattenthaler, *Advanced determinant calculus*, Sém. Lothar. Combin. 42, 1999, for Vandermonde, confluent and Cauchy determinants and many more; I. Gessel and G. Viennot, Adv. Math. 58, 1985, for nonintersecting paths.
- C. De Concini, D. Eisenbud and C. Procesi, Invent. Math. 56, 1980, and W. Bruns and U. Vetter, *Determinantal Rings*, LNM 1327, 1988, for bideterminants and the straightening law. R. Howe, Trans. Amer. Math. Soc. 313, 1989, for the duality of $\mathrm{GL}_m$ and $\mathrm{GL}_n$ and its relatives.
- E. Bombieri and W. Gubler, *Heights in Diophantine Geometry*, Cambridge, 2006, Chapter 1: absolute values, the product formula, heights in projective space, and in Section 1.6 the heights of polynomials, the Mahler measure, Gauss's lemma and Gelfond's lemma. Read it with [the Arakelov chapter](/learn/arakelov/#heights). K. Mahler, *An application of Jensen's formula to polynomials*, Mathematika 7, 1960, for the coefficient bounds.
- J.-B. Bost, H. Gillet and C. Soulé, J. Amer. Math. Soc. 7, 1994, for heights of varieties and spherical Mahler measures of Chow forms; B. Beauzamy, E. Bombieri, P. Enflo and H. L. Montgomery, J. Number Theory 36, 1990, for the Bombieri norm; V. Bargmann, *On a Hilbert space of analytic functions and an associated integral transform*, Comm. Pure Appl. Math. 14, 1961, for the Fock space.
