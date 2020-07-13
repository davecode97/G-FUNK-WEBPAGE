using System;
using System.Collections.Generic;
using System.Text;
using System.Data.SqlClient;
using System.Data;
using Capa_Entidades;

namespace Capa_Datos
{
    public class CD_Productos
    {
        CD_Conexion conexion = new CD_Conexion();

        SqlDataReader leer;
        DataTable tabla = new DataTable();
        SqlCommand comando = new SqlCommand();

        public void Crear_Actualizar(E_Productos objProductos)
        {
            comando.Connection = conexion.AbrirConexion();
            comando.CommandText = "SP_CREAR_O_ALMACENAR";
            comando.CommandType = CommandType.StoredProcedure;
            comando.Parameters.AddWithValue("@IdProducto", objProductos.IdProducto);
            comando.Parameters.AddWithValue("@Nombre", objProductos.Nombre);
            comando.Parameters.AddWithValue("@Descripcion", objProductos.Descripcion);
            comando.Parameters.AddWithValue("@Marca", objProductos.Marca);
            comando.Parameters.AddWithValue("@Precio", objProductos.Precio);
            comando.Parameters.AddWithValue("@Stock", objProductos.Stock);

            comando.ExecuteNonQuery();
            comando.Parameters.Clear();
            conexion.CerrarConexion();
        }

        #region MOSTRAR TODO PRODUCTOS
        public DataTable ListarProductos()
        {
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = conexion.AbrirConexion();
            cmd.CommandText = "SP_MOSTRAR_TODO_PRODUCTO";
            cmd.CommandType = CommandType.StoredProcedure;
            leer = cmd.ExecuteReader();
            tabla.Load(leer);

            conexion.CerrarConexion();
            return tabla;
        }

        #endregion

        #region MOSTRAR X PRODUCTO
        public DataTable ListarXproducto(E_Productos E_Productos)
        {
            comando.Connection = conexion.AbrirConexion();
            comando.CommandText = "SP_MOSTRAR_X_PRODUCTOS";
            comando.CommandType = CommandType.StoredProcedure;
            comando.Parameters.AddWithValue("@IdProducto", E_Productos.IdProducto);

            leer = comando.ExecuteReader();
            tabla.Load(leer);
            conexion.CerrarConexion();

            return tabla;
        }
        #endregion

        #region INSERTAR PRODUCTO
        public int Insertar(E_Productos Productos)
        {
            comando.Connection = conexion.AbrirConexion();
            comando.CommandText = "SP_INSERTAR_PRODUCTOS";
            comando.CommandType = CommandType.StoredProcedure;
            comando.Parameters.AddWithValue("@Nombre", Productos.Nombre);
            comando.Parameters.AddWithValue("@Descripcion", Productos.Descripcion);
            comando.Parameters.AddWithValue("@Marca", Productos.Marca);
            comando.Parameters.AddWithValue("@Precio", Productos.Precio);
            comando.Parameters.AddWithValue("@Stock", Productos.Stock);

            int retorno = comando.ExecuteNonQuery();
            comando.Parameters.Clear(); // Limpiar objeto
            conexion.CerrarConexion();

            return retorno;
        }
        #endregion

        #region EDITAR PRODUCTO
        public void Editar(E_Productos Productos)
        {
            comando.Connection = conexion.AbrirConexion();
            comando.CommandText = "SP_EDITAR_PRODUCTOS";
            comando.CommandType = CommandType.StoredProcedure;
            
            comando.Parameters.AddWithValue("@Nombre", Productos.Nombre);
            comando.Parameters.AddWithValue("@Descripcion", Productos.Descripcion);
            comando.Parameters.AddWithValue("@Marca", Productos.Marca);
            comando.Parameters.AddWithValue("@Precio", Productos.Precio);
            comando.Parameters.AddWithValue("@Stock", Productos.Stock);
            comando.Parameters.AddWithValue("@Id", Productos.IdProducto);

            comando.ExecuteNonQuery();
            conexion.CerrarConexion();

        }
        #endregion
        
        #region ELIMINAR PRODUCTO
        public void Eliminar(E_Productos Productos)
        {
            comando.Connection = conexion.AbrirConexion();
            comando.CommandText = "SP_ELIMINAR_PRODUCTO";
            comando.CommandType = CommandType.StoredProcedure;

            comando.Parameters.AddWithValue("@IdProducto", Productos.IdProducto);
            comando.ExecuteNonQuery();

            conexion.CerrarConexion();

        }
        #endregion
    }
}
