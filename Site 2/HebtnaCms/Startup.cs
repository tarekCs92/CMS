using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(HebtnaCms.Startup))]
namespace HebtnaCms
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
