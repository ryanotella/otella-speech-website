# Letterhead: spec

Extracted from `design/otella-speech-swallow-identity.html`, "Letterhead —
A4" section (source lines 773–935). Rendered artifact: `letterhead.html` in
this folder.

## Variant coverage

**Only one variant exists in the source: the full assessment letter.**
DESIGN-LANGUAGE-GUIDE.md §11 states the letterhead is "a single shell
reused for two audiences" and names two templates: a full assessment
letter and "a shorter one-page session note that drops the impression
block but keeps the gold two-item panel." The source HTML's own caption
(line 929) confirms this directly: *"Two body templates share this shell:
full assessment (shown), and a one-page session note that drops the
impression block and keeps the gold panel."* In other words, the second
template was described in the design conversation but never built as
markup. It is **not present anywhere in the source file** and has not
been fabricated here. The header block (logo + contact), the field-order block (Name
used/Pronouns/Name on record/DOB/Referred by/Date seen), and the footer
band are shell elements the session-note variant would reuse unchanged;
only the body between the fields table and the footer (impression bars +
IDDSI block + referred-onward block + gold panel + sign-off) would need to
be redesigned, dropping the impression block. **This still needs to be
designed before it can be used.**

## Dimensions

- Page: A4, 210mm × 297mm (aspect ratio 210:297).
- `letterhead.html` renders the sheet at 640px wide (aspect-ratio locked)
  as a screen-proportioned preview, not a print-accurate physical size.
  This is consistent with how the source file's `.sheet` artifact class
  displays it (max-width 520px in the working file's presentation shell). For a
  print-ready template, rebuild at true 210mm×297mm with the same
  structure and scale up the absolute font sizes below proportionally
  (they were tuned for the small preview render, not for 1:1 print).

## Layout logic

Four horizontal bands, top to bottom:

1. **Header** (wheat background, `--wheat`, 2.5px ink bottom border): logo
   lockup (swallow mark roundel + wordmark) left, practitioner/contact
   block right-aligned.
2. **Fields block** (paper background): document title ("Swallowing and
   communication assessment") followed by a 3-row, 2-column label/rule
   table. **Row order is policy, not styling** (per DESIGN-LANGUAGE-GUIDE.md
   §9 point 2): row 1 is **Name used / Pronouns**, row 2 is **Name on
   record / DOB**, row 3 is Referred by / Date seen. Name used/Pronouns
   must stay above Name on record/DOB in any reimplementation, since this
   is what appears in correspondence sent to a specialist; the legal name
   is reserved for billing only.
3. **Body** (paper background, flex-grow to fill the page): this is where
   the two-audience split happens:
   - **Top two-thirds, chalk-ruled clinical blocks** (`--chalk` left
     border, 4px) for the specialist reader: IMPRESSION (no chalk rule,
     sits directly under the fields block), then DIET AND FLUID LEVEL ·
     IDDSI, then REFERRED BACK / ONWARD, each a chalk-bordered block. These
     two chalk-ruled items (IDDSI level, referred-onward status) are
     flagged in the source caption as the safety-critical items that get
     lost in prose if not visually separated.
     - Note: in the extracted markup, chalk (`--chalk`) is used as the
       block accent border and IMPRESSION/DIET/REFERRED labels use ink or
       olive text. This is a document-structure use of chalk (clinical
       register), consistent with §3's rule that chalk is reserved for
       clinical/referrer material, not decorative use elsewhere.
   - **Gold panel, capped at two items** ("Two things to try at home this
     fortnight"): `--gold` background, 2px ink border, 16px rounded
     corners. This is the family reader's entry point; they skip straight
     to it. The cap at two items is deliberate (see DESIGN-LANGUAGE-GUIDE.md
     §7 point 5 / "How I work"; "two things, not twenty" is a recurring
     brand-wide pattern, not unique to the letterhead).
   - **Sign-off**: italic Fraunces rust-coloured line ("Any questions
     before next time, just ring me.") followed by a bold Fraunces
     "— Laura" line, styled to read as a **handwritten-style, informal
     sign-off** even though it's set in the display serif rather than an
     actual script/handwriting typeface. Retained on specialist
     correspondence deliberately: assessed as costing nothing in clinical
     credibility once the structure above it is correct, and as the main
     reason a family stays with the practice. Do not replace this with a
     formal "Kind regards, Laura Otella" treatment.
4. **Footer** (wheat background, 2.5px ink top border): credential line
   (Certified Practising Speech Pathologist · Member, Speech Pathology
   Australia) left, ABN right.

## Placeholder / unconfirmed values present in the source

All of the following are carried over unchanged from the source file and
must be confirmed with the practice before production use:

| Field | Placeholder value in source |
|---|---|
| Phone | `0477 022 828`; confirmed authoritative (matches the canonical source throughout and `src/data/contact.js` in the live site) |
| Street address | `12 West Street, Umina Beach NSW 2257` |
| Website | `otellaspeech.com.au` |
| Secure messaging | `HealthLink SW: OTELLASP`. Vendor and identifier both explicitly flagged elsewhere in the guide as unconfirmed; must match whatever value is used on the business card and footer if it changes |
| ABN | `00 000 000 000` |
| Credential line | "Certified Practising Speech Pathologist · Member, Speech Pathology Australia"; presumed accurate but not independently verified here |

## Other notes for consolidation

- The logo lockup inside the letterhead SVG sets the "OTELLA" / "SPEECH +
  SWALLOW" wordmark text in `font-family="Fraunces,Georgia,serif"`. This is
  **correct and matches the canonical source**: confirmed by the practice
  that Fraunces is the logo text. `homepage-fragment.html`'s nav lockup,
  which used Jost, was the outlier (a pre-canonical placeholder pass) and
  has been corrected to Fraunces to match. DESIGN-LANGUAGE-GUIDE.md §5/§12
  have been updated accordingly; Jost has no confirmed role in the
  design system.
- The swallow mark artwork embedded in the letterhead is the same
  multi-colour traced illustration as `swallow.svg` in this folder
  (verified path-for-path), including the `#11323B` crown colour that sits
  outside the defined palette (documented, accepted deviation; see
  `palette.css`).
