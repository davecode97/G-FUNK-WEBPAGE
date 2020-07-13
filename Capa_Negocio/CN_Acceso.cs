using System;
using System.Collections.Generic;
using System.Text;
using Capa_Entidades;
using Capa_Datos;

namespace Capa_Negocio
{
    public class CN_Acceso
    {
        CD_Acceso objAcceso = new CD_Acceso();

        #region SP_ACCESO
        public bool Acceso(E_Acceso Acceso)
        {
            return objAcceso.SP_ACCESO(Acceso);
        }
        #endregion
    }
}
