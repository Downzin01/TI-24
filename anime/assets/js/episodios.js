export function carregarEpisodios() {
    const titulo = document.getElementById('episodio-titulo');
    const descricao = document.getElementById('episodio-descricao');
    const imagem = document.getElementById('episodio-img');
    const episodiosLista = document.getElementById('episodios-lista');

    fetch('./assets/json/episodios.json')
        .then((response) => response.json())
        .then((episodios) => {
            episodiosLista.innerHTML = ''; // Limpa a lista atual, se houver
            episodios.forEach((episodio) => {
                const li = document.createElement('li');
                li.classList.add('episodio_item');
                li.dataset.episodio = episodio.numero;
                li.innerText = episodio.titulo;
                li.addEventListener('click', () => {
                    titulo.innerText = episodio.titulo;
                    descricao.innerText = episodio.descricao;
                    imagem.src = episodio.imagem;
                });
                episodiosLista.appendChild(li);
            });
        })
        .catch((error) => console.error('Erro ao carregar os episódios:', error));
}
