using RoupaBox.Functions.Utilidades;

namespace RoupaBox
{
    internal class Program
    {
        static void Main(string[] args)
        {
            Cabecalho cabecalho = new Cabecalho();
            Menu menu = new Menu();

            cabecalho.MinhaFuncao();
            menu.MinhaFuncao();

        }
    }
}
