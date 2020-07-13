using System;
using System.Collections.Generic;
using System.Text;
using System.Data.SqlClient;
using System.Data;
using Capa_Entidades;
using Capa_Datos;

namespace Capa_Negocio
{
    public class CN_Productos
    {
        CD_Productos objDato = new CD_Productos();
        E_Productos objEntidades = new E_Productos();
        #region LISTAR TODO PRODUCTOS

        public void Crear_Actualizar(E_Productos objEntidades)
        {
            objDato.Crear_Actualizar(objEntidades);
        }
        public DataTable ListandoProductos()
        {
            return objDato.ListarProductos();
        }
        #endregion

        #region LISTANDO
        public DataTable ListandoXproducto(E_Productos e_Productos)
        {
            return objDato.ListarXproducto(e_Productos);
        }
        #endregion

        #region GUARDAR
        public int grabarProducto(E_Productos Entidades)
        {
            return objDato.Insertar(Entidades);
        }
        #endregion

        #region EDITAR
        public void Editando(E_Productos Productos)
        {
            objDato.Editar(Productos);
        }
        #endregion

        #region ELIMINAR
        public void Eliminando(E_Productos Productos)
        {
            objDato.Eliminar(Productos);
        }
        #endregion
    }
}
