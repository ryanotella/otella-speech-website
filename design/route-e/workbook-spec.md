# Workbook / reference sheets: spec

Extracted from `design/otella-speech-swallow-identity.html`, section
"Workbook and reference sheets — A4 Word template" (source lines ~935–1130).
Rendered reference: `workbook-template.html` in this folder.

## What it is

A one-page A4 handout shell, shown in the source as a single fully-drawn
example: a **home-practice worksheet** for a speech-sound target ("Saying
'ss' at the start of words"). It is a deliberately cut-down sibling of the
letterhead (§11 of DESIGN-LANGUAGE-GUIDE.md): same visual system (mark,
gold practice box, chalk clinical rule, hand-signed tone), but with the full
letterhead lockup and address block removed, so the header collapses to a
14mm band and buys back page space for content.

### Sections present in the drawn example, top to bottom
1. **Header band**: small roundel mark + stacked wordmark (9pt), and a
   topic pill on the right (`HOME PRACTICE`) naming which series the sheet
   belongs to. No address, no letterhead lockup.
2. **Title block**: Fraunces title naming the specific target, a meta line
   with blank fields (`For —— · Week of —— · Sheet 1 of 4`), and an italic
   one-line standfirst giving the practice dose ("Five minutes, twice a
   day...").
3. **"How to do it"**: a numbered list (rust numerals) of steps, shown as
   grey placeholder line-fills rather than real copy.
4. **"Two things to try this week"**: a gold, chocolate-bordered practice
   box, capped at two items by the template.
5. **"Stop and ring me if"**: a chalk-left-rule clinical callout (chalk is
   the clinical/safety accent per the palette's warm/cool rule).
6. **Tick grid**: a 7-column (Mon–Sun) × 2-week table for the family to
   mark off each practice session. This is called out in the source as the
   feature that makes it a *workbook* rather than an information sheet, and
   the only reliable way to know whether home practice actually happened.
7. **Footer**: practitioner name, phone, domain, and a page-count field
   ("Page 1 of 2").

### Described but not drawn in the source (sibling variants)
The source's caption states the same shell is reused for three further
variants by swapping the pill and the body furniture. These exist only as
prose in the source file, not as full markup, and are **not** reproduced in
`workbook-template.html`:
- **Reference**: no tick grid, longer body copy (e.g. a plain-English
  explanation of aphasia).
- **Carer instructions**: chalk rule promoted to the top, for
  mealtime/diet-level guidance in residential care.
- **Session summary**: what the letterhead's short template already does.

## Target output format

**End artifact is a Microsoft Word template (.dotx), not a webpage.** The
source is explicit about this: "Built as a .dotx with real named Word
styles, not direct formatting — otherwise the numbering, the tables and any
later table of contents come apart the first time someone edits it." A
solo clinician (Laura) needs to open this in Word, fill in the title/meta/
body text per session, and print or email it to a family, so the deliverable
is a Word template with named paragraph styles, not a document that only
looks right in one export.

Page setup called out in the source:
- Margins: 18mm left/right, 12mm top to the header band, 16mm foot.
- Header band fixed at 14mm; nothing else lives in it.
- Checked in greyscale at 90% ("has to survive a photocopier"). Colour
  never carries meaning alone (the gold box also has a rule + heading, the
  chalk note also has a text label), so it still reads correctly if printed
  or faxed in black and white.
- One accent colour per sheet maximum: gold for "the thing to do," chalk
  for "the thing to watch." Never both in the same block, never a third
  colour.
- Practice box hard-capped at two items "by the template, not by
  discipline": a sheet needing more becomes two sheets.

### Named Word styles (from the source's spec table)

| Style name | Typeface | Size / leading | Colour | Spacing |
|---|---|---|---|---|
| Title | Fraunces Semibold | 20 pt / 22 pt | Chocolate `#3E2A1C` | 0 before, 4 pt after |
| Meta line | Nunito Sans Semibold | 8 pt / 13 pt | Olive `#6E7B45` | 0 before, 10 pt after |
| Standfirst | Fraunces Regular Italic | 10 pt / 15 pt | Chocolate | 0 before, 12 pt after |
| Section label | Nunito Sans ExtraBold, caps | 7.5 pt, +130 tracking | Olive | 14 pt before, 6 pt after |
| Body | Nunito Sans Regular | 10.5 pt / 15 pt | Chocolate | 0 before, 6 pt after |
| Numbered step | Fraunces Semibold (numeral only) | 12 pt | Rust `#C0551E` | hanging indent 8 mm |
| Practice box | Fraunces Semibold + Nunito Sans | 10 pt heading, 10 pt body | On gold `#DFA22C`, 1 pt chocolate rule | 12 pt before/after |
| Clinical note | Nunito Sans Regular | 10 pt / 14 pt | Chocolate, 3 pt chalk `#9DB2B2` left rule | 10 pt before/after |
| Table header | Nunito Sans Bold, caps | 7.5 pt | Chocolate on wheat `#F1E4CB` | 0.75 pt chocolate grid |
| Footer | Nunito Sans Semibold | 7 pt | Chocolate at 75% | 0.75 pt rule above |

"Named styles only. No direct formatting anywhere in the file. It is the
difference between a template and a document someone once liked" (source
quote; preserve verbatim as an implementation rule).

## Open question: font substitution in MS Word (unconfirmed, needs a decision)

Fraunces and Nunito Sans are both web fonts (served via Google Fonts in
the source HTML). Neither is a standard MS Office font, and there is no
reason to assume either is installed on a solo clinician's work laptop or
a shared clinic PC. (Jost, previously listed here as a third typeface
needing substitution, has no confirmed role in the design system. The
header-band wordmark is Fraunces, per DESIGN-LANGUAGE-GUIDE.md §5, so it's
covered by the Fraunces substitution below and doesn't need its own.) The
source file itself flags this exact risk for this artifact ("Fonts will
not be on the client's machine") and proposes one substitution, but does
not resolve which approach (embed vs. substitute) to actually take. Treat
the below as a **starting point, not a settled answer**:

- **Fraunces (serif display: title, standfirst, numbered-step numerals)**:
  source suggests **Georgia** as the substitute (already the CSS fallback
  used everywhere else in the design system, per DESIGN-LANGUAGE-GUIDE.md
  §5). A second reasonable option, closer to Fraunces' higher-contrast/
  quirky serif character, would be **Cambria** (ships with Word by
  default) or **Constantia**. Unconfirmed which is preferred.
- **Nunito Sans (body, meta line, section labels, footer)**: source
  suggests **Verdana** as the substitute. Verdana is wide/loose compared to
  Nunito Sans's rounder, tighter set and may not hold the small type sizes
  used here (7–8pt section labels) as gracefully. A second option worth
  considering: **Calibri** (Word's own default body font, narrower, and
  arguably a closer optical match to Nunito Sans's proportions than
  Verdana). Unconfirmed which is preferred.

The header-band wordmark itself (small, 9pt) could still ship as a
flattened image/EMF in the .dotx rather than editable Word text, which
would sidestep font substitution for that one element regardless of which
typeface it's set in. That option is worth considering either way.

**Recommended path, also unconfirmed:** the source itself suggests
embedding the actual web fonts in the .dotx (Word: File › Options › Save ›
Embed fonts) as the primary option, with a substitution pair set as the
fallback for machines where embedding is stripped or disabled by IT policy.
Whether to embed, substitute outright, or do both needs a decision before
this template is finalized. This document does not make that call.

## Placeholder / unresolved content flagged

- **Phone number**: footer shows `0477 022 828`, confirmed authoritative
  (matches the canonical source throughout and `src/data/contact.js` in
  the live site).
- **Domain**: `otellaspeech.com.au` used in the footer; confirm this
  matches the real registered domain (DESIGN-LANGUAGE-GUIDE.md doesn't
  otherwise fix a domain string).
- **Practitioner name**: `Laura Otella`, treated throughout the broader
  identity as settled/confirmed (not a placeholder), per
  DESIGN-LANGUAGE-GUIDE.md §1.
- **All worksheet body content is placeholder furniture, not real
  copy**: the title ("Saying 's' at the start of words"), the "For ___ /
  Week of ___ / Sheet 1 of 4" meta fields, the italic standfirst, and the
  numbered steps/practice-box/clinical-note text are all either blank
  fill-in fields (by design, meant to stay blank in the template) or grey
  line-fill placeholders standing in for body copy that was never drafted.
  None of this is real clinical content and none of it should be treated
  as final wording; it only demonstrates layout and style application.
- Page count field reads "Page 1 of 2" with no second page shown or
  described. Unclear whether the second page is a continuation of the
  same worksheet or a separate sheet; not resolved in the source.
