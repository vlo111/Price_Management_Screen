﻿//using CenDek.Models.CustomerContact;
using DataAccess;
using DataAccess.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Web;

namespace CenDek.Services
{
    public interface ICustomerCarrierService
    {
        Task<int> AddCarrier(CustomerCarrier newCustomerCarrier);
        //Task<Object> UpdateCustomerContact(Customer updatedCustomer);
    }


    public class CustomerCarrierService : ICustomerCarrierService
    {
        CenDekContext _dbContext;

        public CustomerCarrierService(CenDekContext dbContext)
        {
            _dbContext = dbContext;
        }

        public async Task<int> AddCarrier(CustomerCarrier newCustomerCarrier)
        {
            _dbContext.CustomerCarriers.Add(newCustomerCarrier);

            try
            {
                await _dbContext.SaveChangesAsync();
            }
            catch (System.Data.Entity.Validation.DbEntityValidationException ex)
            {
                System.Diagnostics.Debug.WriteLine("{0}{1}Validation errors:{1}{2}", ex, Environment.NewLine, ex.EntityValidationErrors.Select(e => string.Join(Environment.NewLine, e.ValidationErrors.Select(v => string.Format("{0} - {1}", v.PropertyName, v.ErrorMessage)))));

                throw;
            }

            return newCustomerCarrier.CarrierID;
        }

        //public async Task<Object> UpdateCustomer(Customer updatedCustomer)
        //{
        //    try
        //    {
        //        Customer customer = await _dbContext.Customers.FindAsync(updatedCustomer.CustomerID);
        //        customer.Company = updatedCustomer.Company;
        //        customer.PhoneNo = updatedCustomer.PhoneNo;
        //        customer.Fax = updatedCustomer.Fax;
        //        customer.Address1 = updatedCustomer.Address1;
        //        customer.Address2 = updatedCustomer.Address2;
        //        customer.City = updatedCustomer.City;
        //        customer.Province = updatedCustomer.Province;
        //        customer.PostalCode = updatedCustomer.PostalCode;
        //        customer.Comments = updatedCustomer.Comments;
        //        customer.Country = updatedCustomer.Country;
        //        //customer.Created = DateTime.UtcNow;
        //        customer.Modified = DateTime.UtcNow;
        //        await _dbContext.SaveChangesAsync();
        //        return new { success = true, responseText = "Customer Saved" };
        //    }
        //    catch (Exception ex)
        //    {
        //        return new { success = false, responseText = "Customer Save Failed" };
        //    }
        //}
    }
}