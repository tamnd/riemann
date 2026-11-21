---
id: rh-of-all
title: The Riemann Hypothesis from all characters
decl: rhOfAll
chapter: overview
status: drafted
drafted_by: writer@claude-opus-5-5
uses: [rh-of-every, all-chi]
concepts: [VCGF9YR36X, DNKA4WBKDS]
---
## Statement

The Riemann Hypothesis is true, in the form of [the first step](/step/riemann-hypothesis/).

## Proof

The step [the Riemann Hypothesis from EveryCharacter](/step/rh-of-every/) shows: if the statement `EveryCharacter` is true, then the Riemann Hypothesis is true. The step [allChi](/step/all-chi/) gives `EveryCharacter`. Put the second into the first.

So the Lean proof is one application, `Formalism.VW.rh_of_every allChi`. The classical part of the argument is in the first of the two steps. All of the large part is in the second.
