using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(WhiteLotusYoga.Startup))]
namespace WhiteLotusYoga
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
