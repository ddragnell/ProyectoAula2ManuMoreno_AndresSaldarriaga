using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using Proyecto_de_Aula__Visual_;
using Proyecto_de_Aula__Visual_.Models;

namespace Pruebas_Unitarias
{
    [TestClass]
    public class UnitTest1
    {
        [TestMethod]
        public void TestTotalPacientes()
        {
            var result = Estadísticas.TotalPacientes();

            var valorEsperado = 0;
            Assert.AreEqual(result, valorEsperado);
        }
        [TestMethod]
        public void TestConteoRegimen()
        {
            string regimen = "";
            var result = Estadísticas.ConteoTipoRegimen(regimen);
            var valorEsperado = 0;
            Assert.AreEqual(result, valorEsperado);
        }
    }
}
