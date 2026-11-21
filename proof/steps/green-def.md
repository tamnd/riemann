---
id: green-def
title: The statement Green
decl: GlobalTheory.GLq.Green
chapter: theta-matching
status: drafted
drafted_by: writer@claude-opus-5-5
uses: []
concepts: [9AZ164C298]
routine: [GlobalTheory.GLq.Gn]
open: [GlobalTheory.GLq.IsCusp, GlobalTheory.GLq.IsCuspOf, GlobalTheory.GLq.IsPrimeLab, GlobalTheory.GLq.LabelDatum]
---
## Statement

`Green` is a definition. It is a proposition with no parameters. It says the following.

Let $g$ be a prime, let $L$ be a label datum for $g$, and let $d > 0$ be an integer. Write $G_d = \mathrm{GL}_d(\mathbb{Z}/g)$ (the Lean type `Gn g d`). Then there is a map $P \mapsto \tau_P$ from polynomials $P \in (\mathbb{Z}/g)[X]$ to functions $\tau_P : G_d \to \mathbb{C}$ with three properties.

1. For each prime label $P$ of degree $d$, $\tau_P$ is a [[cuspidal|9AZ164C298]] character attached to $L$ and $P$ (`IsCuspOf L P (τ P)`), and
$$ \tau_P(1) = \prod_{i=1}^{d-1} (g^i - 1). $$
2. The map is injective on prime labels: if $P$ and $P'$ are prime labels of degree $d$ and $\tau_P = \tau_{P'}$, then $P = P'$.
3. Each cuspidal function $\chi : G_d \to \mathbb{C}$ (`IsCusp χ`) is $\tau_P$ for some prime label $P$ of degree $d$.

## What it means

The objects in the statement are these. Let $\overline{\mathbb{F}}_g$ be the algebraic closure of $\mathbb{Z}/g$ (the Lean type `Fbar g`).

- `LabelDatum g` is a structure with five fields. `teich` is a multiplicative map $\overline{\mathbb{F}}_g \to \mathbb{C}$. `teich_inj` says that it is injective on nonzero elements. `gen` gives an element $\gamma_d \in \overline{\mathbb{F}}_g$ for each $d$. `gen_order` says that $\gamma_d$ has order $g^d - 1$ for $d > 0$. `gen_norm` says $\gamma_{de}^{(g^{de}-1)/(g^d-1)} = \gamma_d$ for $d, e > 0$. So $\gamma_d$ generates $\mathbb{F}_{g^d}^\times$, and the generators are compatible under the norm maps.
- `IsPrimeLab d P` says: $P$ is monic, $P$ is irreducible, $P(0) \neq 0$, and $\deg P = d$. The code calls such a $P$ a prime label.
- `IsCusp χ` for $\chi : G_d \to \mathbb{C}$ says three things. First, $d > 0$. Second, $\chi$ is the character of a simple finite-dimensional complex representation of $G_d$. Third, for each $a$ with $0 < a < d$, the value `res a (d - a) χ 1 1` is $0$. By definition, this value is $g^{-a(d-a)} \sum_x \chi(x)$, where $x$ runs over the matrices of $G_d$ of block form $\begin{pmatrix} 1 & * \\ 0 & 1 \end{pmatrix}$ with blocks of sizes $a$ and $d - a$. So the mean of $\chi$ over the unipotent radical of each standard maximal parabolic subgroup is $0$.
- `IsCuspOf L P χ` says three things: `IsPrimeLab d P`, `IsCusp χ`, and a value formula. For each root $x \in \overline{\mathbb{F}}_g$ of $P$, each $y \in G_d$ whose characteristic polynomial $f_y$ is irreducible, and each root $z \in \overline{\mathbb{F}}_g$ of $f_y$,
$$ \chi(y) = (-1)^{d-1} \sum_{i=0}^{d-1} \theta_{L,d}\bigl(x, z^{g^i}\bigr). $$
Here $\theta_{L,d}(x, z)$ (the Lean `thetaOf L d x z`) is $\mathrm{teich}(x)^n$ when $z = \gamma_d^n$ for some $n \in \mathbb{N}$, with $n$ chosen, and $0$ when no such $n$ exists.

So $\theta_{L,d}(x, \cdot)$ is the character of $\mathbb{F}_{g^d}^\times$ that sends the generator $\gamma_d$ to $\mathrm{teich}(x)$. The statement says: the cuspidal irreducible characters of $\mathrm{GL}_d(\mathbb{F}_g)$ are in bijection with the prime labels of degree $d$, each has degree $\prod_{i=1}^{d-1}(g^i - 1)$, and on the elliptic regular elements its value is $(-1)^{d-1}$ times the sum of the Frobenius conjugates of the character given by a root of the label. By its name, this is a form of Green's parametrization of the cuspidal characters of finite general linear groups.

## Notes

The map $\tau$ is defined on all polynomials, but the three properties say something only about prime labels. The values $\tau_P$ for other $P$ are free.

The value formula in `IsCuspOf` is asked for every root $x$ of $P$, not for one chosen root. Different roots of $P$ are Frobenius conjugates $x^{g^j}$, so the sums for different $x$ must agree. The proof [Green from regular characters](/step/green-of-regular/) checks this with the lemma `thetaOf_pow`.

The code gets `Green` from the published statement `GreenRegularCharacters`, a field of `UnitaryGroupThirdPlaceHypotheses`, in [Green from regular characters](/step/green-of-regular/). The step [ZeroFreeAll from Green, VWin and HypsAlt](/step/zero-free-all-of-green-v-win/) uses it.
