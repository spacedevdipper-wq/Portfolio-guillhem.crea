## Portfolio Artistique - Guillhem R.F

## Caractéristiques du Site 

-Portfolio professionnel mettant en valeur les œuvres de l'artiste Guillhem R.F avec un design moderne et épuré, conçu pour être réaliste à mettre en œuvre tout en restant évolutif.
Plateforme de présentation professionnelle pour artiste contemporain

# Objectifs par Phase

# Objectifs PHASE 1 (2 semaines max) :

1. ✅ Page d'accueil avec 5-10 œuvres
2. ✅ Filtres par technique (JS simple)
3. ✅ Lightbox basique
4. ✅ Page biographie
5. ✅ Formulaire contact fonctionnel
6. ✅ Responsive design
7. ✅ Déploiement Netlify

# Phase 2.0 - Gestion de contenu

1. ✅ Intégration d'un CMS headless Directus
2. ✅ Interface d'administration pour l'artiste
3. ✅ Gestion dynamique des œuvres et du contenu

# Phase 3.0 - Expérience avancée

1. ✅ Fonctionnalités interactives (favoris, comparaison)
2. ✅ Système de newsletter
3. ✅ Internationalisation

## Design & Expérience Utilisateur:

-Palette chromatique : Noir profond (#121212) avec accents crème (#F5F5DC)

-Typographie : Polices sans-serif pour lisibilité optimale

-Philosophie : Minimalisme fonctionnel inspiré des galeries d'art

-Navigation intuitive avec focus sur le contenu

## Galerie & Présentation des Œuvres

Galerie responsive avec:

- Filtres par technique (Brou de noix, Fusain, Pastel à l'huile, Techniques mixtes)
- Images optimisées (WebP + JPEG de fallback)
- Lazy loading basique
- Lightbox simple pour visualisation agrandie
- Informations essentielles : Titre, dimensions, année, technique

## Biographie de l'Artiste

-Présentation : Format narratif et personnel

-Structure :

-Parcours artistique

-Influences et inspirations

-Démarche créative

-Expositions et réalisations

## Évolution future
-Zoom interactif

-Mode comparaison

-Système de favoris

-Partage social avancé

## Expérience Émotionnelle

-Ambiance : Sérénité, élégance

-Rythme : Scroll fluide, transitions douces

-Sonorité : Silencieux

-Objectif final : Créer une expérience digitale qui reflète l'authenticité et la profondeur de l'œuvre de Guillhem R.F.

## Responsive & Performance

# Objectifs:

-Mobile First : Conception adaptée à tous les écrans

-Score Lighthouse : Objectif > 90/100

-Images WebP avec fallback JPEG

-Temps de chargement : < 3 secondes sur 3G

-Accessibilité : Conforme WCAG 2.1 AA

# Simplifications :

-Points de rupture CSS simplifiés (mobile, tablette, desktop)

-Lazy loading via attribut HTML natif

-Compression via Vite/Netlify

## Système de Contact - Version 1.0

# Formulaire intelligent

# Fonctionnalités de base :

1. Validation côté client (HTML5 + JavaScript)
2. Envoi via Formspree/Netlify Forms (gratuit)
3. Accusé de réception automatique
4. Protection anti-spam basique

# Options de contact :

- Demande d'informations générales
- Intérêt pour une œuvre spécifique
- Commande d'oeuvres

## Structure du Projet

# portfolio-guillhem-R.F/
│
├── # original-images/          # Images originales (hors build)
│   └── # oeuvres/              # Organisées par technique
│
├── # public/                   # Assets statiques
│   ├── favicon/
│   ├── robots.txt
│   └── sitemap.xml             # Généré à la build
│
├── # src/                      # Code source
│   │
│   ├── # assets/              # Assets optimisés
│   │   ├── # images/          # Images WebP optimisées
│   │   └── # fonts/           # Polices web
│   │
│   ├── # components/          # Composants réutilisables
│   │   ├── Header.jsx          # Navigation simple
│   │   ├── Gallery.jsx         # Galerie principale
│   │   ├── ArtworkCard.jsx     # Carte œuvre
│   │   ├── FilterBar.jsx       # Filtres techniques
│   │   ├── Lightbox.jsx        # Visionneur simple
│   │   ├── ContactForm.jsx     # Formulaire
│   │   └── Footer.jsx          # Pied de page
│   │
│   ├── # data/                # Données des œuvres (JSON)
│   │   └── artworks.json       # Métadonnées structurées
│   │
│   ├── # styles/              # CSS modulaire
│   │   ├── base/               # Reset, variables, typo
│   │   ├── components/         # Styles par composant
│   │   └── main.css            # Fichier principal
│   │
│   ├── # pages/               # Pages principales
│   │   ├── Home.jsx            # Accueil/Galerie
│   │   ├── Biography.jsx       # Biographie
│   │   └── Contact.jsx         # Contact
│   │
│   ├── # utils/               # Utilitaires
│   │   ├── imageLoader.js      # Optimisation images
│   │   └── formValidation.js   # Validation formulaire
│   │
│   └── App.jsx & main.jsx      # Point d'entrée
│
├── # scripts/                 # Scripts utilitaires
│   └── optimize-images.js      # Script d'optimisation simple
│
├── vite.config.js              # Configuration Vite simplifiée
├── package.json
├── .gitignore
└── README.md                   # Ce fichier



## Stack Technique - Version 1.0

┌─────────────────────────────────────────────┐
│          BROWSER (Client-Side)              │
├─────────────────────────────────────────────┤
│  ✅ HTML5 sémantique                         │
│  ✅ CSS3 moderne (Grid, Flexbox, Variables)  │
│  ✅ ES6+ JavaScript vanilla                  │
│  ✅ Web APIs natives                         │
└─────────────────────────────────────────────┘
        │
        ▼
┌─────────────────────────────────────────────┐
│         OUTILS DE DÉVELOPPEMENT              │
├─────────────────────────────────────────────┤
│  ✅ VS Code (éditeur)                        │
│  ✅ Live Server (extension VS Code)          │
│  ✅ Git + GitHub (versioning)                │
│  ✅ Terminal (Bash/Zsh)                       │
└─────────────────────────────────────────────┘

## STRUCTURE DE FICHIERS MINIMALE

# portfolio-guillhem-rf/
│
├── 📄 index.html                    # Page d'accueil + galerie
├── 📄 biography.html                # Biographie de l'artiste
├── 📄 contact.html                  # Formulaire de contact
│
├── 📁 css/                          # Tout le CSS ici
│   ├── 📄 reset.css                 # Reset/Normalize
│   ├── 📄 variables.css             # Variables CSS (couleurs, polices)
│   ├── 📄 typography.css            # Typographie
│   ├── 📄 layout.css                # Grilles, flexbox, containers
│   ├── 📄 components.css            # Composants réutilisables
│   ├── 📄 gallery.css               # Styles spécifiques galerie
│   └── 📄 main.css                  # Fichier principal (importe les autres)
│
├── 📁 js/                           # Tout le JavaScript ici
│   ├── 📄 gallery.js                # Gestion galerie (filtres, lightbox)
│   ├── 📄 contact.js                # Validation formulaire contact
│   ├── 📄 navigation.js             # Navigation responsive
│   ├── 📄 utils.js                  # Fonctions utilitaires
│   └── 📄 main.js                   # Point d'entrée
│
├── 📁 assets/                       # Tous les médias optimisés
│   ├── 📁 images/                   # Images des œuvres
│   │   ├── 📁 oeuvres/              # Grand format (1200px)
│   │   │   ├── brou-de-noix/
│   │   │   ├── fusain/
│   │   │   └── pastel-huile/
│   │   └── 📁 thumbnails/           # Miniatures (400px)
│   │
│   ├── 📁 icons/                    # Icônes SVG
│   └── 📁 fonts/                    # Polices web (si custom)
│
├── 📁 original-images/              # Images originales (backup)
│
├── 📄 robots.txt                    # Configuration robots
├── 📄 sitemap.xml                   # Plan du site
├── 📄 favicon.ico                   # Favicon
├── 📄 .htaccess                     # Configuration Apache (optionnel)
└── 📄 README.md                     # Documentation

## OUTILS DE DÉVELOPPEMENT ESSENTIELS

1. Éditeur de Code (VS Code)

// .vscode/extensions.json - Extensions recommandées
{
    "recommendations": [
        "ritwickdey.liveserver",        // Live Server
        "esbenp.prettier-vscode",       // Formateur de code
        "formulahendry.auto-rename-tag", // Renommage automatique des balises
        "christian-kohler.path-intellisense", // Auto-complétion des chemins
        "oderwat.indent-rainbow",       // Indentation colorée
        "aaron-bond.better-comments"    // Commentaires colorés
    ]
}

2. Configuration Git de base

# .gitignore

node_modules/
*.log
.DS_Store
*.tmp
*.temp
__pycache__/
.env
.env.local
*.backup

##  SÉCURITÉ DE BASE

# Headers recommandés (via .htaccess)

# .htaccess

<IfModule mod_headers.c>
    Header set X-Content-Type-Options "nosniff"
    Header set X-Frame-Options "SAMEORIGIN"
    Header set X-XSS-Protection "1; mode=block"
    Header set Referrer-Policy "strict-origin-when-cross-origin"
</IfModule>

# Compression
<IfModule mod_deflate.c>
    AddOutputFilterByType DEFLATE text/html text/css text/javascript
</IfModule>

# Cache
<IfModule mod_expires.c>
    ExpiresActive On
    ExpiresByType image/webp "access plus 1 year"
    ExpiresByType text/css "access plus 1 month"
</IfModule>

## Hébergement et déploiement

# Option 1 : GitHub Pages (Gratuit)

1. Pousser sur GitHub

git init
git add .
git commit -m "Initial commit"
git remote add origin https://github.com/votre-username/portfolio-guillhem-rf.git
git push -u origin main

# 2. Activer GitHub Pages
- Settings > Pages > Source: main branch > / (root)
- Site accessible sur : https://votre-username.github.io/portfolio-guillhem-rf

## Option 2 : Netlify Drop (Drag & Drop)

1. Aller sur https://app.netlify.com/drop
2. Glisser-déposer le dossier portfolio-guillhem-rf/
3. Netlify génère une URL (ex: amazing-portfolio.netlify.app)
4. Optionnel : Connecter à GitHub pour déploiement contin


## Installation & Déploiement 

# Prérequis

-Node.js 18+ et npm
-Git
-Éditeur de code (VS Code recommandé)
-Installation en 3 étapes
-bash

1. Cloner et installer

git clone [repository]
cd portfolio-guillhem-R.F
npm install

2. Préparer les images

- Placer images dans original-images/
npm run optimize-images

3. Lancer le développement

npm run dev
http://localhost:5173

-Ajouter une œuvre

-Ajouter l'image dans original-images/oeuvres/[technique]/

-Exécuter npm run optimize-images

-Ajouter les métadonnées dans src/data/artworks.json

-Déploiement sur Netlify

-Pousser sur GitHub

-Connecter le repo à Netlify

-Build automatique → Site en ligne

## Évolutivité - Roadmap

-Phase 1.0 (Semaines 1-3)

-Design system de base

-Galerie statique avec filtres

-Pages biographie et contact

-Déploiement automatique

-Optimisation performance

# Phase 2.0 (Mois 2)

-Installation de Directus (CMS)

-Migration des données vers API

-Interface d'administration

-Gestion dynamique du contenu

-Sauvegarde automatique

# Phase 3.0 (Mois 3+)

-Fonctionnalités avancées (favoris, comparaison)

-Système de newsletter

-Internationalisation

-Analytics avancés

## CHECKLIST DE LANCEMENT TECHNIQUE

# Avant Déploiement :


[ ] 1. Validation HTML : https://validator.w3.org/
[ ] 2. Validation CSS : https://jigsaw.w3.org/css-validator/
[ ] 3. Test JavaScript : Pas d'erreurs dans la console
[ ] 4. Test Responsive : Chrome DevTools > Toggle Device Toolbar
[ ] 5. Test Performance : Lighthouse (Chrome DevTools)
[ ] 6. Test Accessibilité : axe DevTools Extension
[ ] 7. Test Cross-browser : Chrome, Firefox, Safari, Edge
[ ] 8. Test Mobile réel : Sur smartphone
[ ] 9. Vérifier tous les liens (internal/external)
[ ] 10. Optimiser images (WebP + compression)

## Après Déploiement :

[ ] 1. HTTPS fonctionnel (automatique sur Netlify/GitHub Pages)
[ ] 2. Redirection www/non-www configurée
[ ] 3. Analytics installé (Plausible/Google Analytics simple)
[ ] 4. Test formulaire de contact
[ ] 5. Vérifier le temps de chargement sur mobile 3G
[ ] 6. Mettre en place monitoring d'erreurs (optionnel)


## Sécurité & Confidentialité

-Version 1.0 (Essentiels)

-HTTPS obligatoire (via Netlify/Vercel)

-Formulaire protégé (service tiers)

-Aucun stockage de données sensibles

-Conformité RGPD basique

# Phase 2.0 (Renforcement)

-CMS sécurisé avec authentification

-Backup régulier des données

-Headers de sécurité avancés

-Journalisation des accès

## Gestion des Images - Workflow Simplifié

# Structure des métadonnées

{
  "id": "bn-001",
  "title": "Forêt Nocturne",
  "technique": "brou-de-noix",
  "year": 2024,
  "dimensions": "50 × 70 cm",
  "description": "Inspirée des forêts cévenoles...",
  "price": "Sur demande",
  "image": "foret-nocturne.webp"
}

# Script d'optimisation

 npm run optimize-images

# Ce script :
# 1. Convertit en WebP (qualité 85%)
# 2. Génère une miniature (400px)
# 3. Copie dans src/assets/images/
# 4. Garde original dans archive/

## Tests & Qualité - Version Allégée

# Tests manuels essentiels

# À effectuer avant chaque déploiement :

 npm run dev           # Vérifier le développement
 npm run build         # Vérifier le build production
 npm run preview       # Prévisualiser le build

# Tests manuels :

- Navigation sur mobile/desktop
- Formulaire de contact
- Filtres de la galerie
- Performance (Lighthouse)
- Accessibilité (Wave tool)

# Phase 2.0

- Ajout de tests unitaires ciblés
 
- Tests E2E pour les flux critiques

- Intégration dans CI/CD

## Documentation - Essentielle mais Concisse


# docs/
├── CONTRIBUTING.md     # Comment ajouter du contenu
├── IMAGE_GUIDE.md      # Guide optimisation images
└── DEPLOYMENT.md       # Procédure déploiement

- Documentation intégrée

- Commentaires dans le code

- README clair 

- Variables et fonctions bien nommées

## Objectif Final - Version Réalisable

- Créer une expérience digitale professionnelle qui :

- Présente magnifiquement les œuvres de Guillhem R.F

- Fonctionne parfaitement sur tous les appareils

- Charge rapidement où que soit le visiteur

- Permet un contact facile avec l'artiste

- Peut évoluer techniquement sans tout réécrire

## Priorité : Avoir un site en ligne, beau et fonctionnel, dans les 3 semaines.

## Checklist Lancement V1.0

- Design system implémenté (couleurs, typo, espacements)

- Galerie avec au moins 10 œuvres optimisées

- Filtres par technique fonctionnels

- Lightbox pour visualisation détaillée

- Page biographie complète

- Formulaire de contact opérationnel

- Site responsive (mobile, tablette, desktop)

- Performance Lighthouse > 90

- Déploiement sur Netlify/Vercel

- Nom de domaine configuré

- Analytics basique installé

- Test manuel complet effectué

## Ressources & Outils Recommandés

# Développement

- Éditeur : VS Code avec extensions ESLint/Prettier

- Design : Figma pour maquettes (optionnel)

- Optimisation images : Squoosh.app (en ligne)

## Services

# Dépôt GitHub: https://github.com/spacedevdipper-wq/Portfolio-guillhem.crea

# Hébergement : Netlify ou GitHub

# Formulaires : Formspree ou Netlify Forms

# Analytics : Plausible (alternatif à Google)

# CMS future : Directus (auto-hébergé)

## Licence Artistique et Propriété Intellectuelle
 
## OBJET DE LA LICENCE

- La présente licence régit l'utilisation du site web portfolio        de Guillhem R.F accessible à l'adresse:

https://github.com/spacedevdipper-wq/Portfolio-guillhem.crea 

et de son code source disponible sur [GitHub].

## DROITS D'AUTEUR SUR LES ŒUVRES

# Propriété exclusive

- Toutes les œuvres artistiques présentées sur le Site (ci-après  dénommées "les Œuvres") sont la propriété exclusive de Guillhem R.F.

- Les Œuvres comprennent, sans s'y limiter : les œuvres en brou de noix, fusain, pastel à l'huile, et toute autre technique artistique présentée.

# Protection des images

- Les images des Œuvres sont protégées au titre du droit d'auteur selon les articles L.111-1 et suivants du Code de la propriété intellectuelle français.

## DOCUMENTS LÉGAUX COMPLÉMENTAIRES

- Politique de confidentialité : /legal/privacy.html

- Conditions d'utilisation : /legal/terms.html

## SYSTÈME DE COMMANDES ET VENTES

# Modalités de commande

- Les commandes d'Œuvres se font exclusivement via l'adresse mail indiqué guillhem.crea@gmail.com

## CONTACT

Guillhem R.F
[FRANCE-Ariége-09230]
guillhem.crea@gmail.com
SIRET : [-]
Dernière mise à jour : 3 janvier 2024
Version de la licence : 1.0

© 2024 Guillhem R.F - Tous droits réservés







   
