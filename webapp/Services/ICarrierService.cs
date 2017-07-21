//using CenDek.Models.CustomerContact;
using DataAccess;
using DataAccess.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Web;

namespace CenDek.Services
{
    public interface ICarrierService
    {
        Task<int> AddCarrier(Carrier newCarrier);
        Task<Object> UpdateCarrier(Carrier updatedCarrier);
    }


    public class CarrierService : ICarrierService
    {
        CenDekContext _dbContext;

        public CarrierService(CenDekContext dbContext)
        {
            _dbContext = dbContext;
        }

        public async Task<int> AddCarrier(Carrier newCarrier)
        {
            _dbContext.Carriers.Add(newCarrier);

            try
            {
                await _dbContext.SaveChangesAsync();
            }
            catch (System.Data.Entity.Validation.DbEntityValidationException ex)
            {
                System.Diagnostics.Debug.WriteLine("{0}{1}Validation errors:{1}{2}", ex, Environment.NewLine, ex.EntityValidationErrors.Select(e => string.Join(Environment.NewLine, e.ValidationErrors.Select(v => string.Format("{0} - {1}", v.PropertyName, v.ErrorMessage)))));

                throw;
            }

            return newCarrier.CarrierID;
        }

        public async Task<Object> UpdateCarrier(Carrier updatedCarrier)
        {
            try
            {
                Carrier carrier = await _dbContext.Carriers.FindAsync(updatedCarrier.CarrierID);
                //carrier.Company = updatedCarrier.Company;
                carrier.Phone = updatedCarrier.Phone;
                carrier.Fax = updatedCarrier.Fax;
                carrier.Address1 = updatedCarrier.Address1;
                carrier.Address2 = updatedCarrier.Address2;
                carrier.City = updatedCarrier.City;
                carrier.Province = updatedCarrier.Province;
                carrier.PostalCode = updatedCarrier.PostalCode;
                carrier.Comments = updatedCarrier.Comments;
                carrier.Country = updatedCarrier.Country;
                //customer.Created = DateTime.UtcNow;
                //carrier.Modified = DateTime.UtcNow;
                await _dbContext.SaveChangesAsync();
                return new { success = true, responseText = "Carrier Saved" };
            }
            catch (Exception ex)
            {
                return new { success = false, responseText = "Carrier Save Failed" };
            }
        }
    }
}