# reitere.fr — Site Hugo

## Contexte

Site vitrine + blog du consulting IT d'Imrane (Reitere). Objectif : leads inbound via SEO/GEO.
Contexte éditorial (personas, ton, backlog keywords, skills de contenu) : lire au besoin
`/Users/imrane.dessai/Google Drive/Obsidian/PKB/02 - Casquettes/AgenceIT/Contenus/Site/CLAUDE.md`
Les articles s'écrivent depuis la racine Contenus (`/site-article`), pas ici. Ce repo = technique uniquement.

## Stack

| Sujet | Décision |
|---|---|
| Générateur | Hugo (v0.160.1 extended) |
| Thème | Blowfish (git submodule, Tailwind) |
| Hébergement | GitHub Pages (DNS reitere.fr, HTTPS enforced) + build Cloudflare Pages historique |
| Tracking | GTM (GTM-TXG69KDC) dans `extend-head-uncached.html` + noscript dans `baseof.html` — pixels configurés dans l'interface GTM |
| SEO | GSC + Bing Webmaster. Sitemap/robots/canonical/OG natifs Blowfish |
| GEO | Schema.org JSON-LD : Organization + LocalBusiness (areaServed 974), Service, BlogPosting, FAQPage (shortcode `faq`), BreadcrumbList |
| Formulaires | Tally (shortcode `tally`) |
| Newsletter | Embed Substack (shortcode `substack`) |
| Dark mode | Forcé (`defaultAppearance = "dark"`), palette custom `assets/css/schemes/reitere.css` |

## Charte couleurs

Fond `#212738` · Texte `#edf2ef` · Positif/CTA `#affc41` · Négatif/douleurs `#f97068` · Accent `#57c4e5`

## Shortcodes maison

`cta`, `pain`, `proof`, `faq` (Schema.org FAQPage auto), `tally`, `substack` — styles dans `assets/css/custom.css`.

## Déploiement

`scripts/site-deploy.sh` : hugo --minify + git commit + push (alias `deploy`). Pipeline : push → build → en ligne.

## Vérifs

- `.claude` du skill site-review (racine Contenus) contient `check-site.sh` (meta, liens cassés, alt, frontmatter) et `check-article.sh`.
- `hugo server` pour la préversion locale.
