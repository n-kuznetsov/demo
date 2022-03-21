using Dapper.FluentMap.Dommel.Mapping;

namespace DapperDemo.Demo3
{
    public class EmployeeMap : DommelEntityMap<EmployeeDto>
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
            Map(x => x.Job).Ignore();
            Map(x => x.District).Ignore();
        }
    }
}