using CenDek.Models.Customer;
using DataAccess;
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
        Task<int> AddCustomer(NewCustomer newCustomer);
        Task<Object> UpdateCustomer(Customer updatedCustomer);
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
                //customer.Country = newCustomer.Con;
                //customer.Created = DateTime.UtcNow;
                customer.Modified = DateTime.UtcNow;
                await _dbContext.SaveChangesAsync();
                return new { success = true, responseText = "Customer Saved" };
            }
            catch (Exception ex)
            {
                return new { success = false, responseText = "Customer Save Failed" };
            }
        }

        public async Task<int> AddCustomer(NewCustomer newCustomer)
        {
            Customer customer = new Customer();
            //todo finish this
            customer.Company = newCustomer.CompanyName;
            customer.PhoneNo = newCustomer.PhoneNo;
            customer.Fax = newCustomer.Fax;
            customer.Address1 = newCustomer.Address1;
            customer.Address2 = newCustomer.Address2;
            customer.City = newCustomer.City;
            customer.Province = newCustomer.Province;
            customer.PostalCode = newCustomer.PostalCode;
            //customer.Country = newCustomer.Con;
            customer.Comments = newCustomer.Comments;
            customer.Created = DateTime.UtcNow;
            customer.Modified = DateTime.UtcNow;
            //customer.EmployeeID = 1;
            _dbContext.Customers.Add(customer);

            CustomerContact contact = new CustomerContact();
            contact.First = newCustomer.ContactFirst;
            contact.Last = newCustomer.ContactLast;
            contact.JobTitle = newCustomer.JobTitle;
            contact.Notes = newCustomer.ContactNotes;
            customer.CustomerContacts.Add(contact);

            if (newCustomer.ContactPhoneNo != null && newCustomer.ContactPhoneNo.Length > 0)
            {
                ContactInfo contactInfo = new ContactInfo();
                contactInfo.Contact = newCustomer.ContactPhoneNo;
                contactInfo.Name = "Phone";
                contactInfo.ContactInfoTypeID = _dbContext.ContactInfoTypes.Single(t => t.Name == "Phone").ContactInfoTypeID;
            }

            if (newCustomer.ContactEmail != null && newCustomer.ContactEmail.Length > 0)
            {
                ContactInfo contactInfo = new ContactInfo();
                contactInfo.Contact = newCustomer.ContactEmail;
                contactInfo.Name = "Email";
                contactInfo.ContactInfoTypeID = _dbContext.ContactInfoTypes.Single(t => t.Name == "Email").ContactInfoTypeID;
            }

            if (newCustomer.ContactCellNo != null && newCustomer.ContactCellNo.Length > 0)
            {
                ContactInfo contactInfo = new ContactInfo();
                contactInfo.Contact = newCustomer.ContactCellNo;
                contactInfo.Name = "Cell";
                contactInfo.ContactInfoTypeID = _dbContext.ContactInfoTypes.Single(t => t.Name == "Phone").ContactInfoTypeID;
            }

            if (newCustomer.ContactFax != null && newCustomer.ContactFax.Length > 0)
            {
                ContactInfo contactInfo = new ContactInfo();
                contactInfo.Contact = newCustomer.ContactFax;
                contactInfo.Name = "Fax";
                contactInfo.ContactInfoTypeID = _dbContext.ContactInfoTypes.Single(t => t.Name == "Phone").ContactInfoTypeID;
            }
            
            try
            {
                await _dbContext.SaveChangesAsync();
            }
            catch (System.Data.Entity.Validation.DbEntityValidationException ex)
            {
                System.Diagnostics.Debug.WriteLine("{0}{1}Validation errors:{1}{2}", ex, Environment.NewLine, ex.EntityValidationErrors.Select(e => string.Join(Environment.NewLine, e.ValidationErrors.Select(v => string.Format("{0} - {1}", v.PropertyName, v.ErrorMessage)))));

                throw;
            }
            return customer.CustomerID;
        }
    }
}