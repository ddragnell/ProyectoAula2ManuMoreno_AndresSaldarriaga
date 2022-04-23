<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Estadísticas.aspx.cs" Inherits="Proyecto_de_Aula__Visual_.Estadísticas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 428px;
        }
        .auto-style2 {
            width: 398px;
        }
        .auto-style3 {
            width: 428px;
            height: 26px;
        }
        .auto-style4 {
            height: 26px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table style="width:100%;">
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label1" runat="server" Text="Porcentaje de costos por EPS"></asp:Label>
                </td>
                <td class="auto-style4" colspan="2">
                    <asp:TextBox ID="txtPorcentajeCostosEps" runat="server" Height="62px" ReadOnly="True" TextMode="MultiLine" Width="273px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label2" runat="server" Text="Total de costos por EPS"></asp:Label>
                </td>
                <td colspan="2">
                    <asp:TextBox ID="txtCostosEps" runat="server" Height="57px" ReadOnly="True" TextMode="MultiLine" Width="273px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label8" runat="server" Text="Porcentaje de pacientes sin enfermedades"></asp:Label>
                </td>
                <td colspan="2">
                    <asp:TextBox ID="txtPorcentajeSinEnfermedades" runat="server" ReadOnly="True" Width="272px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label3" runat="server" Text="Paciente con mayor costo de tratamientos"></asp:Label>
                </td>
                <td colspan="2">
                    <asp:TextBox ID="txtMayorCostos" runat="server" ReadOnly="True" TextMode="MultiLine" Width="270px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label4" runat="server" Text="Porcentaje de pacientes por edad"></asp:Label>
                </td>
                <td colspan="2">
                    <asp:TextBox ID="txtPorcentajePorEdad" runat="server" Height="72px" ReadOnly="True" TextMode="MultiLine" Width="273px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label5" runat="server" Text="Porcentaje de pacientes por régimen"></asp:Label>
                </td>
                <td colspan="2">
                    <asp:TextBox ID="txtPorcentajeRegimen" runat="server" ReadOnly="True" TextMode="MultiLine" Width="271px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label6" runat="server" Text="Porcentaje de pacientes por afiliación"></asp:Label>
                </td>
                <td colspan="2">
                    <asp:TextBox ID="txtPorcentajeAfiliacion" runat="server" ReadOnly="True" TextMode="MultiLine" Width="271px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label7" runat="server" Text="Total de pacientes con enfermedad importante cáncer"></asp:Label>
                </td>
                <td colspan="2">
                    <asp:TextBox ID="txtTotalCancer" runat="server" ReadOnly="True" Width="270px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Button ID="btnVerEstadisticas" runat="server" Text="Ver Estadísticas" OnClick="btnVerEstadisticas_Click" BackColor="#66FFCC" />
                </td>
                <td class="auto-style2">
                    <asp:Button ID="btnSalir" runat="server" OnClick="btnSalir_Click" Text="Salir" BackColor="#66FF66" Width="136px" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
