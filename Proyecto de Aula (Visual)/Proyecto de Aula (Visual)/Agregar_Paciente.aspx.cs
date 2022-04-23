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
        static List<Paciente> lstPacientes = new List<Paciente>();
        protected void Page_Load(object sender, EventArgs e)
        {
            string nombre, apellido, tipoRegimen, eps, enfermedadRelevante, tipoAfiliacion, id, historiaClinica;
            DateTime fechaIngresoEps, fechaNacimiento, fechaIngresoSistem;
            double costosTratamientos;
            int semanasCotizadas, cantidad_Enfermedades;


            nombre = txtNombre.Text;
            apellido = txtApellidos.Text;
            enfermedadRelevante = txtEnfermedad_Relevante.Text;
            historiaClinica = txtHistoria_Clinica.Text;
            semanasCotizadas = Convert.ToInt32(txtSemanas_Cotizadas.Text);
            cantidad_Enfermedades = Convert.ToInt32(txtEnfermedades.Text);
            tipoRegimen = ddlTipo_Regimen.SelectedValue;
            eps = ddlEps_Paciente.SelectedValue;
            tipoAfiliacion = dllTipo_Afiliacion.SelectedValue;
            fechaIngresoEps = calIngreso_Eps.SelectedDate;
            fechaNacimiento = calFecha_Nacimiento.SelectedDate;
            fechaIngresoSistem = calIngreso_sistem.SelectedDate;
            costosTratamientos = Convert.ToDouble(txtCostos_Tratamientos.Text);
            id = txtId.Text;
            
        }
        private void LimpiarCampos()
        {
            txtNombre.Text = "";
            txtApellidos.Text = "";
            txtEnfermedad_Relevante.Text="";
            txtHistoria_Clinica.Text="";
            txtSemanas_Cotizadas.Text="";
            txtEnfermedades.Text="";
            ddlTipo_Regimen.SelectedValue="Elija una opción";
            ddlEps_Paciente.SelectedValue="Elija una opción";
            dllTipo_Afiliacion.SelectedValue="Elija una opción";
            calIngreso_Eps.SelectedDates.Clear();
            calFecha_Nacimiento.SelectedDates.Clear();
            calIngreso_sistem.SelectedDates.Clear();
            txtCostos_Tratamientos.Text = "";
            txtId.Text="";
        }
        public void crearPaciente(string apellido, DateTime fechaIngresoEps, string enfermedadRelevante,
            double costosTratamientos, string tipoRegimen, int cantidadEnfermedades, string eps,
            string tipoAfiliacion, string id, string nombre, string historiaClinica, DateTime fechaNacimiento,
            DateTime fechaIngresoSistem, int semanasCotizadas)
        {
            Paciente paciente = new Paciente(apellido, fechaIngresoEps, enfermedadRelevante, costosTratamientos,
                tipoRegimen, cantidadEnfermedades, eps, tipoAfiliacion, id, nombre, historiaClinica, fechaNacimiento, 
                fechaIngresoSistem, semanasCotizadas);
            lstPacientes.Add(paciente);
            LimpiarCampos();
        }

        protected void ListBox1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

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
                else if (txtEnfermedad_Relevante.Text == "")
                {
                    throw new FormatException("Ingrese su enfermedad relevante");
                }
                else if (txtSemanas_Cotizadas.Text == "")
                {
                    throw new FormatException("Ingrese su número de semanas cotizadas");
                }
                else if (txtEnfermedades.Text == "")
                {
                    throw new FormatException("Ingrese su número de enfermedades");
                }
                else if (ddlTipo_Regimen.SelectedValue == "Elija una opción")
                {
                    throw new FormatException("Selccione su tipo de regimen");
                }
                else if (ddlEps_Paciente.SelectedValue == "Elija una opción")
                {
                    throw new FormatException("Selccione su EPS");
                }
                else if (dllTipo_Afiliacion.SelectedValue == "Elija una opción")
                {
                    throw new FormatException("Selccione su tipo de afiliación");
                }
                else if (calIngreso_Eps.SelectedDate != DateTime.MinValue )
                {
                    throw new FormatException("Seleccione su fecha de ingreso a la EPS");
                }
                else if (calFecha_Nacimiento.SelectedDate != DateTime.MinValue)
                {
                    throw new FormatException("Seleccione su fecha de nacimiento");
                }
                else if (calIngreso_sistem.SelectedDate != DateTime.MinValue)
                {
                    throw new FormatException("Seleccione su fecha de ingreso al sistema");
                }
                else if (txtCostos_Tratamientos.Text == "")
                {
                    throw new FormatException("Ingrese sus costos por tratamiento");
                }
                else if (txtId.Text == "")
                {
                    throw new FormatException("Ingrese su ID");
                }
                else
                {
                    crearPaciente(txtApellidos.Text, calIngreso_Eps.SelectedDate, txtEnfermedad_Relevante.Text,
                        Convert.ToDouble(txtCostos_Tratamientos.Text), ddlTipo_Regimen.SelectedValue,
                        Convert.ToInt32(txtEnfermedades.Text), ddlEps_Paciente.SelectedValue,
                        dllTipo_Afiliacion.SelectedValue, txtId.Text, txtNombre.Text, txtHistoria_Clinica.Text,
                        calFecha_Nacimiento.SelectionChanged, calIngreso_sistem.SelectedDate, Convert.ToInt32(txtSemanas_Cotizadas.Text));
                }
            }
            catch (FormatException ex)
            {
                this.Page.ClientScript.RegisterStartupScript(this.GetType(), "ex", "alert('" + ex.Message + "');", true);

            }

        }

   
    }
}