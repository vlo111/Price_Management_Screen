//using CenDek.Models.CustomerContact;
using DataAccess;
using DataAccess.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using System.Threading.Tasks;
using System.Web;

namespace CenDek.Services
{
    public interface ICustomerContactService
    {
        Task<int> AddContact(CustomerContact newContact);
        Task<Object> UpdateCustomerContact(CustomerContact updatedCustomerContact);
        Task<Object> UpdateCustomerContactField(int customerContactId, string field, string value);
        Task<Object> UpdateContactInfoField(int contactInfoId, string field, string value);
        Task<Object> DeleteCustomerContact(int? customerContactId);
        Task<Object> DeleteContactInfo(int? contactInfoId);
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
                return new { success = true, responseText = "Customer contact updated" };
            }
            catch (Exception)
            {
                return new { success = false, responseText = "Customer contact update failed" };
            }
        }

        public async Task<Object> UpdateCustomerContactField(int customerContactId, string field, string value)
        {
            if (String.IsNullOrWhiteSpace(value))
            {
                value = null;
            }

            try
            {
                CustomerContact customerContact = _dbContext.CustomerContacts.Where(x => x.CustomerContactID == customerContactId).Single();
                PropertyInfo prop = customerContact.GetType().GetProperty(field);
                prop.SetValue(customerContact, value);
                await _dbContext.SaveChangesAsync();
                return new { success = true, responseText = "Customer contact updated" };
            }
            catch (Exception ex)
            {
                return new { success = false, responseText = "Customer contact update failed" };
            }
        }

        public async Task<Object> UpdateContactInfoField(int contactInfoId, string field, string value)
        {
            if (String.IsNullOrWhiteSpace(value))
            {
                value = null;
            }

            try
            {
                ContactInfo contactInfo = _dbContext.ContactInfoes.Where(x => x.ContactInfoID == contactInfoId).Single();
                PropertyInfo prop = contactInfo.GetType().GetProperty(field);
                prop.SetValue(contactInfo, value);
                await _dbContext.SaveChangesAsync();
                return new { success = true, responseText = "Customer contact info updated" };
            }
            catch (Exception)
            {
                return new { success = false, responseText = "Customer contact update failed" };
            }
        }

        public async Task<Object> DeleteCustomerContact(int? customerContactId)
        {
            try
            {
                CustomerContact contact = _dbContext.CustomerContacts.Where(x => x.CustomerContactID == customerContactId).Single();
                contact.ContactInfos = _dbContext.ContactInfoes.Where(x => x.CustomerContactID == contact.CustomerContactID).ToList();

                foreach (ContactInfo info in contact.ContactInfos)
                {
                    _dbContext.ContactInfoes.Remove(info);
                }

                _dbContext.CustomerContacts.Remove(contact);

                await _dbContext.SaveChangesAsync();
                return new { success = true, responseText = "Customer contact deleted" };
            }
            catch (Exception)
            {
                return new { success = false, responseText = "Customer contact delete failed" };
            }
        }

        public async Task<Object> DeleteContactInfo(int? contactInfoId)
        {
            try
            {
                ContactInfo contactInfo = _dbContext.ContactInfoes.Where(x => x.ContactInfoID == contactInfoId).Single();
                _dbContext.ContactInfoes.Remove(contactInfo);
                await _dbContext.SaveChangesAsync();
                return new { success = true, responseText = "Contact info deleted" };
            }
            catch (Exception)
            {
                return new { success = false, responseText = "Contact info delete failed" };
            }
        }
    }
}