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
