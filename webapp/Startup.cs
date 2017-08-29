﻿using System;
using System.Threading.Tasks;
using Microsoft.Owin;
using Owin;
using SimpleInjector;
using SimpleInjector.Lifestyles;
using CenDek.Controllers;

[assembly: OwinStartup(typeof(CenDek.Startup))]

namespace CenDek
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            new AccountController().CreateTestUsers();
            ConfigureAuth(app);
            ConfigureSimpleInjector(app);

           
        }
    }
}
