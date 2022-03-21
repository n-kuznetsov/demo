namespace DapperDemo.DataContract
{
    public class District
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public int IdParent { get; set; }
        public bool IsArchived { get; set; }
    }
}