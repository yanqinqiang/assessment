using cargill.assessment.api.Domain.Models;
using Microsoft.EntityFrameworkCore;

namespace cargill.assessment.api.Domain
{
    public class AssessmentDbContext: DbContext
    {
        public AssessmentDbContext(DbContextOptions<AssessmentDbContext> options)
        : base(options)
        {
        }

        public DbSet<ReconciliationReportItem> ReconciliationReport{ get; set; }
    }
}
