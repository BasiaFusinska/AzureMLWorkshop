using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AzureMLWebServices
{
    class Program
    {
        static void Main(string[] args)
        {
            string irisApiKey = "<<apiKey>>";
            string webServiceUri = "<<webServiceUri>>";
            var values = new string[,] { { "1.3", "2.9", "4.1", "2.5" }, { "0.5", "0.7", "1", "0.5" } };

            new IrisWebService(irisApiKey, webServiceUri).InvokeRequestResponseService(values).Wait();

            Console.ReadLine();
        }
    }
}
