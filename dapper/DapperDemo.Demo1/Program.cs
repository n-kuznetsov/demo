using Dapper;
using DapperDemo.DataContract;
using Npgsql;
using System;
using Utility;

namespace Demo1
{
    class Program
    {
        static void Main(string[] args)
        {
            NpgsqlConnection connection = new NpgsqlConnection("User Id=gx;Password=12345;Host=10.81.0.54;Database=demodb;Port=5432;Integrated Security=False");

            connection.Query<Employee>("select * from employee")
                .Foreach(e => Console.WriteLine(e.FIO));

            //string query = string.IsNullOrWhiteSpace(query = Console.ReadLine()) ? "Select 2 + 2" : query;
            //Console.WriteLine(connection.ExecuteScalar(query));

            Console.ReadKey();
        }
    }
}
