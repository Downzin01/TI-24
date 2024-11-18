using Exercitando.Functions.Utilidades;
using System;

namespace Exercitando.Functions.Atividades
{
    internal class Exercicio02
    {
        public void DeMaiorIdade()
        {
            while (true)
            {
                Console.ForegroundColor = ConsoleColor.Yellow;
                Console.WriteLine("\n» Insira um número para verficar a idade:");

                int idadeInserida;
                while (!int.TryParse(Console.ReadLine(), out idadeInserida))
                {
                    Console.ForegroundColor = ConsoleColor.Yellow;
                    Console.WriteLine("\nEntrada inválida. Por favor, insira um número inteiro.");
                }

                if (idadeInserida >= 18)
                {
                    Console.ForegroundColor = ConsoleColor.Green;
                    Console.WriteLine($"\nA idade {idadeInserida} é de maior de idade");
                }
                else if (idadeInserida >= 0)
                {
                    Console.ForegroundColor = ConsoleColor.Red;
                    Console.WriteLine($"\nA idade {idadeInserida} é de menor de idade");
                }
                else
                {
                    Console.ForegroundColor = ConsoleColor.Yellow;
                    Console.WriteLine("\nInsira uma idade válida!");
                }

                Console.ForegroundColor = ConsoleColor.White;
                Console.WriteLine("\nDesejar refazer novamente? (S/N)");

                if (Console.ReadLine().ToUpper() != "S")
                {
                    Console.Clear();
                    Cabecalho cabecalho = new Cabecalho();
                    Menus menus = new Menus();

                    cabecalho.ExibirCabecalho();
                    menus.ExibirOpcoesMenu();
                }

                Console.Clear();
                DeMaiorIdade();
            }
        }
    }
}
