using Dapper.FluentMap.Dommel.Mapping;
using DapperDemo.DataContract;

namespace DapperDemo.Demo2
{
    public class EmployeeMap : DommelEntityMap<Employee>
    {
        public EmployeeMap()
        {
            ToTable("employee");
            Map(x => x.Id).ToColumn("idemployee").IsKey().IsIdentity();
            Map(x => x.FirstName).ToColumn("firstname");
            Map(x => x.MiddleName).ToColumn("middlename");
            Map(x => x.LastName).ToColumn("lastname");
            Map(x => x.IsArchived).ToColumn("isarchived");
            Map(x => x.IdDistrict).ToColumn("iddistrict");
            Map(x => x.IdJob).ToColumn("idjob");
            Map(x => x.FIO).Ignore();
        }
    }
}