<%@ Page Language="C#" AutoEventWireup="true" CodeFile="administrador.aspx.cs" Inherits="administrador" %>

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
        <asp:Button BackColor="#2e4044" ID="btnVolver" runat="server" Text="Volver" ForeColor="#80C342" Width="100px" BorderColor="#80C342" BorderStyle="Solid" Font-Bold="True" Font-Size="Large" OnClick="btnVolver_Click" />
    <center>    
        <h1>Bienvenido administrador</h1>
    <div>
        <h3>¿Que es lo que te gustaria hacer?</h3>
        <asp:Button BackColor="#2e4044" ID="btnAltaMestro" runat="server" OnClick="btnAltaMestro_Click" Text="Dar de alta a un maestro" ForeColor="#80C342" Height="50px" Width="300px" BorderColor="#80C342" BorderStyle="Solid" Font-Bold="True" Font-Size="Large" />
    
        <br />
        <br />
           <asp:Button BackColor="#2e4044" ID="btnAltaAlumno" runat="server" Height="50px" Text="Dar de alta a un alumno" Width="300px" BorderColor="#6BCBF3" BorderStyle="Solid" Font-Bold="True" Font-Size="Large" ForeColor="#6BCBF3" OnClick="btnAltaAlumno_Click" />
        <br />
        <br />
        <asp:Button BackColor="#2e4044" ID="btnListaMaaestros" runat="server" Height="50px" Text="Lista completa de maestros" Width="300px" BorderColor="#EE2126" BorderStyle="Solid" Font-Bold="True" Font-Size="Large" ForeColor="#EE2126" OnClick="btnListaMaaestros_Click" />
        <br />
        <br />
        <asp:Button BackColor="#2e4044" ID="btnListaAlumnos" runat="server" Height="50px" Text="Lista completa de alumnos" Width="300px" BorderColor="#FCAC1F" BorderStyle="Solid" Font-Bold="True" Font-Size="Large" ForeColor="#FCAC1F" OnClick="btnListaAlumnos_Click" />
    
       
    
    </div>
    </form>
        </center>
</body>
</html>