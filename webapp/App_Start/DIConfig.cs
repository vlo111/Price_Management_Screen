using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using Microsoft.Owin;
using Microsoft.Owin.Security.Cookies;
using CenDek.Services;
using Owin;
using System;
using SimpleInjector;
using SimpleInjector.Lifestyles;
using SimpleInjector.Integration.Web.Mvc;
using SimpleInjector.Integration.Web;
using DataAccess;
using System.Data.Entity;
using System.Web.Mvc;

namespace CenDek
{
    public partial class Startup
    {

        public void ConfigureSimpleInjector(IAppBuilder app)
        {
            var container = new Container();
            container.Options.DefaultScopedLifestyle = new WebRequestLifestyle();

            // 2. Configure the container (register)
            // See below for more configuration examples
            container.Register<CenDekContext, CenDekContext> (Lifestyle.Scoped);
            container.Register<ICustomerService, CustomerService>(Lifestyle.Transient);
            container.Register<ICustomerContactService, CustomerContactService>(Lifestyle.Transient);

            // 3. Optionally verify the container's configuration.
            container.Verify();

            // 4. Store the container for use by the application
            DependencyResolver.SetResolver(new SimpleInjectorDependencyResolver(container));

            app.Use(async (context, next) => {
                using (AsyncScopedLifestyle.BeginScope(container))
                {
                    await next();
                }
            });
        }
    }
}