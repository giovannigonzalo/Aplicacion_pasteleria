using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(SistemaDelivery.Startup))]
namespace SistemaDelivery
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
