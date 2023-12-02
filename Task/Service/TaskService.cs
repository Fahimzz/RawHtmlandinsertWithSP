using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Task.DBContext;
using Task.DBContext.Model;
using Task.Models;

namespace Task.Service
{
    public class TaskService : ITaskService
    {
        private readonly TaskDbContext _dbContext;
        public TaskService(TaskDbContext dbContext)
        {
            _dbContext = dbContext;

        }

        public async Task<ActionResult<IEnumerable<CorporetUserResponseModel>>> getCorporateUsers()
        {
            var users = await _dbContext.Corporate_Customer_Tbl.Where(x => x.isDelete == false).ToListAsync();
            var userList = new List<CorporetUserResponseModel>();
            foreach (var user in users)
            {
                CorporetUserResponseModel corporetUserResponseModel = new CorporetUserResponseModel
                {
                    id = user.id,
                    createAt = user.createAt,
                    Name = user.Name
                };
                userList.Add(corporetUserResponseModel);

            }
            return userList;
        }

        public async Task<ActionResult<IEnumerable<IndividualUserResponseModel>>> getIndividualUsers()
        {
            var users = await _dbContext.Individual_Customer_Tbl.Where(x => x.isDelete == false).ToListAsync();
            var userList = new List<IndividualUserResponseModel>();
            foreach (var user in users)
            {
                IndividualUserResponseModel individualUserResponseModel = new IndividualUserResponseModel
                {
                    id = user.id,
                    createAt = user.createAt,
                    Name = user.Name
                };
                userList.Add(individualUserResponseModel);

            }
            return userList;
        }
        public async Task<ActionResult<IEnumerable<ProductServiceResponseModel>>> getProductAndServices()
        {
            var productServices = await _dbContext.Products_Service_Tbls.Where(x => x.isDelete == false).ToListAsync();
            var productServicesList = new List<ProductServiceResponseModel>();
            foreach (var productsrevices in productServices)
            {
                ProductServiceResponseModel productServiceResponse = new ProductServiceResponseModel
                {
                    id = productsrevices.id,
                    createAt = productsrevices.createAt,
                    Name = productsrevices.Name,
                    Quantities = productsrevices.Quantities,
                    Type = productsrevices.Type,
                    Unit= productsrevices.Unit,
                };
                productServicesList.Add(productServiceResponse);

            }
            return productServicesList;
        }

        public async Task<ActionResult<ProductServiceResponseModel>> getProductAndServices(long id)
        {
            var productServices = await _dbContext.Products_Service_Tbls.Where(x => x.isDelete == false && x.id==id).FirstOrDefaultAsync();
            
            
             ProductServiceResponseModel productServiceResponse = new ProductServiceResponseModel
             {
                 id = productServices.id,
                 createAt = productServices.createAt,
                 Name = productServices.Name,
                 Quantities = productServices.Quantities,
                 Type = productServices.Type,
                 Unit = productServices.Unit,
             };

            
            return productServiceResponse;
        }

        public async Task<ActionResult<Meeting_Minutes_Master_Tbl>> savedata(Meeting_Minutes_Master_Tbl meetingData)
        {
            await _dbContext.SaveMeetingMinutesAsync(
                    meetingData.CustomerId,
                    meetingData.MeetingDate,
                    meetingData.MeetingTime,
                    meetingData.AttendesFromClient,
                    meetingData.AttendesFromHost,
                    meetingData.MeetingAgenda,
                    meetingData.MeetingDecision,
                    meetingData.MeetingDiscussion
                );


            return null;
        }
    }

}
