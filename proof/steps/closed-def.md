---
id: closed-def
title: The predicate Closed on family classes
decl: Formalism.MainNotions.Closed
chapter: unitary-hypotheses
status: drafted
drafted_by: writer@claude-opus-5-5
uses: []
concepts: []
routine: []
open: [Formalism.MainNotions.FamClass, Formalism.MainNotions.FamP, Formalism.MainNotions.TransportedAlt]
---
## Statement

`Closed` is a definition. It takes two parameters and returns a proposition.

1. $\mathcal{C}$ is a family class (the type `FamClass`). A `FamClass` is a predicate on families: for each real $\varepsilon$ and each family $F$ of the type `FamP ε`, it gives a proposition $\mathcal{C}(F)$.
2. $P$ is a predicate on a family and one real number: for each real $\varepsilon$, each family $F$ of the type `FamP ε` and each real $C_H$, it gives a proposition $P(F, C_H)$.

A family `FamP ε` is a structure with a real parameter $\varepsilon$. It has a threshold $x_1 > 1$, an index type $I_x$ for each real $x$, a datum $D(x,i)$ of the type `D7` and size data $L(x,i)$ for each $x$ and each $i \in I_x$, and many named real constants. The size data have the scale parameter $\varepsilon$ (the field `L_eps`). The constants of $F$ are put in four lists: `cPre`, `cOut`, `cMid CH` (which contains $C_H$ as its first entry) and `cLast`.

A threshold record $K$ of the type `TransportedAlt` has four parts: a real number `K.pre` and three functions `K.t`, `K.mid`, `K.last` from lists of reals to reals. The statement `Fm.Large K CH` is the conjunction of four parts:

- each entry $c$ of `Fm.cPre` satisfies $K.\mathrm{pre} \le c$,
- `True` (the part `K.t` is not read),
- each entry $c$ of `Fm.cMid CH` satisfies $K.\mathrm{mid}(\mathrm{cOut}) \le c$,
- each entry $c$ of `Fm.cLast` satisfies $K.\mathrm{last}(\mathrm{cOut} \mathbin{+\!\!+} \mathrm{cMid}\ C_H) \le c$.

So the thresholds for the middle and last constants can depend on the constants in `cOut` and on earlier lists.

Then `Closed 𝒞 P` is the proposition: there is $\varepsilon_1 > 0$ such that for each $\varepsilon$ with $0 < \varepsilon \le \varepsilon_1$ there is a threshold record $K$ such that for each family $F$ of the type `FamP ε` and each real $C_H$, if $\mathcal{C}(F)$ holds and `F.Large K CH` holds, then $P(F, C_H)$ holds. In symbols:

$$
\exists \varepsilon_1 > 0,\ \forall \varepsilon \in (0, \varepsilon_1],\ \exists K,\ \forall F : \mathrm{FamP}\ \varepsilon,\ \forall C_H \in \mathbb{R},\ \mathcal{C}(F) \wedge \mathrm{Large}(F, K, C_H) \Rightarrow P(F, C_H).
$$

In words: $P$ holds for all small $\varepsilon$, for each family in the class whose constants are large enough. This is the "closed" of "closed bound" in the theorem names of the [unitary hypotheses chapter](/proof/unitary-hypotheses/).

## Proof

There is no proof. This is a definition. The text only combines the existential and universal quantifiers above.

## Notes

The order of the quantifiers matters. The threshold record $K$ may depend on $\varepsilon$, but not on the family $F$ or on $C_H$. The bound $\varepsilon_1$ does not depend on anything.

The second part of `FamP.Large` is `True`, so the function `K.t` of a threshold record plays no role in `Closed`.

The same file proves `Closed.and` (two closed statements on one class give a closed conjunction, with $\min(\varepsilon_1, \varepsilon_1')$ and the pointwise maximum of the two threshold records) and `Closed.imp` (a closed statement implies a closed statement with a weaker predicate).

The [unitary hypotheses chapter](/proof/unitary-hypotheses/) uses `Closed` in many fields of the record `HypsAlt`, in the predicate `S0.NL`, in `CovolumeBoundOfX` and in the closed bound hypothesis of [HypsAlt is nonempty from the closed bound](/step/nonempty-hyps/).
