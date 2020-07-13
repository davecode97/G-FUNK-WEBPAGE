using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Capa_Negocio;
using Capa_Entidades;

namespace Capa_Presentacion
{
    public partial class Login : System.Web.UI.Page
    {
        CN_Acceso objNegocio = new CN_Acceso();
        E_Acceso objEntidades = new E_Acceso();


        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void btnAcceso_Click(object sender, EventArgs e)
        {
            lbError.Visible = false;
            objEntidades.username = txtUser_Name.Text.Trim();
            objEntidades.password = txtPassword.Text.Trim();


            var validaAcceso = objNegocio.Acceso(objEntidades);

            if (validaAcceso == true)
            {
                Session["username"] = txtUser_Name.Text.Trim();
                Response.Redirect("Management.aspx");
            }
            else
            {
                lbError.Visible = true;
            }
        }
    }
}