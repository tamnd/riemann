---
title: What is checked
description: The trust report. Each question tells what this site checked about the Lean proof, and the answer.
lead: A Lean proof is as good as its statement, its axioms and the program that checks it. This page asks each question, and gives the answer when the check has run.
---
## How to read the table

- **yes** means that the check ran and passed.
- **no** means that the check ran and failed.
- **open** means that the check ran and a person must decide.
- **not run** means that the check did not run yet.

Question Q0 has a tool now: `rh fetch -compare` reproduced the hash of the archive and found the same 175,190 files as riemann-lean. The table changes to yes when the result is in `records/trust.json`. Questions Q1 to Q3 need a build of the full project, and milestone M2 does them. Question Q4 needs a person who reads each Lean statement against the standard statement.
