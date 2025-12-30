# Plan de travail détaillé pour la structuration et la personnalisation des projets IG FHIR CPage

## 1. Refonte et structuration des dépôts

### 1.1 ig-template-cpage
- [x] Contient uniquement le template IG FHIR personnalisé (base saine, à jour).
- [x] Pas de contenu IG, ni de ressources métier.
- [x] Versionné et documenté (README, changelog, instructions d’utilisation).

### 1.2 ig-cpage
- [x] IG vide, prêt à cloner pour de nouveaux projets.
- [x] Utilise le template personnalisé (ig-template-cpage).
- [x] Contient la structure minimale : ig.ini, input/pages, input/resources, input/includes, package-list.json, etc.
- [ ] README expliquant comment cloner et démarrer un nouvel IG.

### 1.3 ig-doc-cpage
- [x] IG documentaire : explique comment créer, structurer et maintenir un IG FHIR CPage.
- [x] Contient : documentation, guides, bonnes pratiques, exemples, scripts de build, etc.
- [x] Utilise aussi le template personnalisé.
- [x] README détaillé, liens vers la doc officielle, synthèses, etc.

---

## 2. Personnalisation et maintenance du template

- [x] Fork du template officiel HL7 (fhir.base.template).
- [ ] Ajout des fragments personnalisés (header, nav, footer, branding, etc.).
- [ ] Ajout des assets (logos, images, CSS spécifiques).
- [x] Documentation des personnalisations dans le README du template.
- [x] Tests réguliers avec IG Publisher pour garantir la compatibilité.
- [x] Limiter les modifications au strict nécessaire pour faciliter les futures mises à jour.

---

## 3. Intégration et documentation

- [x] Intégrer le template dans ig-cpage et ig-doc-cpage via ig.ini.
- [x] Documenter dans ig-doc-cpage :
  - [x] Les étapes de création d’un IG FHIR CPage.
  - [x] Les bonnes pratiques de structuration, nommage, exemples, etc.
  - [x] Les outils nécessaires (IG Publisher, Java, etc.).
  - [x] Les commandes de build et de validation.
  - [x] Les liens vers la doc officielle et les ressources utiles.

---

## 4. Processus de validation

- [x] Relire et valider ce plan avec l’équipe.
- [ ] Adapter selon les retours avant de lancer la personnalisation ou la rédaction documentaire avancée.
- [ ] Mettre à jour le plan au fil de l’avancement du projet.

---

## 5. Suivi et maintenance

- [x] Versionner tous les changements (Git).
- [x] Documenter chaque évolution ou personnalisation.
- [ ] Prévoir des points de contrôle réguliers pour garantir la conformité avec les recommandations HL7/FHIR.

---

Ce plan est à valider avant toute personnalisation avancée ou rédaction documentaire.

---

**Dernière mise à jour automatique : 30/12/2025**

**Légende :**
- [x] = Fait
- [ ] = À faire