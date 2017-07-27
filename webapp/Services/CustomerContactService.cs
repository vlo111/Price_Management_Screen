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
    public interface ICustomerContactService
    {
        Task<int> AddContact(CustomerContact newContact);
        Task<Object> UpdateCustomerContact(CustomerContact updatedCustomerContact);
    }

    public class CustomerContactService : ICustomerContactService
    {
        CenDekContext _dbContext;

        public CustomerContactService(CenDekContext dbContext)
        {
            _dbContext = dbContext;
        }

        public async Task<int> AddContact(CustomerContact newContact)
        {
            _dbContext.CustomerContacts.Add(newContact);  

            try
            {
                await _dbContext.SaveChangesAsync();
            }
            catch (System.Data.Entity.Validation.DbEntityValidationException ex)
            {
                System.Diagnostics.Debug.WriteLine("{0}{1}Validation errors:{1}{2}", ex, Environment.NewLine, ex.EntityValidationErrors.Select(e => string.Join(Environment.NewLine, e.ValidationErrors.Select(v => string.Format("{0} - {1}", v.PropertyName, v.ErrorMessage)))));

                throw;
            }

            return newContact.CustomerContactID;
        }

        public async Task<Object> UpdateCustomerContact(CustomerContact updatedCustomerContact)
        {
            try
            {
                CustomerContact customerContact = await _dbContext.CustomerContacts.FindAsync(updatedCustomerContact.CustomerContactID);
                customerContact.First = updatedCustomerContact.First;
                customerContact.Last = updatedCustomerContact.Last;
                customerContact.JobTitle = updatedCustomerContact.JobTitle;
                customerContact.Notes = updatedCustomerContact.Notes;
                await _dbContext.SaveChangesAsync();
                return new { success = true, responseText = "Customer Contact Updated" };
            }
            catch (Exception ex)
            {
                return new { success = false, responseText = "Customer Contact Update Failed" };
            }
        }

    }
}