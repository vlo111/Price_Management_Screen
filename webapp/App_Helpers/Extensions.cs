﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Web;

namespace CenDek.App_Helpers
{
    public static class Extensions
    {

        public static IQueryable<T> OrderBy<T>(this IQueryable<T> source, IEnumerable<DataTables.AspNet.Core.IColumn> sortModels)
        {
            var expression = source.Expression;
            int count = 0;
            foreach (var item in sortModels)
            {
                var parameter = Expression.Parameter(typeof(T), "x");
                var selector = Expression.PropertyOrField(parameter, item.Field);
                var method = item.Sort.Direction == DataTables.AspNet.Core.SortDirection.Descending ?
                    (count == 0 ? "OrderByDescending" : "ThenByDescending") :
                    (count == 0 ? "OrderBy" : "ThenBy");
                expression = Expression.Call(typeof(Queryable), method,
                    new Type[] { source.ElementType, selector.Type },
                    expression, Expression.Quote(Expression.Lambda(selector, parameter)));
                count++;
            }
            return count > 0 ? source.Provider.CreateQuery<T>(expression) : source;
        }
    }
}