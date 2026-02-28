# Commit 451

Modern rebuild of [commit451.com](https://commit451.com) — the website for Commit 451 LLC.

## Stack

- [Astro](https://astro.build) — Static site generator
- [React](https://react.dev) — UI components
- [Tailwind CSS v4](https://tailwindcss.com) — Utility-first CSS
- [TypeScript](https://www.typescriptlang.org) — Type safety

## Development

```bash
npm install
npm run dev
```

## Build

```bash
npm run build
npm run preview
```

## Deploy

Deploys automatically to GitHub Pages on push to `main` via the included Actions workflow.

Custom domain: `commit451.com` (configured via `CNAME`).
