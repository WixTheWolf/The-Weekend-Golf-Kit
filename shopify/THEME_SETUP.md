# Shopify Theme Setup (Works with Shopify OS 2.0)

This repository includes a valid Shopify theme scaffold in `shopify/theme/`.

## Important: fixing “branch isn't a valid branch”

That error comes from Shopify's **GitHub integration**, not from Liquid code.

Use this checklist:

1. Push this repo to GitHub (local-only branches are not visible to Shopify).
2. Confirm the branch exists on GitHub (for example: `main` or `work`).
3. In Shopify Admin → Online Store → Themes → Connect from GitHub, pick that exact repo + branch.
4. Set the **theme root** to `shopify/theme` (not repository root).

If the branch still does not appear, disconnect/reconnect the GitHub app in Shopify and refresh repo permissions.

## Why this theme is Shopify-valid

- Includes required theme folders: `layout/`, `templates/`, `sections/`, `assets/`, and `config/`.
- Provides `layout/theme.liquid` and JSON templates (`templates/index.json`, `templates/product.json`) for Online Store 2.0.
- Custom sections include `{% schema %}` so they can be edited in Theme Customizer.

## Upload options

### Option A: GitHub integration

- Connect repo/branch in Shopify.
- Theme root directory: `shopify/theme`.

### Option B: ZIP upload (bypass branch integration)

From repo root:

```bash
cd /workspace/The-Weekend-Golf-Kit/shopify/theme
zip -r ../weekend-golf-theme.zip .
```

Then Shopify Admin → Online Store → Themes → Add theme → Upload zip file.

### Option C: Shopify CLI

```bash
shopify theme dev --store <your-store> --path shopify/theme
shopify theme push --store <your-store> --path shopify/theme
```

## Post-upload checklist

1. Assign header and footer menus to section settings.
2. Set featured product to `The Weekend Golf Kit` in homepage template.
3. Import products/collections with CSV files in `shopify/data/`.
4. Create content/policy pages from `shopify/pages/`.
