# STATUS

**Last updated:** 2026-05-07
**State:** Tire-kicking. Infrastructure scaffolded and three pilot draft fragments now exist. Project may or may not proceed, pending Brett's judgement on tractability and whether Li Xiang (Victor) wants to co-author or lead.

## What exists

- `shared/preamble.tex` — handout-style LaTeX preamble pulling in the portfolio house style.
- `shared/macros.tex` — logic-on-trees notation: `⊲` (immediate dominance), `⊲*` (dominance), `Head`, `Comp`, `Mod`, `NP`, `VP`, `Phrasal`, `Vacancy`, etc.
- `fragments/00-template.tex` — a stub fragment showing the five-section structure.
- `fragments/01-fused-determiner-heads.tex` — fused determiner-heads / category-function pilot, with determiner treated as function rather than determinative as category.
- `fragments/02-independent-relative-whose.tex` — bridge-linked dependency plus discourse-licensing pilot, separating syntactic configuration from possessive recovery.
- `fragments/03-atb-extraction.tex` — coordination stress-test pilot using CGEL coordination/coordinate/coordinator terminology.
- `Makefile` — builds individual fragments to `pdfs/`, copies to `docs/fragments/` for the site.
- `docs/index.html` — GitHub-Pages-compatible landing page that lists fragments.
- `README.md`, `CLAUDE.md`, `DECISIONS.md`.

## What does not exist yet

- A reply to Li Xiang (Victor) about scope and authorship.
- Decision on whether the GitHub Pages site later gets a custom subdomain.
- Verified CGEL page references and source apparatus for the three draft fragments.

### 2026-05-07 Session Notes

- Created the public GitHub repo and Pages site for the fragment series: `https://github.com/BrettRey/cgel-fragments` and `https://brettrey.github.io/cgel-fragments/`.
- Drafted three Pullum-handout-style pilot fragments: fused determiner-heads, independent relative *whose*, and Across-the-Board extraction.
- Corrected Fragment 1 after Brett's pushback: the title and URL now use `01-fused-determiner-heads`; the analysis no longer frames the issue as "fused-head determinatives"; `SynDeterminer` marks the syntactic determiner filler while semantic conditions are stated only through bridge principles.
- Revised Fragment 2 to keep `SynWhoseCl` separate from `LicWhoseCl`; `PossRec` is now an explicitly warranted discourse/interface bridge rather than an unlabelled syntactic condition.
- Revised Fragment 3 to replace semantic/conflated `Conjunct` and `SameRole` language with `Coordination`, `Coordinate`, `Coordinator`, `Mark`, and `ParallelGap`; the coordinator is represented as a Marker dependent inside the final Coordinate.
- Built the PDFs, copied them into `docs/fragments/`, committed and pushed all fragment/site changes, and verified the live Pages PDF for Fragment 3 contains the corrected coordination terminology.

## Next action

Brett to read the three pilot drafts and decide whether to: (a) deepen one fragment into a polished feasibility sample; (b) reply to Victor with the three-fragment pilot as a proposal; or (c) shelve.

**Blocker:** None — but no commitment yet.
