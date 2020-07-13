using System;
using System.Collections.Generic;
using System.Text;

namespace Capa_Entidades
{
    public class E_Productos
    {
        // ATRIBUTOS DE LA ENTIDADA PRODUCTOS

        private int _IdProducto;
        private string _Nombre;
        private string _Descripcion;
        private string _Marca;
        private double _Precio;
        private int _Stock;

        public int IdProducto
        {
            get {return _IdProducto;}
            set { _IdProducto = value; }

            
        }
        public string Nombre { get => _Nombre; set => _Nombre = value; }
        public string Descripcion { get => _Descripcion; set => _Descripcion = value; }
        public string Marca { get => _Marca; set => _Marca = value; }
        public double Precio { get => _Precio; set => _Precio = value; }
        public int Stock { get => _Stock; set => _Stock = value; }
    }
}
