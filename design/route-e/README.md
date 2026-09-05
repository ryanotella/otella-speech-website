# Route E — Otella Speech + Swallow (active brand direction)

Route E is the confirmed active development direction, superseding Routes A–D.
It merges Route D's earth palette and first-name warmth with Route A's Fraunces
headline voice and plain-language service list. Built for two audiences landing
on the same homepage: families (direct bookings) and medical specialists (ENT,
gastroenterology, neurology referral pathways).

## Contents

- `palette.css` — colour tokens, typefaces, and the known crown-colour deviation
- `site.css` — full homepage stylesheet (`.E-*` classes)
- `homepage-fragment.html` — homepage markup with placeholder bird paths

## Name

**Otella Speech + Swallow** (practitioner: Laura Otella, Umina Beach)

## Key design decisions

- **Two front doors.** Directly under the hero, above everything else — the
  only place on the page where the palette flips cold (gold for families,
  chocolate/chalk for referrers). Both audiences land on one URL and self-sort
  in a second.
- **Chalk (#9DB2B2) is reserved exclusively for clinical material** — referrer
  blocks, report rules, scope statements. Warmth vs. coolness is the
  wayfinding between audiences.
- **Published "what I don't do" scope.** No instrumental assessment (no
  videofluoroscopy/FEES) — stated upfront rather than worked around. This is
  treated as the single decision most likely to earn a second referral from a
  specialist.
- **Jost typeface is confined to the logotype only** — it doesn't appear in
  body copy anywhere.
- **Swallow mark.** A swallow in flight, rust line beneath as flight path —
  a pun on the practice name a clinician gets instantly and a family never
  has to notice. The FINAL version uses a canonical, user-supplied swallow.svg
  (a traced illustration of *Hirundo neoxena*, the Welcome Swallow) rather than
  the placeholder hand-drawn paths in this fragment — see note in
  `homepage-fragment.html`.

## Known gaps / follow-ups

- Final `swallow.svg` artwork is not yet committed here — needs to be added
  manually (was a direct file upload in the source design conversation).
- Derived variants needed from that asset once added: single-colour chocolate
  silhouette (16px/24px, stamps, embroidery) and a dark-background variant
  with its own light disc rather than an inverted mark.
- Crown colour in the canonical asset (#11323B) sits outside the palette —
  documented in `palette.css`, unresolved pending a decision.
- Business card and letterhead full markup were built in the source
  conversation but aren't yet extracted into this folder.
- Two open clinical/business questions from the original design review:
  whether post-op voice work will actually be accepted without a laryngeal
  view on file (site currently commits to requiring one), and which
  secure-messaging vendor (HealthLink or otherwise) local ENT/gastro rooms
  actually use — that string appears on the card, letterhead and footer.
