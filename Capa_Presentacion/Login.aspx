<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Capa_Presentacion.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>LOGIN MANAGEMENT</title>
    <style>
        body{
                background-image: url(./resources/woman-in-white-shirt-wearing-brown-hat-3608533.jpg);
                background-position: center;
                background-repeat: no-repeat;
                font-family: 'Manjari', sans-serif;
        }

        .tablas{
            background-color:Window;
        }
    </style>
</head>
<body>
  <form id="form1" runat="server">
   <div>
    <table style="margin: auto;
        border: 5px solid white
" class="tablas">
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Nombre: "></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtUser_Name" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Contraseña: "></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>

            </td>
            <td>
                <asp:Button ID="btnAcceso" runat="server" Text="Acceder" OnClick="btnAcceso_Click" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lbError" runat="server" Text="Error al inciar sesión!" ForeColor="Red" Visible="False"></asp:Label>
            </td>
        </tr>
    </table>
   </div>
  </form>
    <footer style="color:white">

    </footer>
</body>
</html>
