using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Proyecto_de_Aula__Visual_.Models;

namespace Proyecto_de_Aula__Visual_
{
    public partial class ActualizarCostos : System.Web.UI.Page
    {
        public static List<Paciente> lstPacientes = Agregar_Paciente.lstPacientes;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSalir_Click(object sender, EventArgs e)
        {
            Response.Redirect("Menú.aspx");
        }
        public void Limpiar()
        {
            txtId.Text = "";
            txtNewCostos.Text = "";

        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            try
            {
                if (txtId.Text == "")
                {
                    throw new FormatException("Ingrese su identificaion");
                }

                else if (txtNewCostos.Text == "")
                {
                    throw new FormatException("Seleccione el régimen a la que desea cambiarse");
                }
                else
                {
                    ActualizacionCostos();
                }

            }
            catch (FormatException ex)
            {
                this.Page.ClientScript.RegisterStartupScript(this.GetType(), "ex", "alert('" + ex.Message + "');", true);
            }
        }
        public void ActualizacionCostos()
        {
            bool contEntro = false;
            string id = txtId.Text;
            foreach (Paciente pac in lstPacientes)
            {
                if (pac.Id == id)
                {
                    pac.CostosTratamientos = Convert.ToDouble(txtNewCostos.Text);
                    lbVerificar.Text = "Costos actualizados correctamente";
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