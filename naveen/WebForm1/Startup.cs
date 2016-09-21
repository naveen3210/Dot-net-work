using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(WebForm1.Startup))]
namespace WebForm1
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
