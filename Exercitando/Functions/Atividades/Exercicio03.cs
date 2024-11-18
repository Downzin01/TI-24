using Exercitando.Functions.Utilidades;
using System;

namespace Exercitando.Functions.Atividades
{
    internal class Exercicio03
    {
        public void ParImpar()
        {
            while (true)
            {
                Console.ForegroundColor = ConsoleColor.Yellow;
                Console.WriteLine("\nInsira um número para verificar se é par ou impar:");

                int numeroEscolhido;
                while (!int.TryParse(Console.ReadLine(), out numeroEscolhido))
                {
                    Console.ForegroundColor = ConsoleColor.Yellow;
                    Console.WriteLine("\nInsira um número inteiro válido");
                }

                Console.ForegroundColor = ConsoleColor.Blue;
                if (numeroEscolhido % 2 == 0)
                {
                    Console.WriteLine($"\nO número {numeroEscolhido} é par");
                }
                else
                {
                    Console.WriteLine($"\nO número {numeroEscolhido} é impar");
                }

                Console.ForegroundColor = ConsoleColor.White;
                Console.WriteLine("\nDeseja refazer novamente? (S/N)");

                if (Console.ReadLine().ToUpper() != "S")
                {
                    Console.Clear();
                    Cabecalho cabecalho = new Cabecalho();
                    Menus menus = new Menus();

                    cabecalho.ExibirCabecalho();
                    menus.ExibirOpcoesMenu();
                }

                Console.Clear();
                ParImpar();
            }
        }
    }
}
