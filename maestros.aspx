<%@ Page Language="C#" AutoEventWireup="true" CodeFile="maestros.aspx.cs" Inherits="maestros" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <style>
        table {
            border:solid;
            border-color:yellow;
            border-width:2px;
        }
        h1, h3 {
            color:white

        }
        body{
            background-color:#2e4044;
        }
    </style>
    <form id="form1" runat="server">
        <asp:Button BackColor="#2e4044" ID="btnVolver" runat="server" Text="Volver" ForeColor="#80C342" Width="100px" BorderColor="#80C342" BorderStyle="Solid" Font-Bold="True" Font-Size="Large" OnClick="btnVolver_Click" />
        <center>
    <div>
    <h1>Bienvenido Maestro</h1>
        <h3>Favor de ingresar sus datos</h3>
<table>
            <tr>
                <td>
                    <asp:Label ID="lblIdAlumno" runat="server" Text="Id" Font-Size="Large" ForeColor="White"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtIdMaestro" runat="server" Width="150px"></asp:TextBox>
                </td>
                           
            </tr>
            
            <tr>
                <td>
                    <asp:Label ID="lblPaswdMaestro" runat="server" Text="Contraseña" Font-Size="Large" ForeColor="White"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtPaswdMaestro" runat="server" Width="150px" TextMode="Password"></asp:TextBox>
                </td>
                           
            </tr>
            
    
            <tr>
                
                <td colspan="2">

                    <asp:Button ID="btnEntrar" runat="server" OnClick="btnRegMaestro_Click" Text="Entrar" BackColor="#2E4044" BorderColor="#89C758" Font-Size="Large" ForeColor="#89C758" Width="250px" />

                </td>
            </tr>
        </table>
        <asp:Label ID="lblMensaje" runat="server" ForeColor="White" Text="Si no te acuerdas de tu usuario y/o contraseña, dar click "></asp:Label>
        <asp:Button ID="btnAqui" runat="server" BackColor="#2E4044" BorderColor="#2E4044" ForeColor="White" Text="aquí" OnClick="btnAqui_Click" />
        <br />
        <br />
        <asp:Label ID="lblMostrar" runat="server" ForeColor="White"></asp:Label>
        <br />

        
    </div>
            </center>
    </form>
</body>
</html>
