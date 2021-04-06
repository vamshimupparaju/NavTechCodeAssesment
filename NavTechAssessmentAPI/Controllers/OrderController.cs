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
using NavTechAssessmentAPI.DataBaseLayer;
using NavTechAssessmentAPIModel;
using NavTechAssessmentAPI.BusinessLayer.Repository;

namespace NavTechAssessmentAPI.Controllers
{
    public class OrderController : ApiController
    {
        private dbNavTechEntities db = new dbNavTechEntities();

        /// <summary>
        /// This Get method is used to retrive all orders
        /// it accepts the PageIndex and Page Number as a input parameter
        /// </summary>
        /// <param name="order"></param>
        /// <returns>            
        /// on the success it returns status code - 200
        /// returns all the order details
        /// </returns>
        [HttpGet]
        public async Task<IHttpActionResult> Getorders(PaginationFilter filter)
        {
            try
            {
                    var validFilter = new PaginationFilter(filter.PageNumber, filter.PageSize);

                    var orderquery = (
                                        from o in db.orders
                                        join c in db.customers on o.CustomerId equals c.CustomerId
                                        join i in db.items on o.ItemId equals i.ItemId
                                        select new PagedData
                                        {
                                            OrderId = o.OrderId,
                                            CustomerName = c.FirstName + " " + c.LastName,
                                            MobileNo = c.MobileNo,
                                            Email = c.Email,
                                            City = c.City,
                                            PinCode = c.PinCode,
                                            ItemName = i.Name,
                                            Manufacturer = i.Manufacturer,
                                            Quantity = o.Quantity.Value,
                                            Price = i.Price.Value
                                        }
                                     );

                    var totalNumberOfRecords = await orderquery.CountAsync();
                    var pagedData = await orderquery
                            .OrderBy(PagedData => PagedData.OrderId)
                            .Skip((validFilter.PageNumber - 1) * validFilter.PageSize)
                            .Take(validFilter.PageSize)
                            .ToListAsync();
                    return Ok(new PagedResponse<List<PagedData>>(pagedData, validFilter.PageNumber, validFilter.PageSize,validFilter.TotalRecords));
            }
            catch (Exception ex)
            {
                return StatusCode(HttpStatusCode.InternalServerError);
            }
            
        }

        /// <summary>
        /// This Post method is used to create the order
        /// it accepts the CustomizedOrder class properties as a input parameter
        /// </summary>
        /// <param name="order"></param>
        /// <returns>
        /// When the model state is invalid api returns as it is a bad reuest    
        /// on the success of insertion it returns status code - 200
        /// </returns>
        [HttpPost]
        public async Task<IHttpActionResult> Createorder(CustomizedOrder order)
        {

            try
            {
                OrderRepository custrp = new OrderRepository();
                if (!ModelState.IsValid)
                {
                    return BadRequest(ModelState);
                }                
                else
                {
                    await custrp.Add(order);
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