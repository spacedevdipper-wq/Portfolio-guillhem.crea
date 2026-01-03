#!/bin/bash

echo "=== Création des fichiers CSS ==="

# 1. reset.css
cat > css/reset.css << 'RESET_EOF'
/* Reset CSS simplifié */
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

html {
    scroll-behavior: smooth;
}

body {
    min-height: 100vh;
}

img {
    max-width: 100%;
    height: auto;
    display: block;
}

a {
    text-decoration: none;
    color: inherit;
}

ul, ol {
    list-style: none;
}

button {
    border: none;
    background: none;
    cursor: pointer;
    font-family: inherit;
}
RESET_EOF
echo "✓ reset.css créé"

# 2. variables.css
cat > css/variables.css << 'VAR_EOF'
/* Variables CSS selon le plan */
:root {
    /* Couleurs */
    --color-black: #121212;
    --color-cream: #F5F5DC;
    --color-white: #FFFFFF;
    --color-gray: #333333;
    --color-light-gray: #888888;
    
    /* Typographie */
    --font-primary: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif;
    
    /* Espacements */
    --space-xs: 0.5rem;
    --space-sm: 1rem;
    --space-md: 2rem;
    --space-lg: 4rem;
    --space-xl: 8rem;
}
VAR_EOF
echo "✓ variables.css créé"

# 3. typography.css
cat > css/typography.css << 'TYPO_EOF'
/* Styles de typographie */
body {
    font-family: var(--font-primary);
    font-size: 16px;
    line-height: 1.6;
    color: var(--color-cream);
    background-color: var(--color-black);
}

h1, h2, h3 {
    font-weight: bold;
    line-height: 1.2;
    margin-bottom: var(--space-sm);
}

h1 { font-size: 2.5rem; }
h2 { font-size: 2rem; }
h3 { font-size: 1.5rem; }

p { margin-bottom: var(--space-sm); }
a { transition: color 0.2s ease; }
a:hover { color: var(--color-light-gray); }
TYPO_EOF
echo "✓ typography.css créé"

# 4. layout.css
cat > css/layout.css << 'LAYOUT_EOF'
/* Styles de mise en page */
.container {
    width: 100%;
    max-width: 1200px;
    margin: 0 auto;
    padding: 0 var(--space-md);
}

.section { padding: var(--space-lg) 0; }

/* Responsive */
@media (max-width: 768px) {
    .container { padding: 0 var(--space-sm); }
    .section { padding: var(--space-md) 0; }
}
LAYOUT_EOF
echo "✓ layout.css créé"

# 5. components.css
cat > css/components.css << 'COMP_EOF'
/* Header */
.header {
    position: fixed;
    top: 0;
    left: 0;
    width: 100%;
    z-index: 1000;
    background-color: rgba(18, 18, 18, 0.95);
    padding: 1rem 0;
}

.nav {
    display: flex;
    justify-content: space-between;
    align-items: center;
}

.logo {
    font-size: 1.5rem;
    font-weight: bold;
    color: var(--color-cream);
}

.nav-links {
    display: flex;
    gap: 2rem;
}

/* Hero */
.hero {
    height: 100vh;
    display: flex;
    align-items: center;
    justify-content: center;
    text-align: center;
    padding-top: 80px;
}

/* Footer */
.footer {
    background-color: var(--color-gray);
    color: var(--color-light-gray);
    text-align: center;
    padding: 3rem 0;
}
COMP_EOF
echo "✓ components.css créé"

# 6. gallery.css
cat > css/gallery.css << 'GALLERY_EOF'
/* Galerie */
.filter-bar {
    display: flex;
    justify-content: center;
    gap: 1rem;
    margin-bottom: 2rem;
    flex-wrap: wrap;
}

.filter-btn {
    padding: 0.5rem 1rem;
    border: 1px solid var(--color-cream);
    color: var(--color-cream);
    border-radius: 4px;
    transition: all 0.2s ease;
}

.filter-btn.active,
.filter-btn:hover {
    background-color: var(--color-cream);
    color: var(--color-black);
}

.gallery-grid {
    display: grid;
    grid-template-columns: repeat(auto-fill, minmax(300px, 1fr));
    gap: 2rem;
    margin-bottom: 2rem;
}

.artwork-card {
    background-color: var(--color-gray);
    border-radius: 4px;
    overflow: hidden;
    transition: transform 0.3s ease;
    cursor: pointer;
}

.artwork-card:hover { transform: translateY(-5px); }

.artwork-image {
    width: 100%;
    height: 250px;
    object-fit: cover;
}

.artwork-info { padding: 1rem; }

.artwork-title {
    font-size: 1.25rem;
    margin-bottom: 0.5rem;
}

.artwork-details {
    color: var(--color-light-gray);
    font-size: 0.875rem;
    margin-bottom: 0.5rem;
}

/* Lightbox */
.lightbox {
    position: fixed;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background-color: rgba(0, 0, 0, 0.9);
    z-index: 2000;
    display: none;
    justify-content: center;
    align-items: center;
}

.lightbox.active { display: flex; }

.lightbox-content {
    position: relative;
    max-width: 90%;
    max-height: 90%;
    background-color: var(--color-black);
    padding: 2rem;
    border-radius: 4px;
}

.lightbox-close {
    position: absolute;
    top: 1rem;
    right: 1rem;
    color: var(--color-cream);
    font-size: 2rem;
    cursor: pointer;
}

.lightbox-image {
    max-width: 100%;
    max-height: 70vh;
    object-fit: contain;
    margin-bottom: 1rem;
}
GALLERY_EOF
echo "✓ gallery.css créé"

# 7. main.css
cat > css/main.css << 'MAIN_EOF'
/* Fichier principal */
body { background-color: var(--color-black); }

.main-content { padding: 4rem 0; }

.section-title {
    text-align: center;
    margin-bottom: 3rem;
}

.loading-text {
    text-align: center;
    grid-column: 1 / -1;
    padding: 3rem;
    color: var(--color-light-gray);
}
MAIN_EOF
echo "✓ main.css créé"

echo "=== Création des fichiers JavaScript ==="

# 8. utils.js
cat > js/utils.js << 'UTILS_EOF'
// Fonctions utilitaires
async function fetchArtworks() {
    try {
        const response = await fetch('js/artworks.json');
        if (!response.ok) throw new Error('Erreur de chargement');
        return await response.json();
    } catch (error) {
        console.error('Erreur:', error);
        return [];
    }
}

function formatDimensions(dimensions) {
    return dimensions || 'Dimensions non spécifiées';
}

function formatTechnique(tech) {
    const map = {
        'brou_de_noix': 'Brou de noix',
        'fusain': 'Fusain',
        'pastel_a_huile': 'Pastel à l\'huile'
    };
    return map[tech] || tech;
}
UTILS_EOF
echo "✓ utils.js créé"

# 9. gallery.js (version simplifiée)
cat > js/gallery.js << 'GALLERYJS_EOF'
// Galerie simplifiée
document.addEventListener('DOMContentLoaded', async function() {
    const grid = document.getElementById('galleryGrid');
    const filterBtns = document.querySelectorAll('.filter-btn');
    const lightbox = document.getElementById('lightbox');
    const lightboxClose = document.getElementById('lightboxClose');
    
    // Charger les œuvres
    const artworks = await fetchArtworks();
    
    // Afficher toutes les œuvres
    function displayArtworks(filter = 'all') {
        grid.innerHTML = '';
        const filtered = filter === 'all' 
            ? artworks 
            : artworks.filter(a => a.technique === filter);
        
        if (filtered.length === 0) {
            grid.innerHTML = '<p class="loading-text">Aucune œuvre trouvée</p>';
            return;
        }
        
        filtered.forEach(artwork => {
            const card = document.createElement('div');
            card.className = 'artwork-card';
            card.innerHTML = \`
                <img src="assets/images/oeuvres/\${artwork.image}" 
                     alt="\${artwork.title}" 
                     class="artwork-image">
                <div class="artwork-info">
                    <h3 class="artwork-title">\${artwork.title}</h3>
                    <p class="artwork-details">
                        \${formatDimensions(artwork.dimensions)} • 
                        \${artwork.year} • 
                        \${formatTechnique(artwork.technique)}
                    </p>
                </div>
            \`;
            card.addEventListener('click', () => openLightbox(artwork));
            grid.appendChild(card);
        });
    }
    
    // Gestion des filtres
    filterBtns.forEach(btn => {
        btn.addEventListener('click', function() {
            filterBtns.forEach(b => b.classList.remove('active'));
            this.classList.add('active');
            displayArtworks(this.dataset.filter);
        });
    });
    
    // Lightbox
    function openLightbox(artwork) {
        document.getElementById('lightboxImage').src = \`assets/images/oeuvres/\${artwork.image}\`;
        document.getElementById('lightboxTitle').textContent = artwork.title;
        document.getElementById('lightboxDetails').textContent = 
            \`\${formatDimensions(artwork.dimensions)} • \${artwork.year} • \${formatTechnique(artwork.technique)}\`;
        document.getElementById('lightboxDescription').textContent = artwork.description;
        lightbox.classList.add('active');
        document.body.style.overflow = 'hidden';
    }
    
    lightboxClose.addEventListener('click', () => {
        lightbox.classList.remove('active');
        document.body.style.overflow = 'auto';
    });
    
    lightbox.addEventListener('click', (e) => {
        if (e.target === lightbox) {
            lightbox.classList.remove('active');
            document.body.style.overflow = 'auto';
        }
    });
    
    // Afficher initialement
    displayArtworks();
});
GALLERYJS_EOF
echo "✓ gallery.js créé"

# 10. main.js
cat > js/main.js << 'MAINJS_EOF'
// Fichier principal
console.log('Portfolio Guillhem R.F - Galerie chargée');
MAINJS_EOF
echo "✓ main.js créé"

echo "=== Tous les fichiers ont été créés ==="
