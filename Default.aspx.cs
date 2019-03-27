using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Globalization;


public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void btnAdmin_Click(object sender, EventArgs e)
    {
        this.Server.Transfer("administrador.aspx");
    }

    protected void btnAlumnos_Click(object sender, EventArgs e)
    {
        this.Server.Transfer("alumnos.aspx");
    }

    protected void btnMaestros_Click(object sender, EventArgs e)
    {
        this.Server.Transfer("maestros.aspx");
    }
}