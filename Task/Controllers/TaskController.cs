using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Task.DBContext.Model;
using Task.Models;
using Task.Service;

namespace Task.Controllers
{
    [ApiController]
    [Route("[controller]")]
    public class TaskController : ControllerBase
    {
        

        private readonly ILogger<TaskController> _logger;
        private readonly IConfiguration _configuration;
        private readonly ITaskService _taskService;

        public TaskController(ILogger<TaskController> logger, ITaskService taskService)
        {
            _logger = logger;
            _taskService = taskService;
        }

        [HttpGet("getCorporateUser")]
        public async Task<ActionResult<IEnumerable<CorporetUserResponseModel>>> GetCorporateUser()
        {
            var userList= await _taskService.getCorporateUsers();
            return Ok(userList);
        }

        [HttpGet("getIndividualUser")]
        public async Task<ActionResult<IEnumerable<IndividualUserResponseModel>>> GetIndividualUser()
        {
            var userList = await _taskService.getIndividualUsers();
            return Ok(userList);
        }

        [HttpGet("getProductAndServices")]
        public async Task<ActionResult<IEnumerable<ProductServiceResponseModel>>> GetProductAndServices()
        {
            var productservicesList = await _taskService.getProductAndServices();
            return Ok(productservicesList);
        }
        [HttpGet("getProductAndServices/{id}")]
        public async Task<ActionResult<ProductServiceResponseModel>> GetProductAndServices(long id)
        {
            var productservicesList = await _taskService.getProductAndServices(id);
            return Ok(productservicesList);
        }

        [HttpPost("saveMeetingData")]
        public async Task<IActionResult> SaveMeetingData([FromBody] Meeting_Minutes_Master_Tbl meetingData)
        {
            try
            {
                // Call the DbContext method to save data using the stored procedure
                await _taskService.savedata(meetingData);

                return Ok(new { Message = "Meeting data saved successfully" });
            }
            catch (Exception ex)
            {
                return StatusCode(500, new { Message = "Error saving meeting data", Error = ex.Message });
            }
        }
    }
}