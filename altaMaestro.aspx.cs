using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class altaMaestro : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnRegMaestro_Click(object sender, EventArgs e)
    {
        if (string.IsNullOrEmpty(txtNombreMaestro.Text) || string.IsNullOrEmpty(txtPaswdMaestro.Text) || string.IsNullOrEmpty(txtEmail.Text) || string.IsNullOrEmpty(txtIdMaestro.Text))
        {

            lblprueba.Text = "Debe completar la informacion";

            return;

        }
        else
        {
            lblprueba.Text = "";
        }


        String cadenaConexion = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Escuela\\App_Data\\escuela.mdf;Integrated Security=True";
        String consultaSQL = "";

        //Leer los datos del formulario
        String id  =    txtIdMaestro.Text;
        String nombre = txtNombreMaestro.Text;
        String paswd =  txtPaswdMaestro.Text;
        String email =  txtEmail.Text;

        //Vamos a construir la consulta SQL
        consultaSQL = "INSERT INTO maestros ";
        consultaSQL += "(id_maestro, paswd_maestro, nombre_maestro, email_maestro) VALUES (";
        consultaSQL += "'" + id + "',";
        consultaSQL += "'" + paswd + "',";
        consultaSQL += "'" + nombre + "',";
        consultaSQL += "'" + email + "')";

        //lblSQL.Text = consultaSQL; //Esta es la consulta a realizar

        SqlConnection conexion; //Establecer la coonexion
        SqlCommand cmd; //Crear el comando de consulta
        conexion = new SqlConnection(cadenaConexion);
        try
        {
            conexion.Open();
            cmd = new SqlCommand(consultaSQL, conexion);
            cmd.ExecuteNonQuery();
            lblTabla.Text = "El Maestro se dio de alta";
            lblprueba.Text = "";
        }
        catch (Exception ex)
        {
            lblTabla.Text = "Error: " + ex.Message;
        }
        finally
        {
            conexion.Close();
        }
    }

    protected void btnLimpiar_Click(object sender, EventArgs e)
    {
        txtIdMaestro.Text = "";
        txtNombreMaestro.Text = "";
        txtPaswdMaestro.Text = "";
        txtEmail.Text = "";
        lblTabla.Text = "";
        lblprueba.Text = "";
    }

    protected void btnVolver_Click(object sender, EventArgs e)
    {
        this.Server.Transfer("administrador.aspx");
    }
}