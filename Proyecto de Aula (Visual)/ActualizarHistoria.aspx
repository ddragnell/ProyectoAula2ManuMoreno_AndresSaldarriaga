<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ActualizarHistoria.aspx.cs" Inherits="Proyecto_de_Aula__Visual_.ActualizarHistoria" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 286px;
        }
        .auto-style2 {
            width: 286px;
            height: 29px;
        }
        .auto-style3 {
            height: 29px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table style="width:100%;">
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label1" runat="server" Text="Id del usuario"></asp:Label>
                    </td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtId" runat="server" TextMode="Number"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label2" runat="server" Text="Historia clínica nueva"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtHistoria" runat="server" TextMode="MultiLine"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Button ID="btnGuardar" runat="server" Text="Guardar" BackColor="#66FFFF" OnClick="btnGuardar_Click" Width="97px" />
                    </td>
                    <td>
                        <asp:Button ID="btnSalir" runat="server" OnClick="btnSalir_Click" Text="Salir" BackColor="#66FF99" Width="94px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="lbVerificar" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
