<%@ Page Language="C#" AutoEventWireup="true" CodeFile="altaAlumno.aspx.cs" Inherits="altaAlumno" %>

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
    <h1>Bienvenido Alumno</h1>
        <h3>Favor de ingresar sus datos</h3>
<table>
            <tr>
                <td>
                    <asp:Label ID="lblIdAlumno" runat="server" Text="Id" Font-Size="Large" ForeColor="White"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtIdAlumno" runat="server" Width="150px"></asp:TextBox>
                </td>
                           
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblNombreMaestro" runat="server" Text="Nombre" Font-Size="Large" ForeColor="White" Width="100px"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtNombreAlumno" runat="server" Width="150px"></asp:TextBox>
                    
                </td>
                
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblPaswdMaestro" runat="server" Text="Contraseña" Font-Size="Large" ForeColor="White"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtPaswdALumno" runat="server" Width="150px" TextMode="Password"></asp:TextBox>
                </td>
                           
            </tr>
            <tr>
                <td>

                    <asp:Label ID="lblEmail" runat="server" Text="Email" Font-Size="Large" ForeColor="White"></asp:Label>

                </td>
                <td>

                    <asp:TextBox ID="txtEmail" runat="server" Width="150px"></asp:TextBox>

                </td>
            </tr>
    <tr>
                <td>

                    <asp:Label ID="lblCarrera" runat="server" Text="Carrera" Font-Size="Large" ForeColor="White"></asp:Label>

                </td>
                <td>

                    
                    </select><asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="escuela" DataTextField="carrera" DataValueField="carrera">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="escuela" runat="server" ConnectionString="<%$ ConnectionStrings:escuelaConnectionString1 %>" SelectCommand="SELECT [carrera] FROM [carrera]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td>

                    <asp:Button ID="btnRegAlumno" runat="server" OnClick="btnRegMaestro_Click" Text="Registrar" BackColor="#2E4044" BorderColor="#89C758" Font-Size="Large" ForeColor="#89C758" Width="100px" />

                </td>
                <td>

                    <asp:Button ID="btnLimpiar" runat="server" Text="Limpiar campos" OnClick="btnLimpiar_Click" BackColor="#2E4044" BorderColor="#F15928" Font-Size="Large" ForeColor="#F15928" Width="150px" />

                </td>
            </tr>
        </table>
    </div>
            <p>
            <asp:Label ID="lblSQL" runat="server" ForeColor="White"></asp:Label>
        </p>
        <p>
            <asp:Label ID="lblTabla" runat="server" ForeColor="White"></asp:Label>
        </p>
        <p>
            <asp:Label ID="lblprueba" runat="server" ForeColor="White"></asp:Label>
        </p>
            </center>
    </form>
</body>
</html>
