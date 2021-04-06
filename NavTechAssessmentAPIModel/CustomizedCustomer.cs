using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace NavTechAssessmentAPIModel
{
    public class CustomizedCustomer
    {
      
        public int CustomerId { get; set; }
        public string FirstName { get; set; }        
        public string LastName { get; set; }
        public string MobileNo { get; set; }
        public string Email { get; set; }
        public string City { get; set; }
        public string PinCode { get; set; }
        public int CreatedBy { get; set; }
    }
}
