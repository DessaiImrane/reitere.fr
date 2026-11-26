# reitere.fr — Site Hugo

## Contexte

Site vitrine + blog du consulting IT d'Imrane (Reitere). Objectif : leads inbound via SEO/GEO.
Contexte éditorial (personas, ton, backlog keywords, skills de contenu) : lire au besoin
`$OBSIDIAN/PKB/Contenus/Site/CLAUDE.md`
Les articles s'écrivent depuis la racine Contenus (`/site-article`), pas ici. Ce repo = technique uniquement.

## Stack

| Sujet | Décision |
|---|---|
| Générateur | Hugo (v0.160.1 extended) |
| Thème | Blowfish (git submodule, Tailwind) |
| Hébergement | GitHub Pages (DNS reitere.fr, HTTPS enforced) + build Cloudflare Pages historique |
| Tracking | Aucun (GTM retiré le 2026-11-26, son conteneur était vide). Vidéos YouTube en mode sans cookie (`privacy.youtube`). Tout ajout de traceur oblige à mettre à jour `content/mentions-legales.md` et à poser un bandeau de consentement |
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

`scripts/site-deploy.sh` : git commit + push (alias `deploy`), puis attend la fin du build GitHub Actions (`gh run watch`). Pas de Hugo local : le build se fait uniquement dans `.github/workflows/deploy.yml`.

## Vérifs

- `.claude` du skill site-review (racine Contenus) contient `check-site.sh` (meta, liens cassés, alt, frontmatter) et `check-article.sh`.
- `hugo server` pour la préversion locale.
