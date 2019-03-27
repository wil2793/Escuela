<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

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
    <center>
    <form id="form1" runat="server">
        <h1>Bienvenidos a nuestra escuela</h1>
    <div>
        <h3>Favor de identificarse:</h3>
        <asp:Button ID="btnMaestros" runat="server" Text="Maestros" BackColor="#2e4044" ForeColor="#F15928" Font-Bold="True" Font-Size="Large" Height="50px" Width="150px" BorderColor="#F15928" BorderStyle="Solid" OnClick="btnMaestros_Click" />
        <br />
        <br />
        <asp:Button ID="btnAlumnos" runat="server" Text="Alumnos" BackColor="#2e4044" ForeColor="#FFC60B" Font-Size="Large" Height="50px" Width="150px" Font-Bold="true" BorderColor="#FFC60B" BorderStyle="Solid" OnClick="btnAlumnos_Click"/>
        <br />
        <br />
        <asp:Button ID="btnAdmin" runat="server" OnClick="btnAdmin_Click" Text="Administrador" BackColor="#2e4044" ForeColor="#A75BA5" Font-Size="Large" Height="50px" Width="150px" Font-Bold="true" BorderColor="#A75BA5" BorderStyle="Solid"/>
        <br />
    </div>
    </form>
</body>
    </center>
</html>