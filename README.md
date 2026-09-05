# Otella Speech + Swallow — Website

Static site built with [Astro](https://astro.build), deployed to AWS S3 + CloudFront via GitHub Actions on push to `main`.

## Local preview

```bash
npm install
npm run dev
```

Opens a local dev server at `http://localhost:4321` with live reload.

## Build

```bash
npm run build
```

Outputs the static site to `dist/`.

## Editing content

Pages live in `src/pages/`. Each `.astro` file maps to a route (e.g. `src/pages/index.astro` is the homepage). Shared page structure (head, footer) lives in `src/layouts/BaseLayout.astro`.

## Deploy

Handled automatically by `.github/workflows/deploy.yml` on push to `main`: builds the site, syncs `dist/` to S3, then invalidates the CloudFront cache.
