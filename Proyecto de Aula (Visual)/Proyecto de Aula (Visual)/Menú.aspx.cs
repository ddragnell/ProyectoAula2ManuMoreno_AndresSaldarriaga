using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proyecto_de_Aula__Visual_
{
    public partial class Menú : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnIngresar_Paciente_Click(object sender, EventArgs e)
        {
            Response.Redirect("Agregar_Paciente.aspx");
        }

        protected void btnCambiar_eps_Click(object sender, EventArgs e)
        {
            Response.Redirect("Cambiar_EPS.aspx");
        }

        protected void btnVer_Estadisticas_Click(object sender, EventArgs e)
        {
            Response.Redirect("Estadísticas.aspx");
        }

        protected void btnCambioRegimen_Click(object sender, EventArgs e)
        {
            Response.Redirect("Agregar_Paciente.aspx");
        }

        protected void btnHistoriaClinica_Click(object sender, EventArgs e)
        {

        }

        protected void btnActualizarCostos_Click(object sender, EventArgs e)
        {

        }

        protected void btnSalir_Click(object sender, EventArgs e)
        {

        }
    }
}