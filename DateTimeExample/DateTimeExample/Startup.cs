using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(DateTimeExample.Startup))]
namespace DateTimeExample
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
