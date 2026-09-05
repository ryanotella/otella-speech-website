# Business card: print spec

Reference implementation: `business-card.html` in this folder. Source
markup extracted from `design/otella-speech-swallow-identity.html`
(business-card section, one front + two backs).

## Physical size

**85 × 55 mm** (standard AU/UK business card size).

## Bleed and safe margin: proposed, NOT confirmed

The following are this author's sensible print-industry defaults, chosen
because they're common enough that most local print shops will accept a
file prepared this way. **They have not been confirmed with an actual
print shop and must be checked against whoever ends up printing this
before a print-ready file is produced:**

- **Bleed:** 3 mm on all sides (finished art area 91 × 61 mm before trim).
- **Safe margin:** 5 mm inset from the trim edge; keep all text and the
  roundel mark inside 75 × 45 mm centred.
- **Colour mode:** convert to CMYK before sending to print; the palette
  tokens below are defined in RGB/hex for screen use.
- **Corner radius:** none assumed for the card stock itself (the 9px
  radius in the HTML mockup is a screen-preview affordance, not a die-cut
  instruction). Confirm with the printer whether the house stock is
  square-cut or rounded.

## The three faces

One shared front, two interchangeable backs, printed as two short runs
off the same artwork so the front plate doesn't change.

### Front (shared)
- Wheat (`--wheat` `#F1E4CB`) background.
- Roundel mark (swallow illustration on an `--paper`/`#ECDFCD` disc,
  chocolate ring), 108×108px in the mockup.
- Name, "Laura Otella," set in Fraunces, 27px, chocolate (`--ink`).
- Credential line, "CERTIFIED PRACTISING SPEECH PATHOLOGIST," in Nunito
  Sans, olive (`--olive`).

### Back: family-facing
- Harvest gold (`--gold` `#DFA22C`) background, chocolate text.
- Warm, personal one-line hook in Fraunces: "Not sure if it's a problem
  yet? Ring me and ask." Written for a noticeboard, giving a hesitant
  parent permission to call without having decided anything yet.
- Phone, email, street address in Nunito Sans.

### Back: referrer-facing
- Chocolate (`--ink` `#3E2A1C`) background, paper/chalk text: the one
  place this artefact uses the clinical/cool register (see design guide
  §3: chalk is reserved exclusively for referrer-facing material).
- "FOR REFERRERS" eyebrow label in chalk (`--chalk` `#9DB2B2`).
- Body block lists, in order: accepted specialties by name (ENT,
  gastroenterology, neurology, paediatrics, GP), the secure-messaging
  line (`HealthLink SW: OTELLASP`), turnaround time (seen within 10
  working days, report back within 5), and closes with the scope line:
  "Instrumental assessment referred on, not attempted."
- Rationale for ordering (per source material): a registrar scanning a
  card wants to see their own department named first; the closing scope
  line is judged the single line most likely to earn a second referral,
  so it's the last thing read before the card goes in a pocket.

### What differs between the two backs
| | Family back | Referrer back |
|---|---|---|
| Background | Gold (warm) | Chocolate (dark) |
| Register | Personal, reassuring | Clinical, scannable |
| Cool colour used | None | Chalk (labels only) |
| Content | One-line hook + contact details | Specialties, secure messaging, turnaround, scope limit |
| Intended shelf life | Fridge/noticeboard, months | Registrar's pocket/desk, single decision |

## Placeholder values: must be confirmed before print

All of the following appear on the card as placeholders in the source
material and are flagged in the design guide (§10) as needing
confirmation with the practice before any of this is treated as final:

- **Phone number:** `0477 022 828`. Appears on both backs, and is
  confirmed authoritative (matches the canonical source throughout and
  `src/data/contact.js` in the live site).
- **Email:** `laura@otellaspeech.com.au`
- **Street address:** `12 West Street, Umina Beach` (family back). Note
  this is missing the state/postcode suffix (`NSW 2257`) used elsewhere
  on the site; confirm the address format to use consistently.
- **Website:** `otellaspeech.com.au`, same on both backs (per practice
  direction). The referrer back originally pointed to
  `otellaspeech.com.au/referrers`; a `src/pages/referrers.astro` route
  does exist in the live site build, so that deep link was functional, not
  a typo. Noted in case a referrer-specific link is wanted back later.
- **HealthLink SW string:** `HealthLink SW: OTELLASP`. The design guide
  explicitly flags the secure-messaging vendor itself as unconfirmed
  (§8/§10 of `DESIGN-LANGUAGE-GUIDE.md`; also noted in this folder's
  `README.md`). If the vendor changes, this string must be updated
  consistently across the card, the letterhead, and the site footer.
- **ABN:** not printed on the card itself in the extracted markup, but is
  a sitewide placeholder (`00 000 000 000`) that would need to appear on
  the letterhead companion piece. Flagged here for completeness since
  it's part of the same identity system.
- **Turnaround figures:** "seen within 10 working days, report back
  within 5." This is a business commitment, not just a design placeholder;
  confirm the practice can actually meet this before printing it on a
  card that's expensive to reprint.
- **Scope line:** "Instrumental assessment referred on, not attempted."
  Content-accurate per the design guide's current published scope, but
  the guide also flags an unresolved open question (whether post-op
  voice work will be accepted without a laryngeal view already on file)
  that could affect how this line should read. Not a typo or placeholder,
  but it needs a final read-through against current clinical policy
  before print.

## Not covered here

Letterhead (A4) is a separate artefact per the design guide §11 and has
not been extracted into this folder yet (see `README.md` "Known gaps").
