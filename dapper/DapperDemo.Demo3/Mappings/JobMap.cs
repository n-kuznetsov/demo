using Dapper.FluentMap.Dommel.Mapping;
using DapperDemo.DataContract;

namespace DapperDemo.Demo3
{
    public class JobMap : DommelEntityMap<Job>
    {
        public JobMap()
        {
            ToTable("job");
            Map(x => x.Id).ToColumn("idjob").IsKey().IsIdentity();
            Map(x => x.Name).ToColumn("jobname");
            Map(x => x.IsArchived).ToColumn("isarchived");
        }
    }
}