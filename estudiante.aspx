<%@ Page Language="C#" AutoEventWireup="true" CodeFile="estudiante.aspx.cs" Inherits="estudiante" %>

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
        </style>
<body>
    <form id="form1" runat="server">
        <center>
    <div>
    <h1>Bienvenido de nuevo</h1>

        <asp:Button BackColor="#2e4044" ID="btnVolver" runat="server" Text="Inicio" ForeColor="#80C342" Width="100px" BorderColor="#80C342" BorderStyle="Solid" Font-Bold="True" Font-Size="Large" OnClick="btnVolver_Click" />
    </div>
            </center>
    </form>
</body>
</html>
