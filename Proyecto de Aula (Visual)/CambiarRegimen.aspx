<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CambiarRegimen.aspx.cs" Inherits="Proyecto_de_Aula__Visual_.CambiarRegimen" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 26px;
        }
        .auto-style2 {
            height: 26px;
            width: 397px;
        }
        .auto-style3 {
            width: 397px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table style="width:100%;">
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label2" runat="server" Text="Ingrese el Id del paciente"></asp:Label>
                    </td>
                    <td class="auto-style1">
                        <asp:TextBox ID="txtId" runat="server" TextMode="Number"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="Label1" runat="server" Text="Regimen al que desea cambiarse"></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="ddlCambiarRegimen" runat="server">
                            <asp:ListItem>Elija una opción</asp:ListItem>
                            <asp:ListItem>Contributivo</asp:ListItem>
                            <asp:ListItem>Subsidiado</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Button ID="btnCambiarRegimen" runat="server" Text="Cambiar Regimen" Width="181px" OnClick="btnCambiarRegimen_Click" BackColor="#66FFFF" />
                    </td>
                    <td>&nbsp;<asp:Button ID="btnSalir" runat="server" OnClick="btnSalir_Click" Text="Salir" BackColor="#66FF33" Width="67px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="lbVerificar" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
