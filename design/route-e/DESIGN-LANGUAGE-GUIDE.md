# Otella Speech + Swallow — Design Language Guide

Status: **Route E is the confirmed, final brand direction.** Routes A–D were
exploratory and are superseded. This document is the single source of truth
for implementing the production site. It is written so a model or developer
with no access to the original design chat can build the Astro site from
scratch and match every decision that was made and why.

Companion files in this folder:
- `palette.css` — CSS custom properties (colour + type tokens)
- `site.css` — full homepage stylesheet (`.E-*` classes), reusable as-is or as an Astro global stylesheet
- `homepage-fragment.html` — homepage markup reference (placeholder bird paths — superseded by `swallow.svg`, see below)
- `swallow.svg` — canonical mark artwork (added by the practice owner — treat as source of truth over any inline SVG paths elsewhere in this folder)

---

## 1. Brand identity

**Name:** Otella Speech + Swallow
**Practitioner:** Laura Otella, Certified Practising Speech Pathologist, Speech Pathology Australia member
**Location:** Umina Beach, Central Coast NSW, on Darkinjung land
**Practice model:** solo practitioner, mixed paediatric and adult caseload

**The one-sentence brief:** a website that has to earn trust with two
completely different audiences on the same URL — parents booking directly,
and medical specialists (ENT, gastroenterology, neurology) deciding whether
to send a referral — without either being made to read the other's copy.

### How the name was arrived at (context, not to be re-litigated)
- "Speech pathology" was deliberately avoided in the name — it reads as
  paediatric/NDIS in this market, undercutting the adult specialist
  positioning.
- "Wellness" was rejected in favour of harder clinical register; "Health"
  and "Clinic" tested better with referrers.
- "Swallow" was chosen over generic descriptors because it (a) signals the
  ENT/gastro/neuro referral pathway explicitly, (b) reads plainly to a
  parent whose toddler is gagging on solids, and (c) permits a literal bird
  pun in the mark that a clinician gets instantly and a family never has to
  notice.
- Final form is **"Otella Speech + Swallow"** — not "Speech Pathology," not
  "Speech and Swallowing" (the ampersand form was used briefly mid-project
  and then explicitly renamed to the shorter "+" form; do not resurrect
  "Speech and Swallowing" or "Speech & Swallowing" anywhere).

---

## 2. Design lineage (why the system looks like this)

Route E is a deliberate merge of two earlier concepts:

- **From Route D ("Speech with Laura"):** the earth/seventies-kitchen
  palette (chocolate, burnt orange, harvest gold, avocado/olive, wheat),
  first-name warmth, personal register.
- **From Route A ("Sound & Story"):** the Fraunces display headline voice,
  and the plain-language "what you've noticed" framing for services (naming
  problems the way a parent describes them on the phone, not the way a
  textbook does).

**Jost is confined to the logotype only.** It never appears in body copy,
navigation, or any prose — it's a geometric/Futura-like display face that
was "earning its place" specifically in the wordmark's seventies register,
and using it more broadly would dilute that.

**One palette addition over Route D:** chalk (`#9DB2B2`), carried over from
Route A's cooler accent. This is not a decorative colour — see §3.

---

## 3. The core design law: warm vs. cool = family vs. clinician

This is the single most load-bearing rule in the entire system and must be
preserved in every new component:

> **Chalk (`#9DB2B2`) is the only cool colour anywhere in the system, and it
> is reserved exclusively for clinical/referrer-facing material** — referrer
> sections, scope/limits statements, report rule lines, the "For referrers"
> button. Everything else in the palette is warm (chocolate, rust, gold,
> olive, wheat, paper).

Warmth vs. coolness *is* the wayfinding mechanism between the two
audiences. A referring GP or specialist should be able to tell, from colour
alone and within a second, which parts of any page or document were written
for them. Do not introduce a second cool colour anywhere (see the crown
colour caveat in §5) and do not use chalk decoratively in family-facing
content.

The homepage enacts this literally: directly below the hero, above
everything else, sits a **two-column "doors" section** — gold background for
the family door, chocolate background with chalk headline text for the
clinician door. This is the only place on the page where the palette
flips cold, and it's placed first so both audiences self-sort within a
second of landing, without either reading the other's copy.

---

## 4. Colour palette

Defined as CSS custom properties in `palette.css` under `.kE` (the route-E
namespace class — keep this class or rename consistently, but preserve the
token names):

| Token | Hex | Name | Usage |
|---|---|---|---|
| `--ink` | `#3E2A1C` | Chocolate | Primary text, dark backgrounds, mark outline |
| `--rust` | `#C0551E` | Burnt orange | Primary CTA buttons, accent lines, wordmark subline |
| `--gold` | `#DFA22C` | Harvest gold | Family-facing accents, secondary CTA, family door background |
| `--olive` | `#6E7B45` | Olive | Tertiary accent, "who refers this" tags, financial/help-paying panel |
| `--chalk` | `#9DB2B2` | Chalk | **Clinical-only.** See §3. Never used for family-facing content |
| `--wheat` | `#F1E4CB` | Wheat | Hero/section backgrounds, card fronts |
| `--paper` | `#FCF6E9` | Paper | Base background, reversed text on dark |

All colours are warm except chalk. Do not add new cool colours to the
palette without deliberately deciding what audience/meaning they'd carry —
the system currently encodes exactly one bit of meaning (warm/cool) and
that's intentional.

---

## 5. Typography

| Role | Typeface | Notes |
|---|---|---|
| Display / headlines | **Fraunces** (serif) | `var(--disp)`, fallback Georgia. Used for all `h1`/`h2`/`h3` in prose sections. Negative letter-spacing (`-.02em` to `-.035em`) at display sizes. |
| Body | **Nunito Sans** (sans) | `var(--body)`, fallback system-ui. All paragraph copy, list items, table cells. |
| Logotype only | **Jost** (geometric sans, Futura-like) | ONLY inside the SVG logo lockup (`OTELLA` / `SPEECH + SWALLOW` wordmark and the roundel ring text). Never used in body copy, nav, or buttons. |

Scale reference (from the built homepage, px, desktop):
- Hero `h1`: 84px / line-height .95 / letter-spacing -.035em
- Section `h2` (`.E-h2`): 44px / line-height 1.02 / letter-spacing -.03em
- Door heading `h3`: 32px
- Business-card name (Fraunces): 27px
- Body/lead paragraph (`.E-sub`): 18.5px, `rgba(62,42,28,.78)` (ink at 78% opacity — this is the standard secondary-text treatment throughout, not a separate colour token)
- Small print/fine (footer legal): 13.5px

---

## 6. The mark (logo)

### Concept
A swallow in flight, with a rust-coloured line beneath it representing its
flight path, set inside a roundel. It functions as a direct visual pun on
the practice name ("swallow") — legible instantly to a clinician, invisible
as a joke to a family, which is exactly the intended asymmetry.

**Species identity matters:** the bird is specifically the **Welcome
Swallow** (*Hirundo neoxena*), chosen because it's the swallow species
actually nesting under awnings on the NSW Central Coast (Ettalong to
Patonga), and because its *common name* — "Welcome" — already says what the
practice's inclusive door decal (§9) is trying to say, without needing a
rainbow to do that work. This connection is a key piece of brand reasoning:
don't substitute a generic/stock swallow silhouette.

### Canonical artwork
`swallow.svg` in this folder (supplied directly by the practice, added
after this guide's companion CSS/HTML files were written) is the
**authoritative source artwork** — it supersedes any hand-drawn bird paths
found in `homepage-fragment.html` or elsewhere, which were placeholder
work from before the canonical asset existed.

**Known deviation:** the canonical asset's crown colour is `#11323B`, a
blue-black that sits **outside the defined palette** and is technically a
second cool colour in a system where chalk is meant to be the only one.
This is a documented, accepted trade-off (it's accurate to the real bird),
not an error to silently fix. If asked to enforce strict palette purity,
the one-line fix is swapping that crown fill to `--ink` (`#3E2A1C`) — but
don't do this without being asked, since fidelity to the reference photo
was the reason it was kept.

### Required derived variants
The canonical asset is a multi-colour (approx. 7-colour) traced
illustration. It does not reduce or invert cleanly, so two derived variants
are required and should be produced from the same source file rather than
maintained as separate drawings:

1. **Single-colour silhouette** (chocolate `#3E2A1C`, eye knocked out) — for
   16px/24px favicon and UI sizes, stamps, embroidery, and fax/monochrome
   output. Built from the asset's own outer contour so it stays visually
   true to the full-colour drawing.
2. **Dark-background variant** — for use on chocolate/ink backgrounds (e.g.
   the reversed business-card back, dark UI states), the mark sits on its
   own light disc (`#ECDFCD` in the built reference) rather than being
   colour-inverted. Inverting a painted/traced illustration produces a
   photographic negative, not a usable logo — never invert the canonical
   asset directly.

### Placements (10, all must use the same source asset)
Primary lockup, roundel badge, site nav, business card (front), letterhead
header, homepage hero, footer, dark/reversed tile, door decal (§9), and the
16px/24px small-size demonstration.

### Roundel ring text
Set in Jost, ring copy reads:
`OTELLA SPEECH + SWALLOW · UMINA ·`
Rendered via SVG `<textPath>` on a circular path. Letter-spacing was
retuned from `4.1` to `5.1` when the name shortened from "Speech &
Swallowing" to "Speech + Swallow", to keep the ring visually full — if the
ring text ever changes length again, re-tune spacing rather than leaving
gaps or crowding.

### Roundel crop, not app-icon crop
The mark is cropped to a **circle (roundel)**, not a rounded square. This
was an explicit choice: a rounded-square app-tile crop reads as software; a
circular roundel reads as a stamp — and a stamp (on doors, on a kid's
progress chart, as a car magnet) is the actual physical use case for a solo
clinical practice, more so than an app icon.

---

## 7. Layout system (homepage — the reference for all page templates)

Container: `.E-in` — `max-width:1080px`, centered, `padding:0 54px`.

Section order, top to bottom:

1. **Hero** (`.E-hero`, wheat background) — nav bar with logo + links +
   two CTA buttons (`For referrers` in chalk/cool, `Ring me` in rust), then
   a two-column grid: display `h1` + supporting copy + CTA row on the left,
   roundel mark illustration on the right.
2. **Two doors** (`.E-doors`) — see §3. Immediately below the hero, above
   all other content. Two equal columns: family (gold) / clinician
   (chocolate+chalk). Each has a heading, 2–3 sentences, a short bullet
   list of reassurances, and a CTA button matching its register.
3. **"What I work with"** (`.E-list`) — a two-column list of service items.
   Each item: small circular icon (SVG, palette-colour fill), bold
   plain-language heading ("Babies and toddlers who won't eat"), one
   sentence of clinical elaboration, and an olive pill tag naming which
   referral pathway(s) it typically arrives by (e.g. "Gastro · paeds ·
   ENT"). This dual-register naming (plain-language heading + clinical tag)
   is a deliberate pattern — reuse it for any new service line.
4. **"For referring clinicians"** (`.E-ref`, full-bleed chocolate
   background, gold heading) — a definition-style table (Accepting from /
   How to send / Turnaround / Where / Funding) followed by a distinctly
   bordered **"What I don't do"** callout. See §8 — this section is the
   single most strategically important block on the page.
5. **"How I work"** (`.E-how`) — four numbered items in a two-column grid,
   each with a circular rust number badge, a bold short heading, one
   sentence. Content is intentionally identical in tone for both audiences
   (continuity of care, free first call, small homework loads, has a clear
   discharge philosophy).
6. **Inclusion panel** (`.E-incl`) — see §9.
7. **"A bit about me"** (`.E-me`) — two-column: portrait/illustration left,
   bio prose + a wrapped row of credential pill-badges right (`.E-facts`).
8. **Fees** (`.E-money`) — two-column: pricing table (wheat background)
   beside a "help paying" bullet list (olive background, reversed text).
   Both cards share rounded-corner (`28px`), thick-bordered (`2.5px solid
   ink`) container styling.
9. **Footer** (`.E-foot`, wheat background) — three-column: logo lockup /
   address / contact details, then a fine-print line containing ABN,
   Acknowledgement of Country, and an emergency disclaimer (see §9 and
   §10 for exact required wording).

### Button system
- `.E-btn` — rust background, paper text, pill-shaped, chocolate border,
  hard drop-shadow (`3px 3px 0 var(--ink)`) — this offset-shadow "sticker"
  treatment is a recurring motif, not just a button style.
- `.E-btn.alt` — gold background, ink text. Used for secondary family CTA.
- `.E-btn.cool` — chalk background, ink text. **Always** the referrer/
  clinical CTA — never use chalk buttons for family-facing actions.

---

## 8. The single most important content decision: published clinical limits

The homepage's "For referring clinicians" section must include an explicit,
prominently bordered **"What I don't do"** statement (currently: no
instrumental swallowing assessment — if a case needs videofluoroscopy or
FEES, that's stated in the first referral letter and the patient is
returned to the referrer rather than the practice working around the gap
for weeks).

This was identified as the **load-bearing decision of the entire brand**:
publishing scope limits up front, rather than discovering/negotiating them
case by case, is what was assessed as most likely to make a specialist
refer a *second* patient. Do not soften, hide, or remove this pattern when
extending the site — if new services are added, extend the "what I don't
do" statement rather than deleting it.

Known open question flagged during design (still unresolved — surface it
if implementing content around it): whether post-operative voice work will
actually be accepted without a laryngeal view already on file — the
current published scope commits to requiring one.

Also flagged as unresolved: the referral/secure-messaging vendor. Current
copy uses a placeholder `HealthLink SW: OTELLASP` string in three places
(business card, letterhead, footer) — confirm the actual vendor local
ENT/gastro rooms use before treating this as final content, and if it
changes, update it in all three places consistently.

---

## 9. Inclusion & Country — required content, not optional theming

The practice is explicitly **queer-affirming, trans-affirming, and
Aboriginal/Torres Strait Islander-welcoming**, and this is treated as
*clinical service and paperwork structure*, not a decorative badge. This
was a deliberate strategic call: being explicit costs some self-selecting-
out from a minority of referrers/families, but was assessed as strongly net
positive for this market (NDIS-weighted caseload, and gender-affirming
voice work having little local competition on the Central Coast).

Required implementation points:

1. **Gender-affirming voice and communication training is a listed clinical
   service**, on equal footing with every other service in the "What I
   work with" section — not a separate statement or afterthought. Copy
   pattern: state plainly that no diagnosis or letter is required to book
   it (this answers the actual gatekeeping question people have before
   they'll ring).
2. **Letterhead field order is the actual policy, not decoration.** The
   clinical document header's first row must be **"Name used" / "Pronouns"**
   — above, not below, "Name on record" / "DOB" in the second row. The name
   someone goes by is what appears in correspondence to a specialist; the
   legal name is a separate field reserved for billing. This ordering
   change is described as doing more real-world work than any written
   statement would, and must be preserved in any reimplementation of
   clinical document templates.
3. **Inclusion panel on the homepage** (`.E-incl`, §7 step 6): wheat
   background, thick chocolate border, large rounded corners (34px). Plain-
   language bullet list (not a badge or icon wall), each bullet a small
   coloured circle + one clear sentence. Content pattern to preserve:
   - A line stating no diagnosis/letter/permission is needed for
     gender-affirming voice work.
   - A line welcoming Aboriginal and Torres Strait Islander families,
     offering to work alongside an Aboriginal health worker/liaison
     officer, and stating interpreters are arranged at no cost.
   - A line explicitly inviting people to bring whoever they want into the
     room (partner, support worker, a friend who does the talking).
4. **A separate "All welcome here" door/window decal artefact** — distinct
   from the primary clinical logo, not a variant of it. Rainbow palette
   *harmonised to the brand's existing warm colours* (the existing reds/
   golds already suit this, so it visually belongs with the identity
   rather than clashing against it) plus a trans-flag chevron, with the
   swallow mark overlaid and "ALL WELCOME HERE" set in the ring (replacing
   the standard "OTELLA SPEECH + SWALLOW · UMINA ·" ring text on this
   variant only). This decal is intentionally **loud** (physical door/
   window use) precisely because discreet inclusion signalling gets missed
   by the people scanning for it — the main clinical mark stays
   unmodified/neutral for correspondence and everywhere else.
5. **Stuttering** must be present as a listed service — it existed in
   earlier routes (A and D), was accidentally dropped during the Route E
   merge, and was explicitly restored. Don't drop it again.

### Acknowledgement of Country
The footer must carry a full **Acknowledgement of Country statement**,
positioned *above* the ABN line (not folded into it or placed after it,
and not reduced back down to a single throwaway line). Reference wording
used in the built site includes language to the effect that this has
always been a place where people met and talked, and that sovereignty was
never ceded — treat this as a starting point for the statement's register
and content, not necessarily final legal/cultural wording.

**Important caveat, must be preserved as a caveat and not silently
resolved:** Country attribution on the Central Coast/Peninsula is
contested — Darkinjung LALC covers the broader Central Coast, but Guringai
is also claimed for parts of the Woy Woy area. **Confirm the exact wording
locally with Darkinjung LALC before treating any Acknowledgement text as
final.** Do not present a specific wording as settled without that
confirmation being done or explicitly flagged as outstanding.

**No AI-generated Aboriginal-styled artwork.** This was an explicit,
deliberate refusal during design and must remain one: do not generate any
Aboriginal-styled graphic, pattern, or motif for this brand. If the
practice wants visual Acknowledgement beyond flag colours, that must be a
paid commission from a local Darkinjung artist, used under proper licence
— not an AI-generated substitute.

---

## 10. Required legal/safety footer content

Footer fine print (`.E-foot .fine`) must always include, in this
substance:
- ABN (currently a placeholder, `00 000 000 000` — must be replaced with
  the real ABN before launch)
- The Acknowledgement of Country statement (§9)
- An emergency disclaimer: to the effect of *"If someone is choking, or
  speech or swallowing has changed suddenly, ring 000 — this page isn't for
  emergencies."* This is a genuine safety disclaimer, not filler copy — do
  not shorten it away or bury it below the fold.

All contact details, fees, ABN, and street address throughout the entire
site are explicit **placeholders** in the source material (`0400 000 000`,
`12 West Street, Umina Beach NSW 2257`, `laura@otellaspeech.com.au`, the fee
table figures). Confirm real values with the practice before launch —
don't treat any of these as final content.

---

## 11. Business card & letterhead (reference for print/PDF templates, if built)

**Business card:** 85×55mm, one shared front (mark + name + credential),
two different backs printed as two short runs off the same artwork —
a family-facing back (warm, personal one-liner + phone/email/address) and
a referrer-facing back (chocolate background, lists accepted specialties
by name, secure-messaging details, turnaround times, ends with the
"instrumental assessment referred on, not attempted" scope line). The
reasoning: the card handed to a paediatric ENT registrar should not be the
same card that ends up stuck on a family's fridge.

**Letterhead:** A4, single shell reused for two audiences reading the same
sheet — chalk-ruled clinical blocks (impression, IDDSI diet/fluid level,
referred-onward status) for the specialist reader, positioned to be
readable in the "top two-thirds" that a clinician reads and then stops;
a gold-background, deliberately capped-at-two-items panel ("Two things to
try at home this fortnight") for the family reader, who skips straight to
it. A handwritten-style sign-off ("— Laura") is retained even on
clinical/specialist correspondence — assessed as costing nothing in
clinical credibility once the structure above it is right, while being "the
whole reason a family stays." Name-used/pronouns field ordering per §9.

Two templates share this one shell: a full assessment letter (as described
above) and a shorter one-page session note that drops the impression block
but keeps the gold two-item panel.

---

## 12. Implementation notes for Astro specifically

- The `.kE` / `.E-*` class namespace in `site.css` can be used directly as
  a global stylesheet import, or the styles can be ported into Astro
  component-scoped `<style>` blocks — either is fine, but **keep the CSS
  custom property names** (`--ink`, `--rust`, etc.) as the single source of
  truth for colour, so a future palette tweak is a one-place change.
- Treat each numbered section in §7 as a natural Astro component
  (`Hero.astro`, `Doors.astro`, `ServiceList.astro`, `ReferrerSection.astro`,
  `HowIWork.astro`, `InclusionPanel.astro`, `About.astro`, `Fees.astro`,
  `Footer.astro`), composed into `src/pages/index.astro`.
- The SVG logo lockup (mark + `OTELLA` / `SPEECH + SWALLOW` wordmark +
  location subline) appears identically in nav, hero, letterhead, and
  footer — build it as one shared `Logo.astro` component parameterised by
  size, rather than duplicating inline SVG markup at each placement, and
  drive it from the canonical `swallow.svg` (see §6) rather than
  re-embedding hand-drawn paths.
- A referrer-facing page (`/referrers`) and a plain-language services page
  may eventually deserve their own routes rather than living entirely as
  homepage anchors — nothing in the source material mandates single-page
  vs. multi-page, so this is an open implementation choice, not a
  constraint.
