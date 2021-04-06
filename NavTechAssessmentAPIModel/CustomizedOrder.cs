using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace NavTechAssessmentAPIModel
{
    public class CustomizedOrder
    {
        public int OrderId { get; set; }
        public int ItemId { get; set; }
        public int CustomerId { get; set; }
        public int Quantity { get; set; }
        public int CreatedBy { get; set; }
    }
}
