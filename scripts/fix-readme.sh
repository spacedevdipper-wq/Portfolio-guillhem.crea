#!/bin/bash

echo "=== CORRECTION DU README.md ==="
cd ~/Desktop/Portfolio-Guillhem-R.F || exit

echo "1. Création du README.md..."

# Contenu du README.md
cat > README.md << 'README_EOF'
# Portfolio Artistique - Guillhem R.F

Portfolio professionnel mettant en valeur les œuvres de l'artiste Guillhem R.F avec un design moderne et épuré.

## 🎨 Caractéristiques du Site

- **Thème** : Noir profond (black-dark) avec texte couleur crème
- **Design** : Interface épurée et moderne
- **Focus** : Mise en valeur des images des œuvres en grand format
- **Structure** :
  - En-tête avec galerie d'œuvres en grand format
  - Biographie de l'artiste en bas de page
  - Section contact et commande d'œuvres

## 📁 Structure du Projet

\`\`\`
Portfolio-Guillhem-R.F/
├── src/                    # Code source frontend
│   ├── css/               # Styles (thème noir/crème)
│   ├── js/                # Fonctionnalités interactives
│   ├── images/            # Images optimisées
│   │   ├── oeuvres/       # Œuvres organisées par technique
│   │   └── icones/        # Icônes du site
│   └── biographie/        # Biographie de l'artiste
├── original-images/       # Images originales (backup)
├── cms/                  # Configuration Directus (CMS headless)
├── scripts/              # Scripts d'automatisation
│   └── optimization/     # Scripts d'optimisation d'images
├── backup/               # Sauvegardes régulières
└── docs/                 # Documentation
\`\`\`

## 🚀 Installation et Utilisation

### Prérequis
- Linux (testé sur Lubuntu)
- Git
- Docker et Docker Compose (pour Directus)
- ImageMagick, jpegoptim, optipng

### Installation

1. **Cloner le dépôt** :
   \`\`\`bash
   git clone https://github.com/spacedevdipper-wq/Portfolio-guillhem.crea.git
   \`\`\`

2. **Optimiser les images** :
   \`\`\`bash
   chmod +x scripts/optimization/optimize-all-images.sh
   ./scripts/optimization/optimize-all-images.sh
   \`\`\`

3. **Démarrer le CMS (optionnel)** :
   \`\`\`bash
   cd cms
   cp .env.example .env
   # Éditer .env avec vos informations
   docker-compose up -d
   \`\`\`

4. **Ouvrir le site** :
   \`\`\`bash
   firefox index.html
   \`\`\`

## 🎯 Techniques Artistiques Supportées

- **Brou de noix** : Œuvres en brou de noix
- **Fusain** : Dessins au fusain
- **Pastel à l'huile** : Œuvres en pastel à l'huile

## 📞 Contact et Commandes

Le site inclut une section contact avec :
- Adresse email pour les demandes
- Possibilité de commander des œuvres
- Informations de contact professionnel

## 🔄 Mise à Jour

Pour ajouter de nouvelles œuvres :
1. Placer les images dans \`original-images/oeuvres/[technique]/\`
2. Exécuter le script d'optimisation
3. Mettre à jour la biographie si nécessaire
4. Commit et push vers GitHub

## 📄 Licence

© 2024 Guillhem R.F - Tous droits réservés
README_EOF

echo "✓ README.md corrigé avec succès"

echo -e "\n2. Structure du projet :"
ls -la

echo -e "\n=== OPÉRATION TERMINÉE ==="
