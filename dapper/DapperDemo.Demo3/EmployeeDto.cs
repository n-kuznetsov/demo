using DapperDemo.DataContract;

namespace DapperDemo.Demo3
{
    public class EmployeeDto : Employee
    {
        public District District { get; set; }
        public Job Job { get; set; }
    }
}