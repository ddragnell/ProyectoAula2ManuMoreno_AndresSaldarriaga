using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Proyecto_de_Aula__Visual_.Models;

namespace Proyecto_de_Aula__Visual_
{
    public partial class CambiarRegimen : System.Web.UI.Page
    {
        public static List<Paciente> lstPacientes = Agregar_Paciente.lstPacientes;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        private void limpiar()
        {
            txtId.Text = "";
            ddlCambiarRegimen.SelectedValue = "0";
        }

        protected void btnSalir_Click(object sender, EventArgs e)
        {
            Response.Redirect("Menú.aspx");
        }
        public void CambioDeRegimen(string id, string regimenCambio)
        {
            bool contEntro = false;
            foreach (Paciente pac in lstPacientes)
            {
                if (regimenCambio != pac.TipoRegimen)
                {
                    contEntro = true;
                    pac.TipoRegimen = regimenCambio;
                    lbVerificar.Text = "Regimen cambiado con éxito";
                    limpiar();
                    break;
                }
                else
                {
                    lbVerificar.Text = "Ya se encuentra en este tipo de régimen";
                }
            }
            if (contEntro == false)
            {
                lbVerificar.Text = "La id ingresada no se encuentra registrada en el sistema";
                limpiar();
            }
        }

        protected void btnCambiarRegimen_Click(object sender, EventArgs e)
        {
            try
            {
                if (txtId.Text == "")
                {
                    throw new FormatException("Ingrese su identificaion");
                }

                else if (ddlCambiarRegimen.SelectedIndex == 0)
                {
                    throw new FormatException("Seleccione el régimen a la que desea cambiarse");
                }
                else
                {
                    CambioDeRegimen(txtId.Text, ddlCambiarRegimen.Text);
                }

            }
            catch (FormatException ex)
            {
                this.Page.ClientScript.RegisterStartupScript(this.GetType(), "ex", "alert('" + ex.Message + "');", true);
            }
        }
    }
}