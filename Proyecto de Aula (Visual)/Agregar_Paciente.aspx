<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Agregar_Paciente.aspx.cs" Inherits="Proyecto_de_Aula__Visual_.Agregar_Paciente" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style9 {
            width: 312px;
            height: 7px;
        }
        .auto-style15 {
            height: 48px;
            width: 312px;
        }
        .auto-style21 {
            margin-left: 2px;
        }
        .auto-style24 {
            width: 276px;
        }
        .auto-style25 {
            height: 48px;
            width: 276px;
        }
        .auto-style29 {
            width: 276px;
            height: 54px;
        }
        .auto-style30 {
            width: 312px;
            height: 54px;
        }
        .auto-style34 {
            width: 276px;
            height: 7px;
        }
        .auto-style35 {
            height: 34px;
            width: 276px;
        }
        .auto-style36 {
            height: 34px;
            width: 312px;
        }
        .auto-style37 {
            height: 29px;
            width: 276px;
        }
        .auto-style38 {
            height: 29px;
            width: 312px;
        }
        .auto-style41 {
            height: 31px;
            width: 276px;
        }
        .auto-style42 {
            height: 31px;
            width: 312px;
        }
        .auto-style43 {
            width: 276px;
            height: 23px;
        }
        .auto-style44 {
            width: 312px;
            height: 23px;
        }
        .auto-style45 {
            width: 276px;
            height: 20px;
        }
        .auto-style46 {
            width: 312px;
            height: 20px;
        }
        .auto-style47 {
            width: 276px;
            height: 21px;
        }
        .auto-style48 {
            width: 312px;
            height: 21px;
        }
        .auto-style49 {
            width: 276px;
            height: 19px;
        }
        .auto-style50 {
            width: 312px;
            height: 19px;
        }
        .auto-style51 {
            width: 276px;
            height: 9px;
        }
        .auto-style52 {
            width: 312px;
            height: 9px;
        }
        .auto-style53 {
            margin-bottom: 1px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table style="width:100%;">
            <tr>
                <td class="auto-style34">
                    <asp:Label ID="lbNombre" runat="server" Text="Nombre(s)"></asp:Label>
                </td>
                <td class="auto-style9">
                    <asp:TextBox ID="txtNombre" runat="server" style="height: 25px" Width="301px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style35">
                    <asp:Label ID="lbApellidos" runat="server" Text="Apellidos"></asp:Label>
                </td>
                <td class="auto-style36">
                    <asp:TextBox ID="txtApellidos" runat="server" Width="295px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style37">
                    <asp:Label ID="lbId" runat="server" Text="Identificación"></asp:Label>
                </td>
                <td class="auto-style38">
                    <asp:TextBox ID="txtId" runat="server" TextMode="Number"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style25">
                    <asp:Label ID="lbNacimiento" runat="server" Text="Fecha de nacimiento"></asp:Label>
                </td>
                <td class="auto-style15">
                    <asp:TextBox ID="txtFechaNacimiento" runat="server" Height="27px" Width="158px"></asp:TextBox>
                    <asp:ImageButton ID="imgbtnCalendario" runat="server" Height="38px" ImageAlign="Bottom" ImageUrl="image.png" OnClick="imgbtnCalendario_Click" Width="35px" />
                    <br />
                    <asp:Calendar ID="calFechaNacimiento" runat="server" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="144px" NextPrevFormat="FullMonth" Width="300px" OnSelectionChanged="calFechaNacimiento_SelectionChanged1">
                        <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                        <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
                        <OtherMonthDayStyle ForeColor="#999999" />
                        <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                        <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
                        <TodayDayStyle BackColor="#CCCCCC" />
                    </asp:Calendar>
                </td>
            </tr>
            <tr>
                <td class="auto-style51">
                    <asp:Label ID="lbRegimen" runat="server" Text="Tipo de regimen"></asp:Label>
                </td>
                <td class="auto-style52">
                    <asp:DropDownList ID="ddlTipoRegimen" runat="server" Height="60px">
                        <asp:ListItem>Elija una opción</asp:ListItem>
                        <asp:ListItem>Contributivo</asp:ListItem>
                        <asp:ListItem>Subsidiado</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style34">
                    <asp:Label ID="lbSemanas_cotizadas" runat="server" Text="Semanas cotizadas en el sistema de salud"></asp:Label>
                </td>
                <td class="auto-style9">
                    <asp:TextBox ID="txtSemanasCotizadas" runat="server" TextMode="Number"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style41">
                    <asp:Label ID="lbIngreso_sistema" runat="server" Text="Fecha de ingreso al sistema de salud"></asp:Label>
                    <br />
                </td>
                <td class="auto-style42">
                    <asp:TextBox ID="txtFechaIngreso" runat="server" Height="29px" Width="156px"></asp:TextBox>
                    <asp:ImageButton ID="imgbtnIngresoSistem" runat="server" Height="40px" ImageUrl="image.png" OnClick="imgbtnIngresoSistem_Click" Width="36px" />
                    <br />
                    <asp:Calendar ID="calIngresoSistem" runat="server" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="148px" NextPrevFormat="FullMonth" Width="295px" OnSelectionChanged="calIngresoSistem_SelectionChanged1">
                        <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                        <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
                        <OtherMonthDayStyle ForeColor="#999999" />
                        <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                        <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
                        <TodayDayStyle BackColor="#CCCCCC" />
                    </asp:Calendar>
                </td>
            </tr>
            <tr>
                <td class="auto-style29">
                    <asp:Label ID="lbIngreso_EPS" runat="server" Text="Fecha de ingreso a la EPS actual"></asp:Label>
                </td>
                <td class="auto-style30">
                    <asp:TextBox ID="txtIngresoEps" runat="server" CssClass="auto-style21" Height="27px" Width="151px"></asp:TextBox>
                    <asp:ImageButton ID="imgbtnIngresoEps" runat="server" Height="38px" ImageUrl="image.png" OnClick="imgbtnIngresoEps_Click" Width="47px" />
&nbsp;<asp:Calendar ID="calIngresoEps" runat="server" OnSelectionChanged="calIngresoEps_SelectionChanged" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="159px" NextPrevFormat="FullMonth" Width="286px">
                        <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                        <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
                        <OtherMonthDayStyle ForeColor="#999999" />
                        <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                        <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
                        <TodayDayStyle BackColor="#CCCCCC" />
                    </asp:Calendar>
                </td>
            </tr>
            <tr>
                <td class="auto-style43">
                    <asp:Label ID="lbEPS_Paciente" runat="server" Text="EPS del paciente"></asp:Label>
                </td>
                <td class="auto-style44">
                    <asp:DropDownList ID="ddlEpsPaciente" runat="server">
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
                <td class="auto-style41">
                    <asp:Label ID="lbHistoria_Clinica" runat="server" Text="Historia Clínica"></asp:Label>
                </td>
                <td class="auto-style42">
                    <asp:TextBox ID="txtHistoriaClinica" runat="server" CssClass="auto-style53" Height="68px" TextMode="MultiLine" Width="357px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style45">
                    <asp:Label ID="lbCantidad_enfermedades" runat="server" Text="Cantidad de enfermedades que posee"></asp:Label>
                </td>
                <td class="auto-style46">
                    <asp:TextBox ID="txtEnfermedades" runat="server" TextMode="Number"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style47">
                    <asp:Label ID="lbEnfermedad_relevante" runat="server" Text="Enfermedad más relevante"></asp:Label>
                </td>
                <td class="auto-style48">
                    <asp:TextBox ID="txtEnfermedadRelevante" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style49">
                    <asp:Label ID="lbTipo_Afiliación" runat="server" Text="Tipo de Afiliación"></asp:Label>
                </td>
                <td class="auto-style50">
                    <asp:DropDownList ID="dllTipoAfiliacion" runat="server">
                        <asp:ListItem>Elija una opción</asp:ListItem>
                        <asp:ListItem>Cotizante</asp:ListItem>
                        <asp:ListItem>Beneficiario</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style43">
                    <asp:Label ID="lbCostos_Tratamientos" runat="server" Text="Costos en tratamientos"></asp:Label>
                </td>
                <td class="auto-style44">
                    <asp:TextBox ID="txtCostosTratamientos" runat="server" TextMode="Number"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style24">
                    <asp:Button ID="btnRegistrar" runat="server" OnClick="btnRegistrar_Click" Text="Registrar" BackColor="#66FF66" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
                <td>
                    <asp:Button ID="btnSalir" runat="server" BackColor="#0066FF" OnClick="btnSalir_Click" Text="Salir" Width="85px" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lbVerificacionId" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
