using NavTechAssessmentAPI.BusinessLayer.IRepository;
using NavTechAssessmentAPI.DataBaseLayer;
using NavTechAssessmentAPIModel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Web;

namespace NavTechAssessmentAPI.BusinessLayer.Repository
{
    public class CustomerRepository : ICustomer
    {
        private dbNavTechEntities db = new dbNavTechEntities();

        public async Task<int> Add(CustomizedCustomer customer)
        {
            try
            {
                customer cust = new customer();
                cust.FirstName = customer.FirstName;
                cust.LastName = customer.LastName;
                cust.MobileNo = customer.MobileNo;
                cust.Email = customer.Email;
                cust.City = customer.City;
                cust.PinCode = customer.PinCode;
                cust.CreatedBy = customer.CreatedBy;
                cust.CreatedOn = DateTime.Now;
                

                db.customers.Add(cust);
                await db.SaveChangesAsync();
                return 0;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public bool IsCustomerExists(string CustomerEmail)
        {
            return db.customers.Any(e => e.Email.Equals(CustomerEmail,StringComparison.InvariantCulture));
        }
    }
}