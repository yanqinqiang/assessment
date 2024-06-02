using cargill.assessment.api.Domain;
using cargill.assessment.api.Domain.Interfaces;
using cargill.assessment.api.Domain.Models;
using Microsoft.EntityFrameworkCore;

namespace cargill.assessment.api.Repository
{
    public class ReconciliationReportRepo : IReconciliationReportRepo
    {
        private readonly AssessmentDbContext _dbContext;

        private const string SpGetReconciliationReportRaw =
            "EXEC DBO.SP_ReconciliationReportGet";

        public ReconciliationReportRepo(AssessmentDbContext dbContext)
        {
            this._dbContext = dbContext;
        }
        public async Task<IList<ReconciliationReportItem>> GetReconciliationReport()
        {
            var reconciliationReport = await _dbContext.ReconciliationReport.FromSqlRaw(
                SpGetReconciliationReportRaw).ToListAsync();

            return reconciliationReport;
        }
    }
}
