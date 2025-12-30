# Guide complet sur les Implementation Guides (IG) FHIR

## 1. Introduction aux Implementation Guides FHIR

Les Implementation Guides (IG) sont le mécanisme utilisé par FHIR pour expliquer comment utiliser la spécification FHIR afin d’atteindre l’interopérabilité dans un domaine particulier. Ils s’appuient sur différents types de ressources FHIR pour exprimer ces recommandations de façon calculable, puis permettent de convertir ces artefacts en une forme rendue (généralement un site web) pour faciliter la compréhension par les développeurs et autres parties prenantes.

- **Objectif** : Guider la mise en œuvre de FHIR dans un contexte donné.
- **Public cible** : Développeurs, intégrateurs, experts métier, etc.
- **Outils** : Divers outils sont disponibles pour rédiger et publier des IG, dont l’IG Publisher d’HL7.

## 2. Détails techniques

### 2.1 Dépendances

Un IG FHIR s’appuie sur :
- La spécification FHIR (ex : R5)
- Des guides parents (ex : HL7 Terminology, FHIR Extensions Pack, etc.)
- Des templates de publication (voir section dédiée)

### 2.2 Propriété intellectuelle

- Les IG FHIR sont généralement sous licence publique (licence FHIR).
- Attention à la réutilisation de codes ou de contenus sous licence (LOINC, SNOMED, etc.).

### 2.3 Outils

- **IG Publisher** : Outil principal pour générer et valider un IG.
- **Templates** : Modèles de présentation (voir section dédiée).
- **Autres outils** : Outils de gestion de terminologies, éditeurs de profils, etc.

## 3. Structure d’un IG FHIR

- **Page d’accueil** : Introduction, contexte, liens principaux.
- **Table des matières** : Navigation structurée.
- **Pages de contenu** : Spécifications, profils, exemples, explications.
- **Index des artefacts** : Liste des profils, extensions, valeurs, etc.
- **Pages techniques** : Téléchargements, dépendances, rapports de validation.

## 4. Bonnes pratiques pour la rédaction d’un IG

- Organiser le contenu de façon claire et logique.
- Nommer les artefacts de façon cohérente.
- Fournir des exemples concrets et des explications détaillées.
- Utiliser les outils et templates recommandés par HL7.
- Documenter les dépendances et les choix de conception.

---

# Documentation dédiée : Usage des templates FHIR IG

## 1. Qu’est-ce qu’un template IG ?

Un template IG est un ensemble de fichiers (scripts, layouts, fragments HTML, CSS, etc.) qui définit l’apparence et la structure d’un guide FHIR publié. Il permet d’harmoniser la présentation et de faciliter la maintenance.

## 2. Types de templates officiels

- **fhir.base.template** : Base neutre, sans logo HL7/FHIR, pour la plupart des IG non-HL7.
- **hl7.base.template** : Ajoute le logo HL7, couleurs et règles HL7.
- **hl7.fhir.template** : Ajoute le logo FHIR et la charte graphique FHIR.
- **Templates spécialisés** : Da Vinci, CDA, etc.

## 3. Utilisation d’un template

- Définir le template dans le fichier `ig.ini` :  
  ```
  [IG]
  template = fhir.base.template
  ```
- Personnaliser les fragments HTML/CSS si besoin (branding, navigation, etc.).
- Respecter la structure de fichiers attendue par le template (input/pages, input/resources, input/includes, etc.).

## 4. Étendre ou personnaliser un template

- Créer un template projet à partir d’un template officiel (fork ou héritage).
- Modifier ou ajouter des fragments (header, nav, footer, etc.).
- Documenter les personnalisations pour la maintenance.

## 5. Bonnes pratiques

- Toujours partir d’un template officiel à jour.
- Limiter les personnalisations au strict nécessaire.
- Tester la compatibilité avec l’IG Publisher.
- Documenter toute modification.

---

# Plan de travail pour la refonte du template et du projet IG de documentation

1. Synthèse et traduction de la doc IG Guidance (fait ici)
2. Audit du template actuel (ig-template-cpage)
3. Rédaction d'un cahier des charges pour le nouveau template (branding, navigation, fragments, CSS, etc.)
4. Création d'un nouveau template local (structure package.json, includes, assets)
5. Scaffold d'un nouveau projet IG "Documentation IG FHIR en français"
6. Intégration du template custom dans ce projet
7. Rédaction de la documentation narrative (pages, exemples, best practices)
8. Génération locale, validation QA, corrections
9. Publication du projet (GitHub, site statique)
10. Documentation de contribution et maintenance

---

# TODO List (travail à réaliser)
- [ ] Traduire et compléter la doc IG Guidance en français (ce fichier)
- [ ] Faire un audit du template ig-template-cpage
- [ ] Rédiger le cahier des charges du nouveau template
- [ ] Créer le template custom (structure, branding, fragments)
- [ ] Créer un nouveau projet IG "Doc IG FHIR FR"
- [ ] Intégrer le template custom dans le projet
- [ ] Rédiger les pages narratives et exemples
- [ ] Générer et valider le site localement
- [ ] Corriger les erreurs QA
- [ ] Publier le site et la doc
- [ ] Documenter la contribution et la maintenance

---

# Pour aller plus loin
- [FAQ Terminologie](https://build.fhir.org/ig/FHIR/ig-guidance/terminology.html)
- [Guide sur les extensions](https://build.fhir.org/ig/FHIR/ig-guidance/best-practice.html#extensions)
- [Guide sur les profils](https://build.fhir.org/ig/FHIR/ig-guidance/best-practice.html#profiles)
- [Guide sur la sécurité](https://build.fhir.org/ig/FHIR/ig-guidance/best-practice.html#security-and-privacy-considerations)

---

*Document rédigé à partir de la documentation officielle IG Guidance FHIR, synthétisé et adapté en français.*
