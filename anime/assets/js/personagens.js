// personagens.js

export function selecionarPersonagem(numero) {
    const titulo = document.getElementById('personagem-titulo');
    const descricao = document.getElementById('personagem-descricao');
    const imagem = document.getElementById('personagem-img');

    switch (numero) {
        case 1:
            titulo.innerText = 'Usagi Tsukino (Sailor Moon)';
            descricao.innerText =
                'A heroína principal da série, conhecida por sua bondade e coragem.';
            imagem.src = './assets/img/usagi.jpg';
            break;
        case 2:
            titulo.innerText = 'Ami Mizuno (Sailor Mercury)';
            descricao.innerText =
                'A inteligente Sailor Mercury, com habilidades em tecnologia e estratégia.';
            imagem.src = './assets/img/ami.jpg';
            break;
        case 3:
            titulo.innerText = 'Rei Hino (Sailor Mars)';
            descricao.innerText =
                'Sailor Mars, conhecida por suas habilidades espirituais e determinação.';
            imagem.src = './assets/img/rei.jpg';
            break;
        case 4:
            titulo.innerText = 'Makoto Kino (Sailor Jupiter)';
            descricao.innerText = 'Sailor Jupiter, a força e a coragem em forma de mulher.';
            imagem.src = './assets/img/makoto.jpg';
            break;
        // Continue para os outros personagens...
        default:
            titulo.innerText = 'Selecione um Personagem';
            descricao.innerText = '';
            imagem.src = './assets/img/defaultCharacter.jpg';
            break;
    }
}

export function inicializarListaPersonagens() {
    const listaPersonagens = document.querySelectorAll('.personagem_item');

    listaPersonagens.forEach((item) => {
        item.addEventListener('click', () => {
            const numeroPersonagem = parseInt(item.getAttribute('data-personagem'));
            selecionarPersonagem(numeroPersonagem);
        });
    });
}

// Chame a função para inicializar a lista de personagens após carregar a página
document.addEventListener('DOMContentLoaded', () => {
    inicializarListaPersonagens();
});
