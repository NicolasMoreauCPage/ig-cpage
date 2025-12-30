# Installation de Sushi et Jekyll

Ce guide explique comment installer Sushi (FHIR Shorthand) et Jekyll sur Windows et Linux, avec ou sans droits administrateur.

## 1. Prérequis communs
- Node.js (https://nodejs.org/) : nécessaire pour Sushi
- Ruby (https://www.ruby-lang.org/) : nécessaire pour Jekyll

---

## 2. Installation de Sushi

### Sous Windows
#### Avec droits administrateur
1. Ouvrir un terminal (cmd ou PowerShell) en mode administrateur
2. Installer Sushi globalement :
   ```sh
   npm install -g fsh-sushi
   ```
3. Vérifier l'installation :
   ```sh
   sushi --version
   ```

#### Sans droits administrateur
1. Ouvrir un terminal utilisateur
2. Installer Sushi localement dans le projet :
   ```sh
   npm install --save-dev fsh-sushi
   ```
3. Utiliser Sushi avec :
   ```sh
   npx sushi
   ```

### Sous Linux
#### Avec droits administrateur
1. Ouvrir un terminal
2. Installer Sushi globalement :
   ```sh
   sudo npm install -g fsh-sushi
   ```
3. Vérifier l'installation :
   ```sh
   sushi --version
   ```

#### Sans droits administrateur
1. Ouvrir un terminal
2. Installer Sushi localement dans le projet :
   ```sh
   npm install --save-dev fsh-sushi
   ```
3. Utiliser Sushi avec :
   ```sh
   npx sushi
   ```

---

## 3. Installation de Jekyll

### Sous Windows
#### Avec droits administrateur
1. Installer Ruby (https://rubyinstaller.org/)
2. Ouvrir une invite de commandes Ruby en mode administrateur
3. Installer Jekyll :
   ```sh
   gem install jekyll bundler
   ```
4. Vérifier :
   ```sh
   jekyll --version
   ```

#### Sans droits administrateur
1. Installer Ruby pour l'utilisateur
2. Installer Jekyll dans le dossier personnel :
   ```sh
   gem install --user-install jekyll bundler
   ```
3. Ajouter le chemin des gems à la variable d'environnement PATH (voir message d'installation)
4. Vérifier :
   ```sh
   jekyll --version
   ```

### Sous Linux
#### Avec droits administrateur
1. Installer Ruby (ex : `sudo apt install ruby-full`)
2. Installer Jekyll :
   ```sh
   sudo gem install jekyll bundler
   ```
3. Vérifier :
   ```sh
   jekyll --version
   ```

#### Sans droits administrateur
1. Installer Ruby pour l'utilisateur (ex : via rbenv ou rvm)
2. Installer Jekyll localement :
   ```sh
   gem install --user-install jekyll bundler
   ```
3. Ajouter le chemin des gems à la variable d'environnement PATH (voir message d'installation)
4. Vérifier :
   ```sh
   jekyll --version
   ```

---

**Remarque :**
- Pour l'installation sans droits admin, il peut être nécessaire d'ajouter le chemin des gems Ruby à la variable PATH. Suivre les instructions affichées après l'installation.
- Pour Node.js, l'installation locale de Sushi nécessite d'utiliser `npx sushi` au lieu de `sushi`.
