using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class administrador : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {
        btnListaMaaestros.Click += new EventHandler(btnListaMaaestros_Click);
    }

    protected void btnAltaMestro_Click(object sender, EventArgs e)
    {
        this.Server.Transfer("altaMaestro.aspx");
    }

    protected void btnListaMaaestros_Click(object sender, EventArgs e)
    {
        this.Server.Transfer("listaMaestros.aspx");
    }

    protected void btnVolver_Click(object sender, EventArgs e)
    {
        this.Server.Transfer("default.aspx");
    }

    protected void btnAltaAlumno_Click(object sender, EventArgs e)
    {
        this.Server.Transfer("altaAlumno.aspx");
    }

    protected void btnListaAlumnos_Click(object sender, EventArgs e)
    {
        this.Server.Transfer("listaAlumno.aspx");
    }
}