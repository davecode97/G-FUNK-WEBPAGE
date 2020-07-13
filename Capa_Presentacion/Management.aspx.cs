using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Capa_Entidades;
using Capa_Negocio;
using System.Data;


namespace Capa_Presentacion
{
    public partial class Management : System.Web.UI.Page
    {
        private E_Productos objEntidad = new E_Productos();
        private CN_Productos objNegocio = new CN_Productos();


        #region MOSTRAR TABLA
        public void mostrarTabla()
        {
            try
            {
                DataTable Lista = new DataTable();
                Lista = objNegocio.ListandoProductos();
                tablaProductos.DataSource = Lista;
                tablaProductos.DataBind();
            }
            catch(Exception ex)
            {
                labelError.Text = ex.Message;
            }
        }
        #endregion

        #region Page_Load
        protected void Page_Load(object sender, EventArgs e)
        {
            // ACCEDER
            lbUserDetails.Text = "USUARIO: " + Session["username"];

            if (Session["username"] == null)
            {
                Response.Redirect("Login.aspx");
            }

            //------------------------------------------------------

            if (IsPostBack == false) 
            {
                mostrarTabla();
                btnEliminar.Enabled = false;
            }
        }
        #endregion

        #region BTN NUEVO
        protected void btnNuevo_Click(object sender, EventArgs e)
        {
            LimpiarCajas();

            labelSuccess.Text = "";
            labelError.Text = "";
        }
        #endregion

        #region LIMPIAR CAJAS
        private void LimpiarCajas()
        {
            hf_IdProducto.Value = "";

            txtNombre.Text = "";
            txtDescripcion.Text = "";
            txtMarca.Text = "";
            txtPrecio.Text = "";
            txtStock.Text = "";
            txtIdProducto.Text = "";
            labelSuccess.Text = labelError.Text = "";

            btnGuardar.Text = "Guardar";
            btnEliminar.Enabled = false;


        }
        #endregion

        #region EDITAR LINK
        protected void lnk_OnClick(object sender, EventArgs e)
        {
            objEntidad.IdProducto = Convert.ToInt32((sender as LinkButton).CommandArgument);

            hf_IdProducto.Value = objEntidad.IdProducto.ToString();
            DataTable tabla = new DataTable();
            tabla = objNegocio.ListandoXproducto(objEntidad);

            txtIdProducto.Text = hf_IdProducto.Value;
            txtNombre.Text      = tabla.Rows[0]["Nombre"].ToString();
            txtDescripcion.Text = tabla.Rows[0]["Descripcion"].ToString();
            txtMarca.Text       = tabla.Rows[0]["Marca"].ToString();
            txtPrecio.Text      = tabla.Rows[0]["Precio"].ToString();
            txtStock.Text       = tabla.Rows[0]["Stock"].ToString();

            btnGuardar.Text = "Editar";
            btnEliminar.Enabled = true;

        }
        #endregion

        #region BTN GUARDAR
        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            objEntidad.IdProducto = hf_IdProducto.Value == "" ? 0 : Convert.ToInt32(hf_IdProducto.Value);

            objEntidad.Nombre = txtNombre.Text;
            objEntidad.Descripcion = txtDescripcion.Text;
            objEntidad.Marca = txtMarca.Text;
            objEntidad.Precio = Convert.ToDouble(txtPrecio.Text);
            objEntidad.Stock = Convert.ToInt32(txtStock.Text);

            objNegocio.Crear_Actualizar(objEntidad);
            LimpiarCajas();
            string contador = hf_IdProducto.Value;

            if(contador == "")
            {
                labelSuccess.Text = "SE GUARDO CORRECTAMENTE!";
                mostrarTabla();
            }
            else
            {
                labelSuccess.Text = "SE EDITO CORRECTAMENTE!";
                mostrarTabla();
            }
        }


        #endregion

        #region BTN ELIMINAR
        protected void btnEliminar_Click(object sender, EventArgs e)
        {
            objEntidad.IdProducto = Convert.ToInt32(hf_IdProducto.Value);
            objNegocio.Eliminando(objEntidad);
            LimpiarCajas();
            mostrarTabla();

            labelSuccess.Text = "SE HA ELIMINADO CORRECTAMENTE";
        }

        #endregion

        #region BTN SALIR
        protected void Button1_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("Index.aspx");
        }
        #endregion
    }
}