using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(DllApplication.Startup))]
namespace DllApplication
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
