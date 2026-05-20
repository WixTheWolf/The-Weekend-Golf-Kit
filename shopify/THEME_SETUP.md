# Shopify Theme Setup (Works with Shopify OS 2.0)

This repository now includes a valid Shopify theme scaffold in `shopify/theme/`.

## Why this is Shopify-valid

- Includes required theme folders used by Shopify themes: `layout/`, `templates/`, `sections/`, `assets/`, and `config/`.
- Provides a `layout/theme.liquid` file and JSON templates (`templates/index.json`, `templates/product.json`) compatible with Online Store 2.0.
- Each custom section includes a `{% schema %}` block and presets where needed so sections can be managed in Theme Customizer.

## Upload options

1. **GitHub integration**: Connect repo in Shopify admin → Online Store → Themes.
2. **Shopify CLI**:
   - `shopify theme dev --store <your-store>`
   - `shopify theme push --path shopify/theme`

## Post-upload checklist

1. Assign header and footer menus to section settings.
2. Set featured product to `The Weekend Golf Kit` in Homepage template.
3. Create products/collections using CSV files in `shopify/data/`.
4. Build policy/content pages from `shopify/pages/`.
