# Template <-> IG link (quick reference)

This short document explains how the IG repo (`FHIR_IG`) and the template repo (`ig-template-cpage`) work together.

## Roles
- `ig-template-cpage` (template): contains the visual presentation layer — fragments, CSS, images, JS.
- `FHIR_IG` (the IG project): contains the FHIR resources (profiles, extensions, value sets) and `ig.ini` which references the template.

## How they interact
1. `FHIR_IG/ig.ini` includes a line `template = <template URL>` which points the publisher to the template package.
2. The publisher downloads the template (or uses a cached copy in `input-cache`) and merges template fragments with IG content.
3. Jekyll runs over a temporary pages tree combining the template fragments and IG content producing HTML files in `FHIR_IG/output/`.

## Typical developer workflow
- Change visuals in the template repo and push your changes.
- In the IG repo, regenerate the IG with `-reload-cache` to pick up the latest template.

Example commands:
```bash
# in template repo
git add -A && git commit -m "Visual change" && git push

# in IG repo
java -jar input-cache/publisher.jar -ig ig.ini -reload-cache
```

## Where to edit
- Template: `ig-template-cpage/template/includes/` and `ig-template-cpage/template/content/assets/`
- IG: `FHIR_IG` holds content; do not directly modify `output/` — it is generated.

## Troubleshooting
- If the header still looks duplicated, check for both `fragment-header.html` and `fragment-pagebegin.html` definitions in the template vs the IG `template/includes/` area — remove duplication in the template so the publisher uses only the intended fragments.

---
If you want, I can add a short checklist for common visual fixes and implement one of them directly in the template repo.