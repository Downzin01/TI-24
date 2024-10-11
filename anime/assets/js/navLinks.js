export async function loadNavLinks() {
    try {
        const response = await fetch('./assets/json/navLinks.json');
        const data = await response.json();
        const navLinksContainer = document.querySelector('#nav-links ul'); // Selecionar o ul

        // Limpar o conteúdo existente
        navLinksContainer.innerHTML = '';

        // Criar os links dinamicamente
        data.links.forEach((link) => {
            const listItem = document.createElement('li');
            const anchor = document.createElement('a');
            anchor.href = link.href;
            anchor.textContent = link.text;

            // Adicionar o link à lista
            listItem.appendChild(anchor);
            navLinksContainer.appendChild(listItem);
        });
    } catch (error) {
        console.error('Erro ao carregar os links de navegação:', error);
    }
}
