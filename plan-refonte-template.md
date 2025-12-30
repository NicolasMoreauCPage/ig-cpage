# Plan de travail : Refonte du template IG FHIR CPage

## Objectif
Refondre le template local IG FHIR CPage pour le rendre conforme aux recommandations officielles HL7/FHIR, améliorer la maintenabilité, la compatibilité et la clarté du rendu.

---

## Étapes principales

1. **Analyse de l’existant**
   - Recenser tous les fragments, layouts, assets et personnalisations actuels.
   - Identifier les écarts avec la structure et les bonnes pratiques des templates officiels.

2. **Choix du template de base**
   - Sélectionner le template officiel le plus adapté (ex : fhir.base.template).
   - Documenter les raisons du choix.

3. **Définition des besoins de personnalisation**
   - Branding (logo, couleurs, header/footer, navigation).
   - Spécificités métier ou ergonomiques (liens, menus, pages spécifiques).
   - Multilinguisme, accessibilité, etc.

4. **Création du nouveau template projet**
   - Fork ou copie du template officiel choisi.
   - Ajout/modification des fragments nécessaires (header, nav, footer, etc.).
   - Ajout des assets (images, CSS, JS) propres au projet.
   - Documentation des personnalisations dans le template.

5. **Migration des contenus**
   - Adapter les pages, includes, ressources et assets existants à la nouvelle structure.
   - Vérifier la compatibilité des fragments personnalisés avec l’IG Publisher.

6. **Tests et validation**
   - Générer l’IG localement et vérifier le rendu sur toutes les pages (accueil, ressources, historique, etc.).
   - Corriger les erreurs QA, liens cassés, images manquantes, etc.
   - Vérifier la conformité avec les recommandations officielles.

7. **Documentation**
   - Rédiger une documentation interne sur la structure du template, les personnalisations et les bonnes pratiques d’évolution.
   - Mettre à jour le README du projet.

8. **Livraison et maintenance**
   - Versionner le template projet (Git).
   - Prévoir un plan de maintenance et de suivi des évolutions des templates officiels HL7/FHIR.

---

## Points de vigilance
- Limiter les personnalisations au strict nécessaire pour faciliter les futures mises à jour.
- Toujours tester avec la dernière version de l’IG Publisher.
- Documenter chaque choix ou écart par rapport au template officiel.

---

## Validation
Ce plan doit être validé avant de lancer la refonte. Merci de relire et de compléter si besoin.
