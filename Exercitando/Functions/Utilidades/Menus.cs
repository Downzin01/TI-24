using Exercitando.Functions.Atividades;
using System;
using System.Threading;

namespace Exercitando.Functions.Utilidades
{
    internal class Menus
    {
        public void ExibirOpcoesMenu()
        {
            Console.ForegroundColor = ConsoleColor.Blue;
            Console.WriteLine("» Digite 1 para o exercício 1");
            Console.WriteLine("» Digite 2 para o exercício 2");
            Console.WriteLine("» Digite 3 para o exercício 3");
            Console.WriteLine("» Digite 4 para o exercício 4");
            Console.WriteLine("» Digite 5 para o exercício 5");
            Console.WriteLine("» Digite 6 para o exercício 6");
            Console.WriteLine("» Digite 0 para sair\n");

            Console.ForegroundColor = ConsoleColor.White;
            Console.WriteLine("\n» Digite a opção escolhida:");

            int opcaoEscolhidaMenu = int.Parse(Console.ReadLine());

            switch (opcaoEscolhidaMenu)
            {
                case 1:
                    Console.Clear();
                    Exercicio01 exercicio01 = new Exercicio01();
                    exercicio01.PositivoNegativoZero();
                    break;
                case 2:
                    Console.Clear();
                    Exercicio02 exercicio02 = new Exercicio02();
                    exercicio02.DeMaiorIdade();
                    break;
                case 3:
                    Console.Clear();
                    Exercicio03 exercicio03 = new Exercicio03();
                    exercicio03.ParImpar();
                    break;
                case 4:
                    Console.Clear();
                    Exercicio04 exercicio04 = new Exercicio04();
                    exercicio04.MaiorNumero();
                    break;
                case 5:
                    Console.Clear();
                    Exercicio05 exercicio05 = new Exercicio05();
                    exercicio05.AvaliarNota();
                    break;
                case 6:
                    Console.Clear();
                    Exercicio06 exercicio06 = new Exercicio06();
                    exercicio06.CalcularMedia();
                    break;
                case 0:
                    Console.Clear();
                    Console.WriteLine("Encerrando o programa...");
                    break;
                default:
                    Console.Clear();
                    Console.WriteLine("\nOpção inválida. Tente novamente.");
                    Thread.Sleep(2000);
                    Console.Clear();
                    Cabecalho cabecalho = new Cabecalho();
                    cabecalho.ExibirCabecalho();
                    ExibirOpcoesMenu();

                    break;
            }
        }
    }
}
