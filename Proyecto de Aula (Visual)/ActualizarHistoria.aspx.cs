using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Proyecto_de_Aula__Visual_.Models;

namespace Proyecto_de_Aula__Visual_
{
    public partial class ActualizarHistoria : System.Web.UI.Page
    {
        public static List<Paciente> lstPacientes = new List<Paciente>();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSalir_Click(object sender, EventArgs e)
        {
            Response.Redirect("Menú.aspx");
        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            try
            {
                if (txtId.Text == "")
                {
                    throw new FormatException("Ingrese su identificaion");
                }

                else if (txtHistoria.Text == "")
                {
                    throw new FormatException("Seleccione el régimen a la que desea cambiarse");
                }
                else
                {
                    ActualizacionHistoria();
                }

            }
            catch (FormatException ex)
            {
                this.Page.ClientScript.RegisterStartupScript(this.GetType(), "ex", "alert('" + ex.Message + "');", true);
            }
        }
        public void Limpiar()
        {
            txtId.Text = "";
            txtHistoria.Text = "";

        }

        public void ActualizacionHistoria()
        {
            bool contEntro = false;
            string id = txtId.Text;
            foreach (Paciente pac in lstPacientes)
            {
                if (pac.Id == id)
                {
                    pac.HistoriaClinica += txtHistoria.Text;
                    lbVerificar.Text = "Historia clínica actualizada correctamente";
                    contEntro = true;
                    Limpiar();
                }
            }
            if (contEntro == false)
            {
                lbVerificar.Text = "No se encontró la ID ingresada";
            }
        }
    }
}