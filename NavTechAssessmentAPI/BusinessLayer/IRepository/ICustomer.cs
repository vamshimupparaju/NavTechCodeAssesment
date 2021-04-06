using NavTechAssessmentAPI.DataBaseLayer;
using NavTechAssessmentAPIModel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace NavTechAssessmentAPI.BusinessLayer.IRepository
{
    public interface ICustomer
    {
        Task<int> Add(CustomizedCustomer cust);
        bool IsCustomerExists(string CustomerEmail);
        
    }
}
