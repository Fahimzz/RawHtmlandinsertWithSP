using Microsoft.AspNetCore.Mvc;
using Task.DBContext.Model;
using Task.Models;

namespace Task.Service
{
    public interface ITaskService
    {
        Task<ActionResult<IEnumerable<CorporetUserResponseModel>>> getCorporateUsers();
        Task<ActionResult<IEnumerable<IndividualUserResponseModel>>> getIndividualUsers();
        Task<ActionResult<IEnumerable<ProductServiceResponseModel>>> getProductAndServices();
        Task<ActionResult<ProductServiceResponseModel>> getProductAndServices(long id);
        Task<ActionResult<Meeting_Minutes_Master_Tbl>> savedata(Meeting_Minutes_Master_Tbl meetingData);

    }
}
