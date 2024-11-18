using System;

namespace Exercitando.Functions.Atividades
{
    internal class Exercicio04
    {
        public void MaiorNumero()
        {
            Console.ForegroundColor = ConsoleColor.Yellow;
            Console.WriteLine("\nInsira um número:");
            Console.ForegroundColor = ConsoleColor.White;
            int numero1 = int.Parse(Console.ReadLine());

            Console.ForegroundColor = ConsoleColor.Yellow;
            Console.WriteLine("\nInsira um número:");
            Console.ForegroundColor = ConsoleColor.White;
            int numero2 = int.Parse(Console.ReadLine());

            Console.ForegroundColor = ConsoleColor.Yellow;
            Console.WriteLine("\nInsira um número:");
            Console.ForegroundColor = ConsoleColor.White;
            int numero3 = int.Parse(Console.ReadLine());

            int[] numerosArray = { numero1, numero2, numero3 };

            Console.ForegroundColor = ConsoleColor.Blue;
            Console.WriteLine("\nNumero Escolhidos:");
            Console.ForegroundColor = ConsoleColor.Green;
            Console.WriteLine(string.Join(",", numerosArray));

            Array.Sort(numerosArray);
            Array.Reverse(numerosArray);

            Console.ForegroundColor = ConsoleColor.Blue;
            Console.WriteLine("\nNúmeros Organizados:");
            Console.ForegroundColor = ConsoleColor.Green;
            Console.WriteLine(string.Join(",", numerosArray));

            Console.WriteLine($"\nNumero maior: {numerosArray[0]}");

            Console.ForegroundColor = ConsoleColor.White;
            Console.WriteLine("\nDeseja refazer novamente? (S/N)");

            if (Console.ReadLine().ToUpper() != "S")
            {
                Console.Clear();
                
            }

            Console.Clear();
            MaiorNumero();
        }
    }
}
