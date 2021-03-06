﻿using DataAccess;
using DataAccess.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Web;

namespace CenDek.Services
{
    public interface ICustomerService
    {
        Task<int> AddNewCustomer(Customer newCustomer);
        Task<Object> UpdateCustomer(Customer updatedCustomer);
        Task<Object> DeleteCustomer(int? customerId);
    }

    public class CustomerService : ICustomerService
    {
        CenDekContext _dbContext;

        public CustomerService(CenDekContext dbContext)
        {
            _dbContext = dbContext;
        }

        public async Task<Object> UpdateCustomer(Customer updatedCustomer)
        {
            try
            {
                Customer customer = await _dbContext.Customers.FindAsync(updatedCustomer.CustomerID);
                customer.Company = updatedCustomer.Company;
                customer.PhoneNo = updatedCustomer.PhoneNo;
                customer.Fax = updatedCustomer.Fax;
                customer.Address1 = updatedCustomer.Address1;
                customer.Address2 = updatedCustomer.Address2;
                customer.City = updatedCustomer.City;
                customer.Province = updatedCustomer.Province;
                customer.PostalCode = updatedCustomer.PostalCode;
                customer.Comments = updatedCustomer.Comments;
                customer.Country = updatedCustomer.Country;
                customer.DekSmartDiscount = updatedCustomer.DekSmartDiscount;
                customer.GSTExempt = updatedCustomer.GSTExempt;
                customer.PSTExempt = updatedCustomer.PSTExempt;
                customer.ShipCharges = updatedCustomer.ShipCharges;
                customer.Packaging = updatedCustomer.Packaging;
                customer.Modified = DateTime.UtcNow;
                await _dbContext.SaveChangesAsync();
                return new { success = true, responseText = "Customer Saved" };
            }
            catch (Exception ex)
            {
                return new { success = false, responseText = "Customer Save Failed" };
            }
        }

        public async Task<int> AddNewCustomer(Customer newCustomer)
        {
            newCustomer.Created = DateTime.Now;
            newCustomer.Modified = DateTime.Now;
            newCustomer.GSTExempt = false;
            newCustomer.PSTExempt = false;
            newCustomer.ShipCharges = "Collect";
            newCustomer.Packaging = 4;

            _dbContext.Customers.Add(newCustomer);

            try
            {
                await _dbContext.SaveChangesAsync();
            }
            catch (System.Data.Entity.Validation.DbEntityValidationException ex)
            {
                System.Diagnostics.Debug.WriteLine("{0}{1}Validation errors:{1}{2}", ex, Environment.NewLine, ex.EntityValidationErrors.Select(e => string.Join(Environment.NewLine, e.ValidationErrors.Select(v => string.Format("{0} - {1}", v.PropertyName, v.ErrorMessage)))));

                throw;
            }
            return newCustomer.CustomerID;
        }

        public async Task<Object> DeleteCustomer(int? customerId)
        {
            try
            {
                Customer customer = _dbContext.Customers.Where(x => x.CustomerID == customerId).Single();
                _dbContext.Customers.Remove(customer);

                await _dbContext.SaveChangesAsync();
                return new { success = true, responseText = "Customer deleted" };
            }
            catch (Exception ex)
            {
                return new { success = false, responseText = ex.InnerException.InnerException.Message };
            }
        }
    }
}