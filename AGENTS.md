# AGENTS.md

## Build

```
npm run build
```

Runs `astro build`. Always run this after editing any `.astro` file before
committing — Astro's frontmatter parser fails silently in editors but breaks
CI at build time.

## Astro frontmatter fences

Every `.astro` file that has server-side code (imports, `const`, logic) at
the top **must** start with an opening `---` fence line, even though the
Astro compiler only strictly requires a closing `---` fence to exist
somewhere in the file. If the opening `---` is missing, Astro's compiler
misattributes the error to the closing fence ("The closing frontmatter fence
(---) is missing an opening fence") and points at the closing fence's line
number, not the top of the file — so when debugging this error, check the
first line of the file, not the reported line.

This has been a recurring mistake in this repo (missing opening `---` in
`ServiceList.astro`, `About.astro`, `ReferrerSection.astro`, and
`referrers.astro` all at once) — likely from edits that replaced the top of
a file without preserving the fence. Before committing, verify every
`.astro` file under `src/` starts with `---`:

```
for f in $(find src -name '*.astro'); do
  [ "$(head -1 "$f")" = "---" ] || echo "MISSING FENCE: $f"
done
```

**Empty fence blocks are required syntax, not dead code.** Some components
(`Fees.astro`, `Acknowledgement.astro`) have a frontmatter block with
nothing between the fences (`---`\n`---`) because they don't need any
server-side logic. This is intentional — never delete it as "empty comment
lines," "junk," or "leftover clutter." Removing the fences breaks the file
exactly like removing them from a non-empty block would.

## Single sources of truth

Contact details (phone, email, address, ABN, hours) live in
`src/data/contact.js` and are imported everywhere they're used — don't
hardcode them inline in a component. Note its current header comment
(`// Placeholders. Confirm real values with the practice before launch.`):
verify with the client whether values are actually confirmed before
treating that comment as stale.

Some facts are intentionally repeated across components with independent
copy — e.g. referral turnaround times and stutter/stammer terminology
appear in `ReferrerSection.astro`, `Doors.astro`, and `referrers.astro`.
When a client asks to change wording or a fact like this, grep for it
across `src/` before calling the edit done, since fixing only the file
they named can leave stale copies elsewhere:

```
grep -rn "old value or phrase" src/
```

## Verify before acting

If a request names a specific component, page, or quoted text ("update the
Testimonials component," "the placeholder comment on line 1"), check it
actually exists and matches before editing — client descriptions of what's
currently there aren't always accurate. If the named target doesn't exist
and no replacement content was supplied (e.g. "add our new Google review"
with no review text attached), say so and make no changes rather than
inventing bios, reviews, or clinical claims to fill the gap.

## Design tokens

Colors are CSS custom properties in `src/styles/palette.css`, scoped to the
`.kE` class — treat it as the source of truth rather than hardcoding hex
literals. `--chalk` carries specific meaning (documented in-file): it's the
only cool colour in the system, reserved for clinician/referrer-facing
material. Global styles live in `site.css` with `E`-prefixed class names
and three responsive breakpoints (`940px`, `860px`, `480px`).
