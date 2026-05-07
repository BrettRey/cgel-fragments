# CGEL Fragments

A growing set of formal fragments describing constructions of *The Cambridge
Grammar of the English Language* (Huddleston & Pullum 2002) in the
model-theoretic idiom of logic on trees, in the style of Pullum's
Edinburgh "Advanced Topics in Syntax" handouts.

## Layout

```
CGEL_fragments/
├── shared/
│   ├── preamble.tex       Common LaTeX preamble (handout style)
│   └── macros.tex         Logic-on-trees notation: ⊲, ⊲*, Head, Comp, Mod, …
├── fragments/
│   └── 00-template.tex    Template fragment; copy to start a new one
├── docs/
│   └── index.html         GitHub-Pages site listing fragments
├── pdfs/                  Built PDFs (gitignored)
├── Makefile               Build system
├── CLAUDE.md              Project instructions for Claude
├── STATUS.md              Current state
└── DECISIONS.md           Decisions log
```

## Build

```bash
make                 # build all fragments
make 00-template     # build a single fragment
make site            # copy built PDFs into docs/fragments/ for the site
make clean           # remove LaTeX intermediates
```

XeLaTeX is required (Charis SIL via the portfolio house style).

## Adding a new fragment

```bash
cp fragments/00-template.tex fragments/01-fused-determiner-heads.tex
# edit \fragmentnumber, \fragmenttitle, \fragmentdate, body
make 01-fused-determiner-heads
```

Then add a list entry to `docs/index.html`.

## Style

Each fragment follows roughly the shape: **Phenomenon → Vocabulary →
Specification → Worked instance → Open questions**. Keep them short
(2–4 pages); link out for longer treatments.

## License

CC BY 4.0 unless a fragment says otherwise.
