﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class listaAlumno : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnVolver_Click(object sender, EventArgs e)
    {
        this.Server.Transfer("administrador.aspx");
    }
}