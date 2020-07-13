<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Management.aspx.cs" Inherits="Capa_Presentacion.Management" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<link rel="stylesheet" href="css/style_admin.css"/>
    <title>G-FUNK Management</title>
    <style type="text/css">
        .auto-style1 {
            width: 113px;
        }
        .auto-style2 {
            width: 709px;
        }
        .auto-style3 {
            width: 353px;
        }
        .auto-style4 {
            margin-left: 0px;
        }
        .auto-style5 {
            margin-left: 40px;
            width: 343px;
        }
        .auto-style6 {
            width: 343px;
        }
        .auto-style7 {
            width: 308px;
        }
        </style>
</head>
<body>
  <form id="form1" runat="server">
    <header class ="cabezera">
        <asp:Panel ID="HeaderPanel" runat="server" BackColor="#990000" Height="155px">
            <asp:HiddenField ID="hf_IdProducto" runat="server" />
            <br />
    
            <table>
                <tr>
                    <td class="auto-style1">
                        <asp:Image ID="Image1" runat="server" Height="75px" ImageUrl="~/resources/rap_60px.png" Width="90px" />
                    </td>
                    <td>
                        <asp:Label ID="Label1" runat="server" Font-Names="Century Gothic" Font-Size="Medium" Text="G-FUNK  Management" Font-Bold="False" ForeColor="White"></asp:Label>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="lbUserDetails" runat="server" Text="Texto de prueba" ForeColor="White"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnSalir" runat="server" Text="Logout" OnClick="Button1_Click" />
                    </td>
                </tr>
             </table>
        </asp:Panel>
   </header>
    <div>
        <table class ="contenedor">
          <tr>
              <td class="auto-style2">
                  <!-- GRID VIEW -->
                  <table class="grid">
                      <tr>
                          <td>
                               <asp:Label ID="labelError" runat="server" ForeColor="Red"></asp:Label>

      <asp:Label ID="labelSuccess" runat="server" ForeColor="#339933" Font-Bold="True" Font-Size="Medium"></asp:Label>

                               <br />
                               <asp:GridView ID="tablaProductos" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" Height="309px" Width="641px">
                                   <Columns>
                                       <asp:BoundField DataField="IdProducto" HeaderText="Id Producto" />
                                       <asp:BoundField DataField="Nombre" HeaderText="Nombre" />
                                       <asp:BoundField DataField="Descripcion" HeaderText="Descripcion"/>
                                       <asp:BoundField DataField="Marca" HeaderText="Marca" />
                                       <asp:BoundField DataField="Precio" HeaderText="Precio"/>
                                       <asp:BoundField DataField="Stock" HeaderText="Stock" />

                                        <asp:TemplateField>
                                            <ItemTemplate>
                                                <asp:LinkButton ID="lnkView" runat="server" CommandArgument='<%# Eval("IdProducto") %>' OnClick="lnk_OnClick">Seleccionar</asp:LinkButton>
                                            </ItemTemplate>
                                   </asp:TemplateField>
                                   </Columns>
                             
            
                                   <AlternatingRowStyle BackColor="White" />
                                   <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                                   <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                                   <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                                   <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                                   <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                                   <SortedAscendingCellStyle BackColor="#FDF5AC" />
                                   <SortedAscendingHeaderStyle BackColor="#4D0000" />
                                   <SortedDescendingCellStyle BackColor="#FCF6C0" />
                                   <SortedDescendingHeaderStyle BackColor="#820000" />
                               </asp:GridView>
                          </td>
                    </tr>
                  </table>
                  </td>
            <td class="auto-style7">
            <table class="txt-btn">
                <tr>
                    <td>

                        <asp:Label ID="Label11" runat="server" Text="Id Producto:" Font-Bold="False" Font-Names="Century Gothic" Font-Size="Medium" ForeColor="#990000"></asp:Label>
                        <br />
                        <asp:TextBox ID="txtIdProducto" runat="server" Height="16px" Width="316px" ReadOnly="True" BackColor="#FFFFCC"></asp:TextBox>

                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="Label3" runat="server" Text="Nombre:" Font-Bold="False" Font-Names="Century Gothic" Font-Size="Medium" ForeColor="#990000"></asp:Label>
                        <br />
                        <asp:TextBox ID="txtNombre" runat="server" Height="16px" Width="316px"></asp:TextBox>
                        <br />
                    </td>
                </tr>

                <tr>
                    <td>
                        <asp:Label ID="Label7" runat="server" Text="Descripción:" Font-Bold="False" Font-Names="Century Gothic" Font-Size="Medium" ForeColor="#990000"></asp:Label>
                        &nbsp;<br />
                        <asp:TextBox ID="txtDescripcion" runat="server" Height="16px" Width="316px"></asp:TextBox>
                        <br />
                    </td>
                </tr>

                <tr>
                    <td>
                        
                        <asp:Label ID="Label8" runat="server" Text="Marca:" Font-Bold="False" Font-Names="Century Gothic" Font-Size="Medium" ForeColor="#990000"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                        <asp:TextBox ID="txtMarca" runat="server" Height="16px" Width="316px"></asp:TextBox>
                        
                        <br />
                        
                    </td>
                </tr>

                <tr>
                    <td>

                        <asp:Label ID="Label9" runat="server" Text="Precio:" Font-Bold="False" Font-Names="Century Gothic" Font-Size="Medium" ForeColor="#990000"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                        <asp:TextBox ID="txtPrecio" runat="server" Height="16px" Width="316px"></asp:TextBox>

                        <br />

                    </td>
                </tr>
              <tr>
                  <td>
                      
                        <asp:Label ID="Label10" runat="server" Text="Stock:" Font-Bold="False" Font-Names="Century Gothic" Font-Size="Medium" ForeColor="#990000"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                        <asp:TextBox ID="txtStock" runat="server" Height="16px" Width="316px"></asp:TextBox>
                      
                        <br />
                      
                  </td>
              </tr>
              <tr>
                  <td>
                      <table>
                          <tr>
                              <td class="auto-style6"></td>
                          </tr>
                          <tr>
                              <td class="auto-style5">
                                  <!-- BOTENES -->
                                  <table>
                                      <tr>
                                          <td>
                                            <asp:Button ID="btnNuevo" runat="server" BackColor="#0063B1" ForeColor="White" OnClick="btnNuevo_Click" Text="Nuevo" Width="99px" Font-Names="Century Gothic" Height="37px" />
                                          </td>
                                          <td>
                                              <asp:Button ID="btnGuardar" runat="server" BackColor="#0063B1" CssClass="auto-style4" ForeColor="White" Text="Guardar" Width="99px" OnClick="btnGuardar_Click" Font-Names="Century Gothic" Height="37px" />
                                          </td>
                                          <td>
                                              <asp:Button ID="btnEliminar" runat="server" BackColor="#DD4500" ForeColor="White" Text="Eliminar" Width="99px" Font-Names="Century Gothic" Height="37px" OnClick="btnEliminar_Click" />
                                          </td>
                                      </tr>
                                  </table>                                 
                            </td>
                         </tr>
                      </table>
                  </td>
              </tr>
          </table>
        </td>
      </tr>
    </table> <!-- Contenedor -->  
   </div>
  </form>
      <br />
          <br />
 
  <footer class="pie" style="background-color:azure; color:black">
      <asp:Label ID="footerLabel" runat="server" Font-Bold="False" Font-Names="Century Gothic" Font-Overline="False" Font-Size="Medium" Text="" ForeColor="#990000"></asp:Label>
  </footer>
      

 </body>
</html>
