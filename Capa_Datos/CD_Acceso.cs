using System;
using System.Collections.Generic;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using Capa_Entidades;

namespace Capa_Datos
{

    public class CD_Acceso
    {
        CD_Conexion conexion = new CD_Conexion();
        SqlCommand comando = new SqlCommand();

        #region SP_ACCESO
        public bool SP_ACCESO(E_Acceso Acceso)
        {
            comando.Connection = conexion.AbrirConexion();
            comando.CommandText = "SP_ACCESO";
            comando.CommandType = CommandType.StoredProcedure;
            comando.Parameters.AddWithValue("@username", Acceso.username);
            comando.Parameters.AddWithValue("@password", Acceso.password);

            SqlDataReader reader = comando.ExecuteReader();

            
            if (reader.HasRows)
            {
                return true;
            }
            else
            {
                return false;
            }

        }

        #endregion
    }
}
