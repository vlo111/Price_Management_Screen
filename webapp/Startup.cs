using System;
using System.Threading.Tasks;
using Microsoft.Owin;
using Owin;
using SimpleInjector;
using SimpleInjector.Lifestyles;

[assembly: OwinStartup(typeof(CenDek.Startup))]

namespace CenDek
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
            ConfigureSimpleInjector(app);

           
        }
    }
}
