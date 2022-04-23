<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cambiar_EPS.aspx.cs" Inherits="Proyecto_de_Aula__Visual_.Cambiar_EPS" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style2 {
            width: 486px;
            height: 26px;
        }
        .auto-style3 {
            height: 26px;
            width: 53px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table style="width:100%;">
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="lbCambiar_Id" runat="server" Text="Identificación"></asp:Label>
                    </td>
                    <td class="auto-style3">
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="lbCambiar_Eps" runat="server" Text="EPS a la que desea cambiarse"></asp:Label>
                    </td>
                    <td class="auto-style3">
                        <asp:DropDownList ID="DropDownList1" runat="server">
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
                    <td colspan="2">
                        <asp:Button ID="btnVerificar" runat="server" Text="Verificar" Width="260px" />
                    </td>
                    <td>
                        <asp:Label ID="lbVerificacion" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
