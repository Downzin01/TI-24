using Exercitando.Functions.Utilidades;
using System;

namespace Exercitando.Functions.Atividades
{
    internal class Exercicio01
    {
        public void PositivoNegativoZero()
        {
            while (true)
            {
                Console.ForegroundColor = ConsoleColor.Yellow;
                Console.WriteLine("\n» Insira um número (Para ver se é positivo ou não):");

                int numeroEscolhido;
                while (!int.TryParse(Console.ReadLine(), out numeroEscolhido))
                {
                    Console.ForegroundColor = ConsoleColor.Yellow;
                    Console.WriteLine("\n:O Entrada inválida. Por favor, insira um número inteiro.");
                }

                Console.ForegroundColor = ConsoleColor.Green;
                if (numeroEscolhido == 0)
                {
                    Console.WriteLine($"\nO número {numeroEscolhido} é zero.");
                }
                else if (numeroEscolhido > 0)
                {
                    Console.WriteLine($"\nO número {numeroEscolhido} é positivo.");
                }
                else
                {
                    Console.WriteLine($"\nO número {numeroEscolhido} é negativo.");
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
                PositivoNegativoZero();
            }
        }
    }
}
