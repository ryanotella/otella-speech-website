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
