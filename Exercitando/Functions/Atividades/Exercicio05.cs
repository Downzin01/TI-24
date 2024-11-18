using System;

namespace Exercitando.Functions.Atividades
{
    internal class Exercicio05
    {
        public void AvaliarNota()
        {
            Console.WriteLine("\nInsira sua nota de 0 à 10");
            float notaAdicionada = float.Parse(Console.ReadLine());

            if (notaAdicionada >= 7)
            {
                Console.WriteLine("\nVocê foi aprovado!");
            }
            else if (notaAdicionada >= 5)
            {
                Console.WriteLine("\nVocê está de recuperação!");
            }
            else
            {
                Console.WriteLine("\nVocê está reprovado!");
            }
        }
    }
}
