# CLAUDE.md

## Role

**Editor / Formal-grammar collaborator.** Deep editorial and formal work welcome
once Brett has decided to commit. While the project is in tire-kicking mode
(see STATUS.md), keep work narrow: write or audit individual fragments only on
explicit request.

## Project Overview

A growing set of formal fragments describing CGEL constructions in the
model-theoretic idiom of logic on trees (FOL, wMSO), in the style of Pullum's
Edinburgh "Advanced Topics in Syntax" handouts. Suggested by Li Xiang
(Victor); see DECISIONS.md.

The methodology: each phenomenon is a class of trees satisfying a formula
over predicates like `⊲` (immediate dominance), `⊲*` (dominance), `Head`,
`Comp`, `Mod`, `NP`, etc. SLASH-feature-passing is replaced by set-quantified
properties like *bridge-linked dominance chain containing a vacancy* (cf.
Pullum's NP-bindable definition).

## House Style

The portfolio `.house-style/` is symlinked at `.house-style/`. Standard
LaTeX house style applies: `\enquote{}`, `\term{}`, `\mention{}`, en-dash
with non-breaking space (`~--`), no em-dashes, contractions.

## Fragment Conventions

Each fragment:

1. Is **2–4 pages**, two-column where it helps.
2. Follows the shape: **Phenomenon → Vocabulary → Specification → Worked
   instance → Open questions**.
3. Sets `\fragmentnumber`, `\fragmenttitle`, `\fragmentdate` at the top.
4. Uses macros from `shared/macros.tex`. Add new predicates locally
   (in the fragment) when ad hoc, or promote them to `shared/macros.tex`
   when they recur.
5. Cites Rogers 1998, GPSG (Gazdar et al. 1985), Pullum's handouts, and
   the relevant CGEL pages.

## Source Grounding (LAW)

Verify any specific CGEL page reference, any cited tree analysis, and any
formal-grammar result. Do not guess at what wMSO can or cannot describe;
cite Rogers, Thatcher & Wright, or Doner.

## Build

```bash
make 01-fused-head      # build fragments/01-fused-head.tex into pdfs/01-fused-head.pdf
make                    # build all fragments
make site               # copy PDFs into docs/fragments/ for GitHub Pages
```

XeLaTeX required.

## Multi-Agent Dispatch (MANDATORY)

Before dispatching multiple agents, ALWAYS ask Brett:
1. Which model(s)? Claude, Codex, Gemini, Copilot.
2. Redundant outputs?

See portfolio `CLAUDE.md`.
