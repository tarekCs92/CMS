using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(PersonalityCMS.Startup))]
namespace PersonalityCMS
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
