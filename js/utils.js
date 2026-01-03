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
