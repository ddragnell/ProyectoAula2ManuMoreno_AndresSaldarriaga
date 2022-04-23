<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Menú.aspx.cs" Inherits="Proyecto_de_Aula__Visual_.Menú" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style2 {
            height: 33px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table style="width:100%;">
            <tr>
                <td>
                    <asp:Label ID="lbMenú" runat="server" Text="Menú de opciones"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="btnIngresar_Paciente" runat="server" Text="Ingresar Paciente" OnClick="btnIngresar_Paciente_Click" Width="272px" />
                    </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="btnCambiar_eps" runat="server" Text="Cambiar EPS" OnClick="btnCambiar_eps_Click" Width="272px" />
                    </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="btnVer_Estadisticas" runat="server" Text="Ver estadísiticas" OnClick="btnVer_Estadisticas_Click" Width="271px" />
                    </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="btnCambioRegimen" runat="server" OnClick="btnCambioRegimen_Click" Text="Cambiar Regimen" Width="269px" />
                    </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="btnHistoriaClinica" runat="server" OnClick="btnHistoriaClinica_Click" Text="Actualizar historia clínica" Width="268px" />
                    </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="btnActualizarCostos" runat="server" OnClick="btnActualizarCostos_Click" Text="Actualizar Costos" Width="269px" />
                    </td>
            </tr>
            </table>
    </form>
</body>
</html>
