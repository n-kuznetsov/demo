namespace DapperDemo.DataContract
{
	public class Employee
	{
		public int Id { get; set; }
		public string LastName { get; set; }
		public string FirstName { get; set; }
		public string MiddleName { get; set; }
		public bool IsArchived { get; set; }
		public int? IdDistrict { get; set; }
		public int? IdJob { get; set; }

		public string FIO => $"{ LastName } { FirstName } { MiddleName }";
	}
}
