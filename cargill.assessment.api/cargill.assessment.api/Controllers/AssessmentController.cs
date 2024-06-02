using cargill.assessment.api.Domain.Interfaces;
using Microsoft.AspNetCore.Mvc;

namespace cargill.assessment.api.Controllers
{
    [ApiController]
    [Route("[controller]")]
    public class AssessmentController : ControllerBase
    {
        private readonly IReconciliationReportRepo _reconciliationReportRepo;
        private readonly ILogger<AssessmentController> _logger;

        public AssessmentController(IReconciliationReportRepo reconciliationReportRepo, 
            ILogger<AssessmentController> logger)
        {
            _reconciliationReportRepo = reconciliationReportRepo;
            _logger = logger;
        }

        [HttpGet("ReconciliationReport")]
        public async Task<IActionResult> Get()
        {
            try
            {
                var result = await _reconciliationReportRepo.GetReconciliationReport();
                return Ok(result);
            }
            catch (Exception ex)
            {
                _logger.LogError(ex, "Error getting reconciliation report");
                throw;
            }
        }
    }
}