#!/bin/bash

# Script combiné pour générer l'IG et appliquer automatiquement le branding CPage

echo "🔄 Génération de l'IG FHIR..."
./_genonce.sh

if [ $? -eq 0 ]; then
    echo "✅ Génération terminée, application du branding CPage..."
    ./_apply_cpage_branding.sh
    echo "🎉 IG générée avec branding CPage !"
    echo "📂 Fichier: output/index.html"
else
    echo "❌ Erreur lors de la génération de l'IG"
    exit 1
fi