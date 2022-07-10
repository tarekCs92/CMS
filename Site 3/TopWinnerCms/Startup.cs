using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(TopWinnerCms.Startup))]
namespace TopWinnerCms
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
