using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Proyecto_de_Aula__Visual_.Models;

namespace Proyecto_de_Aula__Visual_
{
    public partial class Cambiar_EPS : System.Web.UI.Page
    {
        public static List<Paciente> lstPacientes = Agregar_Paciente.lstPacientes;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSalir_Click(object sender, EventArgs e)
        {
            Response.Redirect("Menú.aspx");
        }
        private void limpiar()
        {
            txtId.Text = "";
            ddlEps.SelectedValue= "Elija una opción";

        }
        public void CambiarEPS(string id, string epsCambio)
        {
            bool contEntro = false;
            foreach (Paciente pac in lstPacientes)
            {
                var tiempo = (DateTime.Now - pac.FechaIngresoEps).TotalDays;
                if (pac.Id == id)
                {
                    if (tiempo > 90)
                    {
                        if (epsCambio != pac.Eps)
                        {
                            contEntro = true;
                            pac.Eps = epsCambio;
                            pac.FechaIngresoEps = DateTime.Now;
                            lbVerificacion.Text = "Eps Cambiada con éxito";
                            limpiar();
                            break;
                        }
                        else
                        {
                            lbVerificacion.Text = "Ya se encuentra en esta EPS";
                        }
                    }
                    else
                    {
                        contEntro = true;
                        lbVerificacion.Text = "No es posible realizar el cambio";
                        limpiar();
                        break;
                    }
                }
            }
            if (contEntro == false)
            {
                lbVerificacion.Text= "La id ingresada no se encuentra registarada en el sistema";
                limpiar();
            }
        }

        protected void btnCambiar_Click(object sender, EventArgs e)
        {
            try
            {
                if (txtId.Text == "")
                {
                    throw new FormatException("Ingrese su identificaion");
                }

                else if (ddlEps.SelectedIndex == 0)
                {
                    throw new FormatException("Seleccione la eps a la que desea cambiarse");
                }
                else
                {
                    CambiarEPS(txtId.Text, ddlEps.Text);
                }

            }
            catch (FormatException ex)
            {
                this.Page.ClientScript.RegisterStartupScript(this.GetType(), "ex", "alert('" + ex.Message + "');", true);
            }
        }
    }
}