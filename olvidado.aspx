<%@ Page Language="C#" AutoEventWireup="true" CodeFile="olvidado.aspx.cs" Inherits="olvidado" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
    <style>
        h1, h3 {
            color:white

        }
        body{
            background-color:#2e4044;
        }
        table {
            border:solid;
            border-color:yellow;
            border-width:2px;
        }
    </style>
<body>
    <form id="form1" runat="server">
        <asp:Button BackColor="#2e4044" ID="btnVolver" runat="server" Text="Inicio" ForeColor="#80C342" Width="100px" BorderColor="#80C342" BorderStyle="Solid" Font-Bold="True" Font-Size="Large" OnClick="btnVolver_Click" />
        <center>
            <h1>¿No recuerdas tu usuario y/o contraseña?</h1>
            <h3>Ingresa tus datos</h3>
    <div>
        <table>
            
            <tr>
                <td>
                    <asp:Label ID="lblNombre" runat="server" Text="Nombre completo" Font-Size="Large" ForeColor="White"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtNombreCompleto" runat="server" Width="150px"></asp:TextBox>
                </td>
                           
            </tr>
            
    
            <tr>
                
                <td colspan="2">

                    <asp:Button ID="btnEntrar" runat="server" OnClick="btnRegMaestro_Click" Text="Entrar" BackColor="#2E4044" BorderColor="#89C758" Font-Size="Large" ForeColor="#89C758" Width="300px" />

                </td>
            </tr>
        </table>
    
        <br />
        <asp:Label ID="lblMensaje" runat="server" ForeColor="White"></asp:Label>
    
    </div>
            </center>
    </form>
</body>
</html>
