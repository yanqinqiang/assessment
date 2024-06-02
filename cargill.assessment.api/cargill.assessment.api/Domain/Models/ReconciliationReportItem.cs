using Microsoft.EntityFrameworkCore;

namespace cargill.assessment.api.Domain.Models
{
    [Keyless]
    public class ReconciliationReportItem
    {

        public string ContractNo { get; set; }
        public string ACCode { get; set; }
        public string Description { get; set; }
        public string SupplierCode { get; set; }
        public string SupplierName { get; set; }
        public DateTime DueDate { get; set; }
        public decimal AmountInCtrm { get; set; }
        public decimal AmountInJde { get; set; }

        public double PdRate { get; set; }
        public double ExpectedLoss { get; set; }
        public string SFAcctTitle { get; set; }
        public int Insurance { get; set; }
        public double InsuranceRate { get; set; }
        public decimal InsuranceLimit { get; set; }
        public double NetExposure { get; set; }
    }
}
