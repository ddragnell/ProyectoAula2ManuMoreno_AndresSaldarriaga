<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Agregar_Paciente.aspx.cs" Inherits="Proyecto_de_Aula__Visual_.Agregar_Paciente" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style6 {
            width: 312px;
        }
        .auto-style7 {
            height: 44px;
            width: 312px;
        }
        .auto-style9 {
            width: 312px;
            height: 8px;
        }
        .auto-style11 {
            width: 312px;
            height: 26px;
        }
        .auto-style13 {
            width: 312px;
            height: 217px;
        }
        .auto-style15 {
            height: 48px;
            width: 312px;
        }
        .auto-style16 {
            width: 258px;
            height: 8px;
        }
        .auto-style17 {
            height: 44px;
            width: 258px;
        }
        .auto-style18 {
            width: 258px;
        }
        .auto-style19 {
            height: 48px;
            width: 258px;
        }
        .auto-style20 {
            width: 258px;
            height: 26px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table style="width:100%;">
            <tr>
                <td class="auto-style16">
                    <asp:Label ID="lbNombre" runat="server" Text="Nombre(s)"></asp:Label>
                </td>
                <td class="auto-style9">
                    <asp:TextBox ID="txtNombre" runat="server" style="height: 25px" Width="301px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style17">
                    <asp:Label ID="lbApellidos" runat="server" Text="Apellidos"></asp:Label>
                </td>
                <td class="auto-style7">
                    <asp:TextBox ID="txtApellidos" runat="server" Width="295px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style17">
                    <asp:Label ID="lbId" runat="server" Text="Identificación"></asp:Label>
                </td>
                <td class="auto-style7">
                    <asp:TextBox ID="txtId" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style18">
                    <asp:Label ID="lbNacimiento" runat="server" Text="Fecha de nacimiento"></asp:Label>
                </td>
                <td class="auto-style13">
                    <asp:Calendar ID="calFecha_Nacimiento" runat="server" OnSelectionChanged="calFecha_Nacimiento_SelectionChanged"></asp:Calendar>
                </td>
            </tr>
            <tr>
                <td class="auto-style19">
                    <asp:Label ID="lbRegimen" runat="server" Text="Tipo de regimen"></asp:Label>
                </td>
                <td class="auto-style15">
                    <asp:DropDownList ID="ddlTipo_Regimen" runat="server" Height="60px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                        <asp:ListItem>Elija una opción</asp:ListItem>
                        <asp:ListItem>Contributivo</asp:ListItem>
                        <asp:ListItem>Subsidiado</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style16">
                    <asp:Label ID="lbSemanas_cotizadas" runat="server" Text="Semanas cotizadas en el sistema de salud"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:TextBox ID="txtSemanas_Cotizadas" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style18">
                    <asp:Label ID="lbIngreso_sistema" runat="server" Text="Fecha de ingreso al sistema de salud"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:Calendar ID="calIngreso_sistem" runat="server"></asp:Calendar>
                </td>
            </tr>
            <tr>
                <td class="auto-style18">
                    <asp:Label ID="lbIngreso_EPS" runat="server" Text="Fecha de ingreso a la EPS actual"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:Calendar ID="calIngreso_Eps" runat="server" OnSelectionChanged="calIngreso_Eps_SelectionChanged"></asp:Calendar>
                </td>
            </tr>
            <tr>
                <td class="auto-style18">
                    <asp:Label ID="lbEPS_Paciente" runat="server" Text="EPS del paciente"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:DropDownList ID="ddlEps_Paciente" runat="server">
                        <asp:ListItem>Elija una opción</asp:ListItem>
                        <asp:ListItem>Sura</asp:ListItem>
                        <asp:ListItem>Nueva EPS</asp:ListItem>
                        <asp:ListItem>Salud Total</asp:ListItem>
                        <asp:ListItem>Sanitas</asp:ListItem>
                        <asp:ListItem>Savia</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style18">
                    <asp:Label ID="lbHistoria_Clinica" runat="server" Text="Historia Clínica"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:TextBox ID="txtHistoria_Clinica" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style18">
                    <asp:Label ID="lbCantidad_enfermedades" runat="server" Text="Cantidad de enfermedades que posee"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:TextBox ID="txtEnfermedades" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style18">
                    <asp:Label ID="lbEnfermedad_relevante" runat="server" Text="Enfermedad más relevante"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:TextBox ID="txtEnfermedad_Relevante" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style18">
                    <asp:Label ID="lbTipo_Afiliación" runat="server" Text="Tipo de Afiliación"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:DropDownList ID="dllTipo_Afiliacion" runat="server">
                        <asp:ListItem>Elija una opción</asp:ListItem>
                        <asp:ListItem>Cotizante</asp:ListItem>
                        <asp:ListItem>Beneficiario</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style20">
                    <asp:Label ID="lbCostos_Tratamientos" runat="server" Text="Costos en tratamientos"></asp:Label>
                </td>
                <td class="auto-style11">
                    <asp:TextBox ID="txtCostos_Tratamientos" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style18">
                    <asp:Button ID="btnRegistrar" runat="server" OnClick="btnRegistrar_Click" Text="Registrar" />
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
