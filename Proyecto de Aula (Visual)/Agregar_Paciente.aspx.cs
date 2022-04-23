using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Proyecto_de_Aula__Visual_.Models;

namespace Proyecto_de_Aula__Visual_
{
    public partial class Agregar_Paciente : System.Web.UI.Page
    {
        public static List<Paciente> lstPacientes = new List<Paciente>();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                calFechaNacimiento.Visible = false;
                calIngresoSistem.Visible = false;
                calIngresoEps.Visible = false;
            }
        }
        private void LimpiarCampos()
        {
            txtNombre.Text = "";
            txtApellidos.Text = "";
            txtEnfermedadRelevante.Text="";
            txtHistoriaClinica.Text="";
            txtSemanasCotizadas.Text="";
            txtEnfermedades.Text="";
            ddlTipoRegimen.SelectedValue="Elija una opción";
            ddlEpsPaciente.SelectedValue="Elija una opción";
            dllTipoAfiliacion.SelectedValue="Elija una opción";
            txtFechaNacimiento.Text = "";
            txtFechaIngreso.Text = "";
            txtIngresoEps.Text = "";
            txtCostosTratamientos.Text = "";
            txtId.Text="";
        }
        private void crearPaciente(string apellido, DateTime fechaIngresoEps, string enfermedadRelevante,
            double costosTratamientos, string tipoRegimen, int cantidadEnfermedades, string eps,
            string tipoAfiliacion, string id, string nombre, string historiaClinica, DateTime fechaNacimiento,
            DateTime fechaIngresoSistem, int semanasCotizadas)
        {
            Paciente paciente = new Paciente(apellido, fechaIngresoEps, enfermedadRelevante, costosTratamientos,
                tipoRegimen, cantidadEnfermedades, eps, tipoAfiliacion, id, nombre, historiaClinica, fechaNacimiento, 
                fechaIngresoSistem, semanasCotizadas);
            lstPacientes.Add(paciente);
            lbVerificacionId.Text = "Usuario registrado con exito";
            LimpiarCampos();
        }

        protected void btnRegistrar_Click(object sender, EventArgs e)
        {
            
            try{
                if (txtNombre.Text == "")
                {
                    throw new FormatException("Ingrese su nombre");
                }
                else if (txtApellidos.Text == "")
                {
                    throw new FormatException("Ingrese su apellido");
                }
                else if (txtEnfermedadRelevante.Text == "")
                {
                    throw new FormatException("Ingrese su enfermedad relevante");
                }
                else if (txtSemanasCotizadas.Text == "")
                {
                    throw new FormatException("Ingrese su número de semanas cotizadas");
                }
                else if (txtEnfermedades.Text == "")
                {
                    throw new FormatException("Ingrese su número de enfermedades");
                }
                else if (ddlTipoRegimen.SelectedValue == "Elija una opción")
                {
                    throw new FormatException("Seleccione su tipo de regimen");
                }
                else if (ddlEpsPaciente.SelectedValue == "Elija una opción")
                {
                    throw new FormatException("Seleccione su EPS");
                }
                else if (dllTipoAfiliacion.SelectedValue == "Elija una opción")
                {
                    throw new FormatException("Seleccione su tipo de afiliación");
                }
                else if (txtIngresoEps.Text == "")
                {
                    throw new FormatException("Seleccione su fecha de ingreso a la EPS");
                }
                else if (txtFechaNacimiento.Text == "")
                {
                    throw new FormatException("Seleccione su fecha de nacimiento");
                }
                else if (txtFechaIngreso.Text == "")
                {
                    throw new FormatException("Seleccione su fecha de ingreso al sistema");
                }
                else if (txtCostosTratamientos.Text == "")
                {
                    throw new FormatException("Ingrese sus costos por tratamiento");
                }
                else if (txtId.Text == "")
                {
                    throw new FormatException("Ingrese su ID");
                }
                else
                {
                    if (lstPacientes.Count() > 0)
                    {
                        bool contEntro = false;
                        for (int i = 0; i < lstPacientes.Count; i++)
                        {
                            if (lstPacientes[i].Id == txtId.Text)
                            {
                                lbVerificacionId.Text = "El usuario con Id= " + txtId.Text + " ya" +
                                    "se encuentra registrado";
                                contEntro = true;
                                break;
                            }
                        }
                        if (contEntro == false)
                        {
                            crearPaciente(txtApellidos.Text, Convert.ToDateTime(txtIngresoEps.Text), txtEnfermedadRelevante.Text,
                               Convert.ToDouble(txtCostosTratamientos.Text), ddlTipoRegimen.SelectedValue,
                               Convert.ToInt32(txtEnfermedades.Text), ddlEpsPaciente.SelectedValue,
                               dllTipoAfiliacion.SelectedValue, txtId.Text, txtNombre.Text, txtHistoriaClinica.Text,
                               Convert.ToDateTime(txtFechaNacimiento.Text), Convert.ToDateTime(txtFechaIngreso.Text), Convert.ToInt32(txtSemanasCotizadas.Text));
                        }
                    }
                    else
                    {
                        crearPaciente(txtApellidos.Text, Convert.ToDateTime(txtIngresoEps.Text), txtEnfermedadRelevante.Text.ToLower(),
                           Convert.ToDouble(txtCostosTratamientos.Text), ddlTipoRegimen.SelectedValue,
                           Convert.ToInt32(txtEnfermedades.Text), ddlEpsPaciente.SelectedValue,
                           dllTipoAfiliacion.SelectedValue, txtId.Text, txtNombre.Text, txtHistoriaClinica.Text,
                           Convert.ToDateTime(txtFechaNacimiento.Text), Convert.ToDateTime(txtFechaIngreso.Text), Convert.ToInt32(txtSemanasCotizadas.Text));
                    }
                        
                   
                }
            }
            catch (FormatException ex)
            {
                this.Page.ClientScript.RegisterStartupScript(this.GetType(), "ex", "alert('" + ex.Message + "');", true);

            }

        }

        protected void imgbtnCalendario_Click(object sender, ImageClickEventArgs e)
        {
            if (calFechaNacimiento.Visible)
            {
                calFechaNacimiento.Visible=false;
            }
            else
            {
                calFechaNacimiento.Visible = true;
            }
        }
        protected void imgbtnCalendario1_Click(object sender, ImageClickEventArgs e)
        {
            
        }
        protected void btnSalir_Click(object sender, EventArgs e)
        {
            Response.Redirect("Menú.aspx");
        }

        protected void calFechaNacimiento_SelectionChanged1(object sender, EventArgs e)
        {
            txtFechaNacimiento.Text = calFechaNacimiento.SelectedDate.ToString("dd/MM/yyyy");
            calFechaNacimiento.Visible = false;
        }

        protected void calIngresoSistem_SelectionChanged1(object sender, EventArgs e)
        {
            txtFechaIngreso.Text = calIngresoSistem.SelectedDate.ToString("dd/MM/yyyy");
            calIngresoSistem.Visible = false;
        }

        protected void calIngresoEps_SelectionChanged(object sender, EventArgs e)
        {
            txtIngresoEps.Text = calIngresoEps.SelectedDate.ToString("dd/MM/yyyy");
            calIngresoEps.Visible = false;
        }

        protected void imgbtnIngresoSistem_Click(object sender, ImageClickEventArgs e)
        {
            if (calIngresoSistem.Visible)
            {
                calIngresoSistem.Visible = false;
            }
            else
            {
                calIngresoSistem.Visible = true;
            }
        }
        protected void imgbtnIngresoEps_Click(object sender, ImageClickEventArgs e)
        {
            if (calIngresoEps.Visible)
            {
                calIngresoEps.Visible = false;
            }
            else
            {
                calIngresoEps.Visible = true;
            }
        }
        
    }
}