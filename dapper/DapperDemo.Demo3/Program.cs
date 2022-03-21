using Dapper;
using Dapper.FluentMap;
using Dapper.FluentMap.Dommel;
using DapperDemo.DataContract;
using Npgsql;
using System;

namespace DapperDemo.Demo3
{
    class Program
    {
        static NpgsqlConnection connection = new NpgsqlConnection("User Id=gx;Password=12345;Host=10.81.0.54;Database=demodb;Port=5432;Integrated Security=False");

        static void Main(string[] args)
        {
            FluentMapper.Initialize(c => c.ForDommel().AddMap(new EmployeeMap()));
            FluentMapper.Initialize(c => c.ForDommel().AddMap(new DistrictMap()));
            FluentMapper.Initialize(c => c.ForDommel().AddMap(new JobMap()));

            string query = @"
                select e.*, j.*, d.* 
                from employee e
                join job j on e.idjob = j.idjob
                join district d on d.iddistrict = e.iddistrict 
                where d.iddistrict = any (@dc)";

            var items = connection.Query<EmployeeDto, Job, District, EmployeeDto>(query, 
                (e, j, d) => {
                    e.District = d; 
                    e.Job = j; 
                    return e; 
                }, 
                new { dc = new[] {0, 24} },
                splitOn: "idjob,iddistrict");

            Console.ReadKey();
        }
    }
}
