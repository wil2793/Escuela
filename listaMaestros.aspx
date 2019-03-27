<%@ Page Language="C#" AutoEventWireup="true" CodeFile="listaMaestros.aspx.cs" Inherits="listaMaestros" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Lista de maestros</title>
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
        <h1>Lista completa de todos los maestros</h1>
        <p>&nbsp;</p>
        <p>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataKeyNames="Id_maestro" DataSourceID="SqlDataSource1" EmptyDataText="No hay registros de datos para mostrar." GridLines="Horizontal">
                <Columns>
                    <asp:BoundField DataField="Id_maestro" HeaderText="Id" ReadOnly="True" SortExpression="Id_maestro" />
                    <asp:BoundField DataField="nombre_maestro" HeaderText="Nombre" SortExpression="nombre_maestro" />
                    <asp:BoundField DataField="email_maestro" HeaderText="Email" SortExpression="email_maestro" />
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:escuelaConnectionString1 %>" DeleteCommand="DELETE FROM [maestros] WHERE [Id_maestro] = @Id_maestro" InsertCommand="INSERT INTO [maestros] ([Id_maestro], [paswd_maestro], [nombre_maestro], [email_maestro]) VALUES (@Id_maestro, @paswd_maestro, @nombre_maestro, @email_maestro)" ProviderName="<%$ ConnectionStrings:escuelaConnectionString1.ProviderName %>" SelectCommand="SELECT [Id_maestro], [paswd_maestro], [nombre_maestro], [email_maestro] FROM [maestros]" UpdateCommand="UPDATE [maestros] SET [paswd_maestro] = @paswd_maestro, [nombre_maestro] = @nombre_maestro, [email_maestro] = @email_maestro WHERE [Id_maestro] = @Id_maestro">
                <DeleteParameters>
                    <asp:Parameter Name="Id_maestro" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Id_maestro" Type="String" />
                    <asp:Parameter Name="paswd_maestro" Type="String" />
                    <asp:Parameter Name="nombre_maestro" Type="String" />
                    <asp:Parameter Name="email_maestro" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="paswd_maestro" Type="String" />
                    <asp:Parameter Name="nombre_maestro" Type="String" />
                    <asp:Parameter Name="email_maestro" Type="String" />
                    <asp:Parameter Name="Id_maestro" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </p>
        <div>
    
    </div>
    </form>
</body>
    </center>
</html>
