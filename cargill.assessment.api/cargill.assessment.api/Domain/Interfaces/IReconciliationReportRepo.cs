using cargill.assessment.api.Domain.Models;

namespace cargill.assessment.api.Domain.Interfaces
{
    public interface IReconciliationReportRepo
    {
        Task<IList<ReconciliationReportItem>> GetReconciliationReport();
    }
}
