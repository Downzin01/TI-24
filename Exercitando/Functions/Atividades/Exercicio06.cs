using Exercitando.Functions.Utilidades;
using System;

namespace Exercitando.Functions.Atividades
{
    internal class Exercicio06
    {
        public void CalcularMedia()
        {
            Console.ForegroundColor = ConsoleColor.Yellow;
            Console.WriteLine("\n» Digite o nome do aluno:");

            Console.ForegroundColor = ConsoleColor.White;
            string nomeAluno = Console.ReadLine();
            Console.WriteLine();

            const int tamanho = 3;
            int[] notasArray = new int[tamanho];
            int soma = 0;

            for (int i = 0; i < tamanho; i++)
            {
                Console.ForegroundColor = ConsoleColor.Blue;
                Console.WriteLine($"» Digite a {i + 1}ª nota:");
                Console.ForegroundColor = ConsoleColor.White;
                notasArray[i] = int.Parse(Console.ReadLine());
                soma += notasArray[i];
            }

            int resultadoMedia = soma / notasArray.Length;

            Console.ForegroundColor = ConsoleColor.Green;

            string respostaAprovacao;

            if (resultadoMedia >= 7)
            {
                Console.ForegroundColor = ConsoleColor.Green;
                respostaAprovacao = "Está Aprovado!";
            }
            else if (resultadoMedia >= 5)
            {
                Console.ForegroundColor = ConsoleColor.Yellow;
                respostaAprovacao = "Está Rescuperação!";
            }
            else
            {
                Console.ForegroundColor = ConsoleColor.Red;
                respostaAprovacao = "Está Reprovado!";
            }

            Console.WriteLine($"\n» A média de {nomeAluno} é {resultadoMedia}");
            Console.WriteLine($"» {respostaAprovacao}");

            Console.ForegroundColor = ConsoleColor.White;
            Console.WriteLine("\nGostaria de refazer novamente? (S/N)");

            if (Console.ReadLine().ToLower() == "s")
            {
                Console.Clear();
                CalcularMedia();
            }
            else
            {
                Console.Clear();
                Cabecalho cabecalho = new Cabecalho();
                Menus menus = new Menus();

                cabecalho.ExibirCabecalho();
                menus.ExibirOpcoesMenu();
            }
        }
    }
}
