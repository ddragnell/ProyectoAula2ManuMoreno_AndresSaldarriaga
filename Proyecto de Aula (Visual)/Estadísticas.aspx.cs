using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Proyecto_de_Aula__Visual_.Models;

namespace Proyecto_de_Aula__Visual_
{
    public partial class Estadísticas : System.Web.UI.Page
    {
        public static List<Paciente> lstPacientes = Agregar_Paciente.lstPacientes;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSalir_Click(object sender, EventArgs e)
        {
            Response.Redirect("Menú.aspx");
        }

        public void GenerarEstadisticas()
        {
            PorcentajeCostosEps();
            TotalCostosPorEps();
            PacienteConMayoresCostos();
            PorcentajePacSinEnfermedades();
            PorcentajePacientesPorRangoEdad();
            PorcentajePorTipoRegimen();
            PorcentajePorTipoAfiliacion();
            TotalPacientesEnfermedadRelevanteCancer();

        }
        protected void btnVerEstadisticas_Click(object sender, EventArgs e)
        {
            GenerarEstadisticas();
        }
        public double CostosEps(string eps)
        {
            double contTotalEps = 0;
                foreach (Paciente pac in lstPacientes)
            {
                if (pac.Eps == eps)
                {
                    contTotalEps += pac.CostosTratamientos;
                }

            }
            return contTotalEps;
        }
        public double TotalCostosEPS()
        {

            double contNuevaEps = 0, contSaludTotal = 0, contSanitas = 0, contSavia = 0, contSura = 0;
            contNuevaEps = CostosEps("Nueva Eps");
            contSaludTotal = CostosEps("Salud Total");
            contSanitas = CostosEps("Sanitas");
            contSavia = CostosEps("Savia");
            contSura = CostosEps("Sura");
            return contNuevaEps + contSaludTotal + contSanitas + contSavia + contSura;
        }
        public void PorcentajeCostosEps()
        {
            if (lstPacientes.Count() == 0)
            {
                txtPorcentajeCostosEps.Text = "\n" + "El porcentaje de costos de Sura es : " + 0+ "%" + "" +
                "\n El porcentaje de costos de Salud Total es : " + 0 + "%" + "\n El" +
                " porcentaje" + " de costos de Nueva Eps es : " + 0 + "%" + "\n " +
                "El porcentaje de costos de Sanitas es : " + 0 + "%" + "\n " +
                "El porcentaje de costos de Savia es : " + 0 + "%";
            }
            else
            {
                double total = TotalCostosEPS();
                double costosSura = (CostosEps("Sura") / total) * 100;
                double costosSaludTotal = (CostosEps("Salud Total") / total) * 100;
                double costosNuevaEps = (CostosEps("Nueva EPS") / total) * 100;
                double costosSanitas = (CostosEps("Sanitas") / total) * 100;
                double costosSavia = (CostosEps("Savia") / total) * 100;
                txtPorcentajeCostosEps.Text = "\n" + "El porcentaje de costos de Sura es : " + costosSura + "%" + "" +
                    "\n El porcentaje de costos de Salud Total es : " + costosSaludTotal + "%" + "\n El" +
                    " porcentaje" + " de costos de Nueva Eps es : " + costosNuevaEps + "%" + "\n " +
                    "El porcentaje de costos de Sanitas es : " + costosSanitas + "%" + "\n " +
                    "El porcentaje de costos de Savia es : " + costosSavia + "%";
            }
                
        }
        public void TotalCostosPorEps()
        {
            double costosSura = CostosEps("Sura");
            double costosSaludTotal = CostosEps("Salud Total");
            double costosNuevaEps = CostosEps("Nueva EPS");
            double costosSanitas = CostosEps("Sanitas");
            double costosSavia = CostosEps("Savia");
            txtCostosEps.Text = "\n" + "El total costos de Sura es : " + costosSura + 
                "\n El total de costos de Salud Total es : " + costosSaludTotal +"\n El" +
                " total" + " de costos de Nueva Eps es : " + costosNuevaEps +"\n " +
                "El total de costos de Sanitas es : " + costosSanitas +"\n " +
                "El total de costos de Savia es : " + costosSavia;
        }
        public static int TotalPacientes()
        {
            int contPacientes = 0;
            foreach (Paciente pac in lstPacientes)
            {
                contPacientes += 1;
            }
            return contPacientes;
        }
        public void PorcentajePacSinEnfermedades()
        {
            int contPacSinEnfermedades = 0;
            foreach (Paciente pac in lstPacientes)
            {
                if (pac.CantidadEnfermedades is 0)
                {
                    contPacSinEnfermedades += 1;
                }

            }
            txtPorcentajeSinEnfermedades.Text = Convert.ToString(contPacSinEnfermedades);
        }
        public void PacienteConMayoresCostos()
        {
            if (lstPacientes.Count()==0)
            {
                txtMayorCostos.Text = "No se encuentran pacientes registrados";
            }
            else
            {
                var orderAsc = lstPacientes.OrderBy(x => x.CostosTratamientos).ToList();
                var primero = orderAsc.First();
                txtMayorCostos.Text = "El paciente con mayor costo en los tratamientos es " +
                    primero.Nombre + "con id: " + primero.Id + "y un total de costos de " +
                    primero.CostosTratamientos;
            }
            
        }
        public int CalcularEdad(DateTime edad)
        {
            var tiempo = (DateTime.Now.Year - edad.Year);
            return tiempo;
        }
        public int ConteoPorRangoEdad(int inicioRango, int limitRango)
        {
            var rango = lstPacientes.Where(x => limitRango > CalcularEdad(x.FechaNacimiento)).ToList();
            return rango.Where(x => inicioRango <= CalcularEdad(x.FechaNacimiento)).Count();


        }
        public void PorcentajePacientesPorRangoEdad()
        {
            if (lstPacientes.Count() == 0)
            {
                txtPorcentajePorEdad.Text = "No se encuentran pacientes registrados";
            }
            else
            {
                int totalPacientes = TotalPacientes();
                double niños = (ConteoPorRangoEdad(0, 12) / totalPacientes) * 100;
                double adolescente = (ConteoPorRangoEdad(12, 18) / totalPacientes) * 100;
                double joven = (ConteoPorRangoEdad(18, 30) / totalPacientes) * 100;
                double adulto = (ConteoPorRangoEdad(30, 55) / totalPacientes) * 100;
                double adultoMayor = (ConteoPorRangoEdad(55, 75) / totalPacientes) * 100;
                double anciano = (ConteoPorRangoEdad(75, 200) / totalPacientes) * 100;

                txtPorcentajePorEdad.Text = "\n Porcentaje de pacientes niños es " + niños +
                    "\n Porcentaje de pacientes adolescente es " + adolescente + "\nPorcentaje de pacientes" +
                    " joven es " + joven + "\nPorcentaje de pacientes adulto es " + adulto +
                    "\nPorcentaje de pacientes adulto mayor es " + adultoMayor +
                    "\nPorcentaje de pacientes ancianos es " + anciano;
            }

        }
        public static int ConteoTipoRegimen(string regimen)
        {
            int contRegimen = 0;
            foreach (Paciente pac in lstPacientes)
            {
                if (pac.TipoRegimen == regimen)
                {
                    contRegimen += 1;
                }
            }
            return contRegimen;
        }
        public void PorcentajePorTipoRegimen()
        {
            if (lstPacientes.Count() == 0)
            {
                txtPorcentajeRegimen.Text = "No se encuentran pacientes registrados";
            }
            else
            {
                int totalPacientes = TotalPacientes();
                int contributivo = (ConteoTipoRegimen("Contributivo") / totalPacientes) * 100;
                int subsidiado = (ConteoTipoRegimen("Subsidiado") / totalPacientes) * 100;
                txtPorcentajeRegimen.Text = "\nEl porcentaje de pacientes con regimen tipo " +
                    "contributivo es igual a "
                    + contributivo + "\nEl porcentaje de pacientes con regimen tipo " +
                    "subsidiado es igual a "
                    + subsidiado;
            }
                
        }
        public int ConteoTipoAfiliacion(string afiliacion)
        {
            int contAfiliacion = 0;
            foreach (Paciente pac in lstPacientes)
            {
                if (pac.TipoAfiliacion == afiliacion)
                {
                    contAfiliacion += 1;
                }
            }
            return contAfiliacion;
        }
        public void PorcentajePorTipoAfiliacion()
        {
            if (lstPacientes.Count() == 0)
            {
                txtPorcentajeAfiliacion.Text = "No se encuentran pacientes registrados";
            }
            else
            {
                int totalPacientes = TotalPacientes();
                double cotizante = (ConteoTipoAfiliacion("Cotizante") / totalPacientes) * 100;
                double beneficiario = (ConteoTipoAfiliacion("Beneficiario") / totalPacientes) * 100;
                txtPorcentajeAfiliacion.Text = "\nEl porcentaje de pacientes con afiliación " +
                    "tipo cotizante es igual a " + cotizante + "%" + "\nEl porcentaje de " +
                    "pacientes con afiliación tipo beneficiario es igual a " + beneficiario
                    + "%";
            }
                
        }
        public void TotalPacientesEnfermedadRelevanteCancer()
        {
            int cancer=lstPacientes.Where(x => "cancer" == x.EnfermedadRelevante).Count();
            txtTotalCancer.Text= Convert.ToString(cancer);
        }
    }
}