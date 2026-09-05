# Route E: Otella Speech + Swallow (active brand direction)

Route E is the confirmed active development direction, superseding Routes A–D.
It merges Route D's earth palette and first-name warmth with Route A's Fraunces
headline voice and plain-language service list. Built for two audiences landing
on the same homepage: families (direct bookings) and medical specialists (ENT,
gastroenterology, neurology referral pathways).

## Contents

- `palette.css`: colour tokens, typefaces, and the known crown-colour deviation
- `site.css`: full homepage stylesheet (`.E-*` classes)
- `homepage-fragment.html`: homepage markup with placeholder bird paths
- `swallow.svg`: canonical mark artwork (traced illustration, source of truth)
- `swallow-silhouette.svg`: derived single-colour ink silhouette (16–24px/stamp/embroidery use)
- `swallow-on-dark.svg`: derived light-disc-on-dark-background variant (not colour-inverted)
- `business-card.html` / `business-card-spec.md`: 85×55mm card, one front + two backs
- `letterhead.html` / `letterhead-spec.md`: A4 clinical letterhead (full assessment-letter variant only, see gaps below)
- `workbook-template.html` / `workbook-spec.md`: A4 home-practice worksheet, target output is a Word `.dotx`

## Name

**Otella Speech + Swallow** (practitioner: Laura Otella, Umina Beach)

## Key design decisions

- **Two front doors.** Directly under the hero, above everything else: the
  only place on the page where the palette flips cold (gold for families,
  chocolate/chalk for referrers). Both audiences land on one URL and self-sort
  in a second.
- **Chalk (#9DB2B2) is reserved exclusively for clinical material**: referrer
  blocks, report rules, scope statements. Warmth vs. coolness is the
  wayfinding between audiences.
- **Published "what I don't do" scope.** No instrumental assessment (no
  videofluoroscopy/FEES), stated upfront rather than worked around. This is
  treated as the single decision most likely to earn a second referral from a
  specialist.
- **The logotype wordmark is set in Fraunces**, confirmed by the practice.
  It's the same face used for headlines. Jost has no confirmed role anywhere
  in the design system (an earlier drafting pass used it for the logotype;
  see "Resolved" note below).
- **Swallow mark.** A swallow in flight, rust line beneath as flight path:
  a pun on the practice name a clinician gets instantly and a family never
  has to notice. The FINAL version uses a canonical, user-supplied swallow.svg
  (a traced illustration of *Hirundo neoxena*, the Welcome Swallow) rather than
  the placeholder hand-drawn paths in this fragment (see note in
  `homepage-fragment.html`).

## Known gaps / follow-ups

- ~~Final `swallow.svg` artwork~~: done, committed. Derived
  `swallow-silhouette.svg` and `swallow-on-dark.svg` also now produced from
  it (see Contents above). Crown colour (`#11323B`) is preserved unmodified
  in both. This is a documented deviation, not a fix.
- ~~Business card and letterhead full markup~~: extracted (see Contents).
  Workbook/reference sheet also extracted, beyond the original ask.
- **New gap found during extraction: letterhead session-note variant was
  never built.** `DESIGN-LANGUAGE-GUIDE.md` §11 describes two letterhead
  templates sharing one shell (full assessment letter + a shorter session
  note). Only the full assessment letter exists anywhere in the source
  material; the session note is prose-only and still needs to be designed.
- **New gap found: three workbook sibling variants are prose-only.** The
  source names "Reference," "Carer instructions," and "Session summary" as
  variants of the same worksheet shell, but only the home-practice worksheet
  was ever drawn as markup. Not reproduced in `workbook-template.html`.
- **Resolved: logotype typeface is Fraunces, not Jost.** Confirmed by the
  practice. The guide previously said Jost; corrected in
  `DESIGN-LANGUAGE-GUIDE.md` §5/§6/§12 and `palette.css`. Jost only ever
  appeared in `homepage-fragment.html`'s pre-canonical nav lockup, which
  has been corrected to Fraunces to match. Jost has no confirmed role in
  the design system.
- **Resolved: `0477 022 828` is the authoritative phone number.** Confirmed
  by the practice. It matches the canonical source throughout and
  `src/data/contact.js` in the live site. `homepage-fragment.html` was the
  only outlier (a stale `0400 000 000` placeholder from before the
  canonical asset existed) and has been updated to match. Business card
  address is still missing the `NSW 2257` suffix used elsewhere on the
  site: worth a quick fix.
- Crown colour in the canonical asset (#11323B) sits outside the palette:
  documented in `palette.css`, unresolved pending a decision.
- Two open clinical/business questions from the original design review:
  whether post-op voice work will actually be accepted without a laryngeal
  view on file (site currently commits to requiring one), and which
  secure-messaging vendor (HealthLink or otherwise) local ENT/gastro rooms
  actually use. That string appears on the card, letterhead and footer.
- Print production defaults (bleed/safe margin) in `business-card-spec.md`
  are this project's proposed values, not confirmed with an actual print
  shop.
- `design/media/` now has a README documenting its one asset (an
  AI-generated layout-reference image, not final photography/copy).
