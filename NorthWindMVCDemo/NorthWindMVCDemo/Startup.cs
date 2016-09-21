using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(NorthWindMVCDemo.Startup))]
namespace NorthWindMVCDemo
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
