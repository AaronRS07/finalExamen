using System;
using System.Web.UI;

namespace ExamenFinal_AaronRuiz.CapaVistas
{
    public partial class Cantantes : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void bconsultar_Click(object sender, EventArgs e)
        {
            
            string codigoCancion = tcodigo.Text;
            string nombreCancion = tnombre.Text;

            
            Response.Write("Consultar Canción: Código - " + codigoCancion + ", Nombre - " + nombreCancion);
        }

        protected void baagregar_Click(object sender, EventArgs e)
        {
            
            string codigoCancion = tcodigo.Text;
            string nombreCancion = tnombre.Text;

            
            Response.Write("Canción Agregada: Código - " + codigoCancion + ", Nombre - " + nombreCancion);
        }
    }
}
