using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Data.Entity.Infrastructure;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Threading.Tasks;
using System.Web.Http;
using System.Web.Http.Description;
using NavTechAssessmentAPIModel;
using NavTechAssessmentAPI.BusinessLayer;
using NavTechAssessmentAPI.BusinessLayer.Repository;

namespace NavTechAssessmentAPI.Controllers
{
    public class CustomerController : ApiController
    {

        /// <summary>
        /// This Post method is used to create the customer
        /// it accepts the CustomizedCustomer class properties as a input parameter
        /// </summary>
        /// <param name="customer"></param>
        /// <returns>
        /// When the model state is invalid api returns as it is a bad reuest
        /// when the customer already exists with emailid then it returns status code - 409
        /// on the success of insertion it returns status code - 200
        /// </returns>
        [HttpPost]       
        public async Task<IHttpActionResult> CreateCustomer(CustomizedCustomer customer)
        {
            
            try
            {
                CustomerRepository custrp = new CustomerRepository();
                if (!ModelState.IsValid)
                {
                    return BadRequest(ModelState);
                }
                else if (custrp.IsCustomerExists(customer.Email))
                {
                    return StatusCode(HttpStatusCode.Conflict);
                }
                else
                {
                    await custrp.Add(customer);
                    return Ok();
                }
                
            }

            catch (Exception ex)
            {
                return StatusCode(HttpStatusCode.InternalServerError);
            }
            
        }

      

        
    }
}