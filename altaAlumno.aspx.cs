using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class altaAlumno : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnRegMaestro_Click(object sender, EventArgs e)
    {
        if (string.IsNullOrEmpty(txtIdAlumno.Text) || string.IsNullOrEmpty(txtNombreAlumno.Text) || string.IsNullOrEmpty(txtEmail.Text) || string.IsNullOrEmpty(txtPaswdALumno.Text))
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
        String id = txtIdAlumno.Text;
        String nombre = txtNombreAlumno.Text;
        String paswd = txtPaswdALumno.Text;
        String email = txtEmail.Text;
        String carrera = DropDownList1.Text;

        //Vamos a construir la consulta SQL
        consultaSQL = "INSERT INTO alumnos ";
        consultaSQL += "(Id_alumno, paswd_alumno, nombre_alumno, email_alumno, carrera) VALUES (";
        consultaSQL += "'" + id + "',";
        consultaSQL += "'" + paswd + "',";
        consultaSQL += "'" + nombre + "',";
        consultaSQL += "'" + email + "',";
        consultaSQL += "'" + carrera + "')";

        //lblSQL.Text = consultaSQL; //Esta es la consulta a realizar

        SqlConnection conexion; //Establecer la coonexion
        SqlCommand cmd; //Crear el comando de consulta
        conexion = new SqlConnection(cadenaConexion);
        try
        {
            conexion.Open();
            cmd = new SqlCommand(consultaSQL, conexion);
            cmd.ExecuteNonQuery();
            lblTabla.Text = "El Alumno se dio de alta";
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
        txtIdAlumno.Text = "";
        txtNombreAlumno.Text = "";
        txtPaswdALumno.Text = "";
        txtEmail.Text = "";
        lblprueba.Text="";
        lblTabla.Text = "";
    }

    protected void btnVolver_Click(object sender, EventArgs e)
    {
        Server.Transfer("administrador.aspx");
    }
}
