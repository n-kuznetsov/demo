using Dapper;
using Dapper.FluentMap;
using Dapper.FluentMap.Dommel;
using DapperDemo.DataContract;
using Dommel;
using Npgsql;
using System;
using System.Linq;
using Utility;

namespace DapperDemo.Demo2
{
    class Program
    {
        static NpgsqlConnection connection = new NpgsqlConnection("User Id=gx;Password=12345;Host=10.81.0.54;Database=demodb;Port=5432;Integrated Security=False");
        
        static void Main(string[] args)
        {
            FluentMapper.Initialize(c => c.ForDommel().AddMap(new EmployeeMap()));

            //Insert();
            //Update();
            //Delete();
            Select();

            Console.ReadKey();
        }

        static void Select()
        {
            connection.Query<Employee>("select * from employee where lastname = @lastname", new { LastName = "Кузнецов" })
                            .Foreach(e => Console.WriteLine(e.FIO));
        }

        static void Insert()
        {
            var e = new Employee()
            {
                FirstName = "Никита",
                MiddleName = "Алексеевич",
                LastName = "Кузнецов"
            };

            connection.Insert(e);
        }

        static void Update()
        {
            string query = "select * from employee where lastname = @lastname";
            Employee e = connection.Query<Employee>(query, new { lastname = "Кузнецов" }).FirstOrDefault();
            e.FirstName = "Андрей";

            connection.Update(e);
        }

        static void Delete()
        {

            string query = "select * from employee where lastname = @lastname";
            Employee e = connection.Query<Employee>(query, new { lastname = "Кузнецов" }).FirstOrDefault();

            connection.Delete(e);
        }
    }
}