using System.ComponentModel.DataAnnotations;
using System.Web.Mvc;


namespace MVC.Models
{
    [MetadataType(typeof(EmployeeMetaData))]
    public partial class Employee
    {
    }

    public class EmployeeMetaData
    {
        [StringLength(10, MinimumLength = 5)]
        [Required]
        [Remote("IsUserNameAvailable", "Employees", ErrorMessage = "UserName already in use.")]
        public string Name { get; set; }

    }
}