using System;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security; 

namespace ExamenFinal_AaronRuiz.CapaVistas
{
    public partial class Salir : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnSalir_Click(object sender, EventArgs e)
        {
            
            Session.Abandon();  
            FormsAuthentication.SignOut(); 

            
            Response.Redirect("~/Login.aspx");  
        }
    }
}

