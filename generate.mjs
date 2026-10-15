// Genererar redirect-stubbar från den nya bokens sitemap.
// Körning: node generate.mjs <sökväg-till-sitemap-0.xml>
import { readFileSync, writeFileSync, mkdirSync } from 'node:fs';

const OLD = '/java-bok';
const NEW_ORIGIN = 'https://marcusjobb.github.io';
const NEW = '/programmering-java';

const xml = readFileSync(process.argv[2], 'utf8');
const urls = [...xml.matchAll(/<loc>([^<]+)<\/loc>/g)].map((m) => m[1]);

const page = (target) => `<!doctype html>
<html lang="sv">
<head>
  <meta charset="utf-8">
  <title>Boken har flyttat – Programmering i Java</title>
  <link rel="canonical" href="${target}">
  <meta http-equiv="refresh" content="0; url=${target}">
  <script>location.replace(${JSON.stringify(target)} + location.hash);</script>
</head>
<body>
  <p>Boken har flyttat till <a href="${target}">${target}</a>.</p>
</body>
</html>
`;

for (const u of urls) {
  const path = new URL(u).pathname.replace(NEW, ''); // t.ex. /variables/integer/
  mkdirSync(`.${path}`, { recursive: true });
  writeFileSync(`.${path}index.html`, page(`${NEW_ORIGIN}${NEW}${path}`));
}

// Fångar allt som sitemapen missat (bilder, gamla ankare, felstavade URL:er)
writeFileSync('404.html', `<!doctype html>
<html lang="sv">
<head>
  <meta charset="utf-8">
  <title>Boken har flyttat – Programmering i Java</title>
  <script>
    var rest = location.pathname.replace(/^${OLD}/, '');
    location.replace('${NEW_ORIGIN}${NEW}' + rest + location.search + location.hash);
  </script>
</head>
<body>
  <p>Boken har flyttat till <a href="${NEW_ORIGIN}${NEW}/">${NEW_ORIGIN}${NEW}/</a>.</p>
</body>
</html>
`);
console.log(`${urls.length} stubbar + 404.html`);
