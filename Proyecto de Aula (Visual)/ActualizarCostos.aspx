<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ActualizarCostos.aspx.cs" Inherits="Proyecto_de_Aula__Visual_.ActualizarCostos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 298px;
        }
        .auto-style2 {
            width: 298px;
            height: 32px;
        }
        .auto-style3 {
            height: 32px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table style="width:100%;">
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label1" runat="server" Text="Identificación del paciente"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtId" runat="server" TextMode="Number"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label2" runat="server" Text="Nuevos costos de tratamientos"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtNewCostos" runat="server" TextMode="Number"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Button ID="btnGuardar" runat="server" Height="33px" Text="Guardar" BackColor="#66FFFF" OnClick="btnGuardar_Click" Width="92px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                    <td class="auto-style3">
                        <asp:Button ID="btnSalir" runat="server" OnClick="btnSalir_Click" Text="Salir" BackColor="#66FF66" Height="31px" Width="94px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="lbVerificar" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
