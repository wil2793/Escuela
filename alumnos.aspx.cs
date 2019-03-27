using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class alumnos : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnVolver_Click(object sender, EventArgs e)
    {
        Server.Transfer("Default.aspx");
    }

   

    protected void btnAqui_Click(object sender, EventArgs e)
    {
        Server.Transfer("olvidado.aspx");
    }

    protected void btnRegMaestro_Click(object sender, EventArgs e)
    {
        if (string.IsNullOrEmpty(txtIdAlumno.Text))
        {
            lblMostrar.Text = "Ingresa tu usaario";
        }
        else if (string.IsNullOrEmpty(txtPaswdALumno.Text))
        {
            lblMostrar.Text = "Ingresa tu contraseña";
        }
        else
        {
            lblMostrar.Text = "";
            Server.Transfer("estudiante.aspx");
        }
    }
}