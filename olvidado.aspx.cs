using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class olvidado : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnRegMaestro_Click(object sender, EventArgs e)
    {
        if (string.IsNullOrEmpty(txtNombreCompleto.Text))
        {
            lblMensaje.Text = "No puedes dejar los espacios vacios";
        }
        else
        {
            txtNombreCompleto.Text = "";
            lblMensaje.Text = "Tus datos han sido enviados, dentro de poco te mandaremos un mensaje al correo con el que te registraste";
        }
    }

    protected void btnVolver_Click(object sender, EventArgs e)
    {
        Server.Transfer("Default.aspx");
    }
}