---
title: What is checked
description: The trust report. Each question tells what this site checked about the Lean proof, how, and what the check found.
lead: A Lean proof is as good as its statement, its axioms and the program that checks it. This page asks each question, tells how a person can check it, and gives the answer when the check has run.
---
## How to read the table

- **yes** means that the check ran and passed.
- **no** means that the check ran and failed.
- **open** means that the check ran and a person must decide.
- **not run** means that the check did not run yet.

The table comes from `records/trust.json` in the content repository. A row changes only when a tool writes a new result there. The text below the table tells what each question means, and what the site knows now.

## Why each question matters

Lean checks a proof with a small program, the kernel. When the kernel accepts a theorem, the theorem follows from its axioms. That is a strong guarantee, but it has four gaps. The source can be different from the release. The proof can use an axiom that is not standard, and then it proves less. A program can change the environment around the kernel. And the Lean statement can say something different from the statement that a mathematician means. Each question below closes one gap.

### Q0. Is the source the same as the release?

The author published the source as 14 parts of one archive, `lean.tar.gz`, with a SHA-256 hash for each part. The repository [tamnd/riemann-lean](https://github.com/tamnd/riemann-lean) has the same files with no change. The command `rh fetch -compare` downloads the parts, checks each hash, joins the parts, checks the hash of the archive, and compares each file with the manifest of riemann-lean. It found the same 175,190 files. The row shows yes when this result is in `records/trust.json`.

### Q1. Does the project build?

The project pins Lean `v4.33.1` and Mathlib commit `0df444a3`. The build is large: about 17.4 million lines in 175,187 files. It cannot run on the standard GitHub runners. Milestone M2 runs it first on one small library to measure the time and the memory, and then on all of it. The site does not rent a machine for the build without the approval of the owner.

### Q2. Which axioms does the proof use?

After the build, the command `#print axioms riemannHypothesis` lists each axiom that the proof depends on. The good answer is the three standard axioms of Mathlib: `propext`, `Classical.choice` and `Quot.sound`. Any other axiom, and `sorryAx` in particular, is a failure. The site shows a failure on the main page.

### Q3. Does a second check accept the proof?

Meta code runs while Lean reads a file, and it can add declarations to the environment. The tool `lean4checker` loads the compiled files and checks each declaration again with the kernel, without the meta code. A second kernel that shares no code with Lean, such as `lean4lean` or `nanoda`, is stronger evidence. Milestone M2 runs `lean4checker`. The second kernel is a stretch goal.

### Q4. Do the Lean statements say what the standard statements say?

The five theorems of `Main.lean` use the definitions of Mathlib: `RiemannHypothesis`, `riemannZeta` and `DirichletCharacter.LFunction`. The definition `RiemannHypothesis` says: if $\zeta(s) = 0$, $s$ is not one of $-2, -4, -6, \dots$ and $s \neq 1$, then $\operatorname{Re}(s) = \tfrac12$. That is the standard statement. The value of `riemannZeta` at $s = 1$ is a convention, and the hypothesis $s \neq 1$ makes it harmless. A person who knows analytic number theory must read each statement and sign the review. The review names the person.

### Q5. How much of the proof is written in words?

This question is about this site, not about the Lean code. The [proof pages](/proof/) are drafts. When a person checks a step against the Lean code, its status changes to checked. When a person who works in the area agrees with it, the status changes to reviewed. The row counts the share of the spine at each status.

## What a scan of the source shows now

Some facts do not need a build. A text scan of the 175,187 files of riemann-lean at commit `9110120` gives these results. A scan reads the text only, so it is a first check and not a proof. Questions Q2 and Q3 give the exact answer after the build.

| Search | Result |
|---|---|
| declarations that start with `axiom` | none |
| the words `sorry` and `admit` | none |
| `debug.skipKernelTC` and other options that turn off kernel checks | none |
| `unsafe`, `opaque`, `@[implemented_by]` and `@[extern]` declarations | none |
| `initialize` and `builtin_initialize` | none |
| `run_cmd` | 5, in `BuildAid/D1.lean` to `D5.lean` |
| new commands and tactics with `elab` | 4, in 3 files |
| `macro` | 22 |
| `set_option allowUnsafeReducibility` | 37 |

The five `run_cmd` lines add a name space, for example `UpperTheory`, to the deny list of the library search tool. That tool only suggests lemmas to the person who writes the proof. It does not change what the kernel accepts.

The `elab` code needs more attention, so here it is in full.

- [CutCptCopy.lean](lean:Formalism/HermitianCurvature/HermitianCurvatureProofs/CutCptCopy.lean#L87) defines the command `cpt_copy_thms`. It walks the declarations below six roots, makes a copy of each one that uses a fixed list of names, and puts other names in the copy. It adds each copy with `addDecl`, so the kernel checks each copy as a new declaration. One file uses the command.
- [OwnStruct.lean](lean:Formalism/LocalToGlobal/NumberFieldFamilies/OwnStruct.lean#L53) defines the tactic `kcopy`. It builds a term field by field when the type of a proof and the type of the goal differ only in the form of a structure. Four files use it.
- [Imports.lean](lean:Formalism/LocalToGlobal/IndefiniteReal/HeckeNonvanishing/Imports.lean#L5) defines the tactic `kexactB`. It puts a term into the goal without the usual check of the type by the elaborator. 50 files use it. The kernel still checks the full declaration at the end, so a wrong term makes the file fail. The tactic moves the check from the elaborator to the kernel. It does not remove the check.

The option `allowUnsafeReducibility` lets a file change how Lean unfolds a definition during elaboration. It does not change the kernel. The options `maxHeartbeats` and `maxRecDepth` give Lean more time and more depth. They do not weaken any check.

None of this is a problem by itself. All of it is in the list that question Q3 checks again with `lean4checker` after the build.
