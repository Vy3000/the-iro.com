# THE IRO STUDIO — the-iro.com

Plain HTML/CSS rebuild of the IRO Studio page, hosted free on GitHub Pages.
The concierge page is intentionally not included.

```
index.html                          the page (all text lives here)
styles.css                          styling; colours and fonts at the top
assets/img/                         photos
assets/fonts/                       optional custom serif
CNAME                               tells GitHub Pages to serve the-iro.com
get-images.sh                       original download script (already done)
```

All contact buttons go to **info@the-iro.com**.

## Publishing
Photos are already copied from Wix and resized for the web.

1. Settings → Pages → Source: "Deploy from a branch" → `main` / root → Save.
2. Settings → Pages → Custom domain: `the-iro.com` → Save.

## DNS at GoDaddy
- `A` records for `@`: `185.199.108.153`, `185.199.109.153`, `185.199.110.153`, `185.199.111.153`
- `CNAME` for `www`: `<github-username>.github.io`
- Remove any other `A` record on `@` and any "forwarding" GoDaddy has set.
- Then in GitHub Pages settings, tick **Enforce HTTPS** once it becomes available.

## Editing later
Change the text in `index.html`, commit, and the site updates within a minute.
