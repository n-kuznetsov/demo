using Dapper.FluentMap.Dommel.Mapping;
using DapperDemo.DataContract;

namespace DapperDemo.Demo3
{
    public class DistrictMap : DommelEntityMap<District>
    {
        public DistrictMap()
        {
            ToTable("district");
            Map(x => x.Id).ToColumn("iddistrict").IsKey().IsIdentity();
            Map(x => x.Name).ToColumn("districtname");
            Map(x => x.IdParent).ToColumn("idparent");
            Map(x => x.IsArchived).ToColumn("isarchived");
        }
    }
}