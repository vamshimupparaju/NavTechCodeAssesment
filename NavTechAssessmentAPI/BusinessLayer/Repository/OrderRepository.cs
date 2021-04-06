using NavTechAssessmentAPI.DataBaseLayer;
using NavTechAssessmentAPIModel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Web;

namespace NavTechAssessmentAPI.BusinessLayer.Repository
{
    public class OrderRepository
    {
        private dbNavTechEntities db = new dbNavTechEntities();

        public async Task<int> Add(CustomizedOrder order)
        {
            try
            {
                order ord = new order();

                ord.ItemId = order.ItemId;
                ord.CustomerId = order.CustomerId;
                ord.Quantity = order.Quantity;
                ord.CreatedBy = order.CreatedBy;
                ord.CreatedOn = DateTime.Now;

                db.orders.Add(ord);
                await db.SaveChangesAsync();
                return 0;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}