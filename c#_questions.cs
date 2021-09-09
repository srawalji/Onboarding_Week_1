using System;

namespace OnboardingWeek1
{
    class Program
    {
        // make function to append something to beginning of string
        public string GiveMeSomething(string input) {
            return "something" + input;
        }

        static void Main(string[] args)
        {
            Console.WriteLine("Enter a phrase: ");
            // get user input
            string userInput = Console.ReadLine();
            // run input through function
            string userOutput = GiveMeSomething(userInput);
            // output input to console
            Console.Writeline(userOutput);
        }
    }
}