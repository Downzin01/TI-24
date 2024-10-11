window.onload = async () => {
    const navLinksModule = await import('./navLinks.js');
    navLinksModule.loadNavLinks();

    const episodiosModule = await import('./episodios.js');
    episodiosModule.carregarEpisodios();

    const personagensModule = await import('./personagens.js');
    personagensModule.inicializarListaPersonagens();
};

window.addEventListener('scroll', function () {
    const homeSection = document.getElementById('home-section');
    const scrollY = window.scrollY;

    // Aumenta o tamanho do fundo conforme o usuário rola
    const newSize = 100 + scrollY * 0.01; // Aumenta 0.1% a cada pixel rolado
    homeSection.style.backgroundSize = `${newSize}%`; // Ajusta o tamanho do fundo
});
