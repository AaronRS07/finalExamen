using System;
using System.Web.UI;

namespace ExamenFinal_AaronRuiz.CapaVistas
{
    public partial class Canciones : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
          
        }

        protected void btnConsultarCancion_Click(object sender, EventArgs e)
        {
         
            string codigoCancion = txtCodigoCancion.Text;
            
            Response.Write("Consultar Canción: " + codigoCancion);
        }

        protected void btnAgregarCancion_Click(object sender, EventArgs e)
        {
            
            string codigoCancion = txtCodigoCancion.Text;
            string nombreCancion = txtNombreCantante.Text;

            Response.Write("Canción Agregada: " + nombreCancion + " (Código: " + codigoCancion + ")");
        }
    }
}
