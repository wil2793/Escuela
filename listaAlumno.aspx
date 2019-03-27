<%@ Page Language="C#" AutoEventWireup="true" CodeFile="listaAlumno.aspx.cs" Inherits="listaAlumno" %>

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
        body{
            background-color:#2e4044;
        }
        h1{
            color: white;
        }
    </style>
    <form id="form1" runat="server">
        <asp:Button BackColor="#2e4044" ID="btnVolver" runat="server" Text="Volver" ForeColor="#80C342" Width="100px" BorderColor="#80C342" BorderStyle="Solid" Font-Bold="True" Font-Size="Large" OnClick="btnVolver_Click" />
    <center>
        <h1>Lista completa de todos los alumnos</h1>
        <p>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataKeyNames="Id_alumno" DataSourceID="SqlDataSource1" EmptyDataText="No hay registros de datos para mostrar." GridLines="Horizontal">
                <Columns>
                    <asp:BoundField DataField="Id_alumno" HeaderText="Id" ReadOnly="True" SortExpression="Id_alumno" />
                    <asp:BoundField DataField="nombre_alumno" HeaderText="Nombre" SortExpression="nombre_alumno" />
                    <asp:BoundField DataField="email_alumno" HeaderText="Email" SortExpression="email_alumno" />
                    <asp:BoundField DataField="carrera" HeaderText="Carrera" SortExpression="carrera" />
                    <asp:CommandField HeaderText="Acciones" ShowDeleteButton="True" ShowEditButton="True" />
                </Columns>
                <FooterStyle BackColor="White" ForeColor="#333333" />
                <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="White" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                <SortedAscendingHeaderStyle BackColor="#487575" />
                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                <SortedDescendingHeaderStyle BackColor="#275353" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:escuelaConnectionString1 %>" DeleteCommand="DELETE FROM [alumnos] WHERE [Id_alumno] = @Id_alumno" InsertCommand="INSERT INTO [alumnos] ([Id_alumno], [paswd_alumno], [nombre_alumno], [email_alumno], [carrera]) VALUES (@Id_alumno, @paswd_alumno, @nombre_alumno, @email_alumno, @carrera)" ProviderName="<%$ ConnectionStrings:escuelaConnectionString1.ProviderName %>" SelectCommand="SELECT [Id_alumno], [paswd_alumno], [nombre_alumno], [email_alumno], [carrera] FROM [alumnos]" UpdateCommand="UPDATE [alumnos] SET [paswd_alumno] = @paswd_alumno, [nombre_alumno] = @nombre_alumno, [email_alumno] = @email_alumno, [carrera] = @carrera WHERE [Id_alumno] = @Id_alumno">
                <DeleteParameters>
                    <asp:Parameter Name="Id_alumno" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Id_alumno" Type="String" />
                    <asp:Parameter Name="paswd_alumno" Type="String" />
                    <asp:Parameter Name="nombre_alumno" Type="String" />
                    <asp:Parameter Name="email_alumno" Type="String" />
                    <asp:Parameter Name="carrera" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="paswd_alumno" Type="String" />
                    <asp:Parameter Name="nombre_alumno" Type="String" />
                    <asp:Parameter Name="email_alumno" Type="String" />
                    <asp:Parameter Name="carrera" Type="String" />
                    <asp:Parameter Name="Id_alumno" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </p>
    <div>
    
    </div>
        </center>
    </form>
    
</body>
</html>
