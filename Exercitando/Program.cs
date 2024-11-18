using Exercitando.Functions.Utilidades;

namespace Exercitando
{
    class Program
    {
        static void Main(string[] args)
        {
            Cabecalho cabecalho = new Cabecalho(); 
            Menus menus = new Menus();

            cabecalho.ExibirCabecalho();
            menus.ExibirOpcoesMenu();
        }
    }
}