using System;
using System.Collections.Generic;
using System.Text;
using System.Data.SqlClient;
using System.Data;

namespace Capa_Datos
{
    class CD_Conexion
    {
        private SqlConnection Conexion = new SqlConnection("Server=localhost; DataBase=G_FUNK; Integrated Security=true");

        public  SqlConnection AbrirConexion()
        {
            if(Conexion.State == ConnectionState.Closed)
                Conexion.Open();
                return Conexion; 
        }

        public SqlConnection CerrarConexion()
        {
            if(Conexion.State == ConnectionState.Open)
                Conexion.Close();
                return Conexion;
        }
    }
}
