# Decisions Log

Append-only record of project decisions. Format: `YYYY-MM-DD — Decision. Reason.`

---

2026-05-07 — Project created in tire-kicking mode. Suggested by Li Xiang (Victor) in email of 2026-05-07: "I think we can describe all the phenomena touched upon in CGEL by using second-order logic theories. And that would be a much bigger project than the CGELBank." Brett asked whether Victor planned to undertake it; Victor replied that, apart from Pullum's teaching materials, no literature exists on a CGEL-informed model-theoretic skeleton, and that the question is feasibility under limited resources. Sample: Pullum's Edinburgh handout 3 (2007–2008) on unbounded dependencies via FOL on trees.

2026-05-07 — Project shape: a set of formal fragments along the lines of Pullum's handout, distributed as a "living website" (option C from the brainstorming session). Each fragment is 2–4 pages, self-contained, and follows: Phenomenon → Vocabulary → Specification → Worked instance → Open questions. Reason: matches Pullum-handout idiom Brett pointed at; lets the project grow incrementally without committing to a book.

2026-05-07 — Notation conventions: `⊲` for immediate dominance, `⊲*` for dominance, `≺` for precedence; CGEL-style function relations (`Head`, `Comp`, `Mod`, `Adjunct`, `Subj`, `Mark`); category predicates as unary (`NP(x)`, `VP(x)`, `Phrasal(x)`, `Lex(x)`). Reason: matches Pullum's handout and the formal-grammar tradition (Rogers 1998, GPSG); avoids the GPSG SLASH-feature-passing in favour of set-quantified properties.

2026-05-07 — Authorship undecided. Brett may take this on solo, with Victor as the originator credited, or as a Brett+Victor collaboration. Reason: Victor flagged "limited resources"; Brett's "kicking the tires" stance leaves authorship open until feasibility is clearer.

2026-05-07 — First three pilot fragments drafted: fused determiner-heads, independent relative *whose*, and Across-the-Board extraction. Reason: they test three different pressure points in the logic-on-trees idiom: local category/function configuration, bridge-linked unbounded dependency plus discourse licensing, and the coordination residue that Pullum explicitly flags as hard for a SLASH-free treatment.

2026-05-07 — Public GitHub repo and Pages site created at `BrettRey/cgel-fragments` and `https://brettrey.github.io/cgel-fragments/`. Reason: Pages can serve the handout PDFs directly from `docs/fragments/`, making the living-fragment format immediately testable.

2026-05-07 — Fragment 1 terminology corrected from determinative-category framing to fused determiner-heads. Reason: *determiner* is a function, not the category *determinative*; the syntactic filler is usually a DP and may also be a genitive NP, so the fragment must describe the fused function rather than implying a bare determinative in fused-head function.

2026-05-07 — Field-separation hygiene adopted across the fragments. Reason: syntactic tree predicates, semantic predicates, discourse conditions, and interface bridges must be kept explicit; a semanticist can use syntactic categories and a syntactician can use semantic categories, but bridge principles need warrants rather than silent slippage.

2026-05-07 — Fragment 3 coordination terminology corrected to CGEL terms. Reason: syntax has coordinations as a category, coordinates as functions, and coordinators as a category in Marker function; the marker is a dependent inside the final Coordinate, not a semantic "conjunct" or a direct dependent of the coordination as a whole.
