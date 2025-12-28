#!/bin/bash

# Script pour appliquer automatiquement le branding CPage à l'IG générée
# À exécuter après ./_genonce.sh

OUTPUT_DIR="/home/nico/Travail/FHIR_IG/output"
INDEX_FILE="$OUTPUT_DIR/index.html"

if [ ! -f "$INDEX_FILE" ]; then
    echo "Erreur: Fichier $INDEX_FILE non trouvé"
    exit 1
fi

# Sauvegarde du fichier original
cp "$INDEX_FILE" "${INDEX_FILE}.backup"

# Appliquer la navbar CPage
sed -i 's|<nav class="navbar navbar-inverse">|<nav class="navbar navbar-inverse" style="background-color: #003d7a !important;">|g' "$INDEX_FILE"

# Remplacer le contenu de la navbar
sed -i '/<!-- status-bar -->/,/<!-- \/HEADER CONTENT -->/c\
            <a href="" class="navbar-brand" style="color: #7fb800 !important;">\
              <img src="assets/images/logo-cpage.png" alt="CPage Logo" height="30" style="margin-right: 10px; vertical-align: middle;">\
              CPage FHIR IG\
            </a>\
            <div class="nav-collapse collapse navbar-inverse-collapse">\
              <ul class="nav navbar-nav pull-right">\
                <li><a href="index.html">Accueil</a></li>\
              </ul>\
            </div><!-- /.nav-collapse -->\
          </div><!-- /.container -->\
        </nav><!-- /.navbar -->\
        <!-- /HEADER CONTENT -->' "$INDEX_FILE"

echo "✅ Branding CPage appliqué automatiquement à $INDEX_FILE"
echo "📁 Sauvegarde créée: ${INDEX_FILE}.backup"