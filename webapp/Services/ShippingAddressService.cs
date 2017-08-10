﻿using DataAccess;
using DataAccess.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using System.Threading.Tasks;
using System.Web;

namespace CenDek.Services
{
    public interface IShippingAddressService
    {
        Task<int> AddShippingAddress(ShippingAddress newShippingAddress);
    }

    public class ShippingAddressService : IShippingAddressService
    {
        CenDekContext _dbContext;

        public ShippingAddressService(CenDekContext dbContext)
        {
            _dbContext = dbContext;
        }

        public async Task<int> AddShippingAddress(ShippingAddress newShippingAddress)
        {
           newShippingAddress.LastUsed = DateTime.Now;
            _dbContext.ShippingAddresses.Add(newShippingAddress);

            try
            {
                await _dbContext.SaveChangesAsync();
            }
            catch (System.Data.Entity.Validation.DbEntityValidationException ex)
            {
                System.Diagnostics.Debug.WriteLine("{0}{1}Validation errors:{1}{2}", ex, Environment.NewLine, ex.EntityValidationErrors.Select(e => string.Join(Environment.NewLine, e.ValidationErrors.Select(v => string.Format("{0} - {1}", v.PropertyName, v.ErrorMessage)))));

                throw;
            }
            catch (Exception ex)
            {
                System.Diagnostics.Debug.WriteLine(ex);
            }

            return newShippingAddress.ShippingAddressID;
        }
    }
}