<%@ page language="VB" autoeventwireup="false" inherits="Trabajo, App_Web_lplqmq1o" %>

<%@ Register Assembly="ComponentArt.Web.UI" Namespace="ComponentArt.Web.UI" TagPrefix="ComponentArt" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Bolsa de Trabajo</title>
    <LINK href="lin.css" type="text/css" rel="stylesheet">
</head>
<body bgColor="#ffffff">
<div align="center">
		<form id="delegaciones" method="post" runat="server">
			<table width="760" border="0">
				<tr>
					<td title="Limpieza"  colSpan="3">
						<!--#include file="Head.inc" --></td>
				</tr>
				<tr>
					<td title="Limpieza"  colSpan="3">
						<table width="758" border="0">
							<tr>
								<td title="Limpieza"  class="color" vAlign="top" width="100" rowSpan="2">
									<table id="menu" height="100" cellSpacing="0" cellPadding="0" width="100" border="0">
										<tr>
											<td title="Limpieza"  width="12" height="41">&nbsp;</td>
											<td title="Limpieza"  width="88" height="41"><A href="index.aspx">PAGINA PRINCIPAL</A>
											</td>
										</tr>
										<tr>
											<td title="Limpieza"  width="12" height="85"><IMG height="1" src="" width="12"></td>
											<td title="Limpieza"  width="88" height="85"></td>
										</tr>
										<tr>
											<td title="Limpieza"  width="12" height="85">&nbsp;</td>
											<td title="Limpieza"  width="88" height="85"></td>
										</tr>
									
									</table>
								</td>
								<td title="Limpieza"  id="tit" width="660" height="7">
									<P align="center"><FONT style="BACKGROUND-COLOR: #cccccc"> BOLSA DE TRABAJO</FONT></P>
								</td>
							</tr>
							<tr>
								<td title="Limpieza"  width="660" valign="top">
									<TABLE id="Table" height="550" cellSpacing="0" cellPadding="5" width="644" border="0">
										<TR>
											<td title="Limpieza"  valign="top" align="center">
												     <asp:Label ID="Label2" runat="server" Font-Bold="True" Style="text-align: center"
                                                        Text="FORMULARIO DE CONTACTO"
                                                        Width="369px"></asp:Label><br /><br />
                                                    <asp:Panel ID="Panel1" runat="server">
                                                        <table align="center">
                                                            <tr>
                                                                <td title="Limpieza"  align="left" style="width: 100px">
                                                                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Style="text-align: left" Text="Nombre:"
                                                                        Width="120px"></asp:Label></td>
                                                                <td title="Limpieza"  align="left" style="width: 100px">
                                                                    <asp:TextBox ID="Nombre" runat="server" CausesValidation="True" MaxLength="30"></asp:TextBox><br />
                                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Nombre"
                                                                        Display="dynamic" Width="177px">Nombre requerido!</asp:RequiredFieldValidator></td>
                                                            </tr>
                                                            <tr>
                                                                <td title="Limpieza"  align="left" style="width: 100px">
                                                                    <asp:Label ID="Label7" runat="server" Font-Bold="True" Style="text-align: left" Text="Apellido:"
                                                                        Width="120px"></asp:Label></td>
                                                                <td title="Limpieza"  align="left" style="width: 100px">
                                                                    <asp:TextBox ID="Apellido" runat="server" MaxLength="30"></asp:TextBox><br />
                                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Apellido"
                                                                        Display="dynamic" Width="177px">Apellido requerido!</asp:RequiredFieldValidator></td>
                                                            </tr>
                                                            <tr>
                                                                <td title="Limpieza"  align="left" style="width: 100px">
                                                                    <asp:Label ID="Label8" runat="server" Font-Bold="True" Style="text-align: left" Text="NIF:"
                                                                        Width="120px"></asp:Label></td>
                                                                <td title="Limpieza"  align="left" style="width: 100px">
                                                                    <asp:TextBox ID="Nif" runat="server" MaxLength="20"></asp:TextBox></td>
                                                            </tr>
                                                               <tr>
                                                                <td title="Limpieza"  align="left" style="width: 100px">
                                                                    <asp:Label ID="Label3" runat="server" Font-Bold="True" Style="text-align: left" Text="Nacionalidad:"
                                                                        Width="120px"></asp:Label></td>
                                                                <td title="Limpieza"  align="left" style="width: 100px">
                                                                    <asp:TextBox ID="Nacionalidad" runat="server" MaxLength="30"></asp:TextBox><br />
                                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="Nacionalidad"
                                                                        Display="dynamic" Width="177px">Nacionalidad Requerida!</asp:RequiredFieldValidator>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td title="Limpieza"  align="left" style="width: 100px">
                                                                    <asp:Label ID="Label9" runat="server" Font-Bold="True" Style="text-align: left" Text="E-mail:"
                                                                        Width="120px"></asp:Label></td>
                                                                <td title="Limpieza"  align="left" style="width: 100px">
                                                                    <asp:TextBox ID="Email" runat="server" MaxLength="50"></asp:TextBox><br />
                                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="Email"
                                                                        Display="dynamic" Width="177px">E-mail requerido!</asp:RequiredFieldValidator></td>
                                                            </tr>
                                                               <tr>
                                                                <td title="Limpieza"  align="left" style="width: 100px">
                                                                    <asp:Label ID="Label4" runat="server" Font-Bold="True" Style="text-align: left" Text="Fecha de Nacimento:"
                                                                        Width="120px"></asp:Label></td>
                                                                <td title="Limpieza"  align="left" style="width: 100px">
                                                                    <asp:TextBox ID="txtNacimiento" runat="server" MaxLength="20"></asp:TextBox>&nbsp;<br />
                                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtNacimiento"
                                                                        Display="dynamic" Width="177px">Fecha requerida!</asp:RequiredFieldValidator></td>
                                                            </tr>
                                                              <tr>
                                                                <td title="Limpieza"  align="left" style="width: 100px">
                                                                    <asp:Label ID="Label5" runat="server" Font-Bold="True" Style="text-align: left" Text="Teléfono Contacto:"
                                                                        Width="120px"></asp:Label></td>
                                                                <td title="Limpieza"  align="left" style="width: 100px">
                                                                    <asp:TextBox ID="Telf" runat="server" MaxLength="30"></asp:TextBox><br />
                                                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="Telf"
                                                                        Display="Dynamic" ErrorMessage="solo números" ValidationExpression="^\d*"></asp:RegularExpressionValidator><br />
                                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="Telf"
                                                                        Display="dynamic" Width="177px">Teléfono requerido!</asp:RequiredFieldValidator></td>
                                                            </tr>
                                                              <tr>
                                                                <td title="Limpieza"  align="left" style="width: 100px; height: 39px;">
                                                                    <asp:Label ID="Label6" runat="server" Font-Bold="True" Style="text-align: left" Text="Carnet de Conducir:"
                                                                        Width="120px"></asp:Label></td>
                                                                <td title="Limpieza"  align="left" style="width: 100px;">
                                                                    <asp:RadioButtonList ID="rad_Carnet" runat="server" RepeatDirection="Horizontal" BorderWidth="1px" Height="28px" Width="155px">
                                                                        <asp:ListItem Value="SI">Si</asp:ListItem>
                                                                        <asp:ListItem Value="NO" Selected="True">No</asp:ListItem>
                                                                    </asp:RadioButtonList></td>
                                                            </tr>
                                                               <tr>
                                                                <td title="Limpieza"  align="left" style="width: 100px; height: 39px;">
                                                                    <asp:Label ID="Label17" runat="server" Font-Bold="True" Style="text-align: left" Text="Sexo:"
                                                                        Width="120px"></asp:Label></td>
                                                                <td title="Limpieza"  align="left" style="width: 100px;">
                                                                    <asp:RadioButtonList ID="Rad_Sexo" runat="server" RepeatDirection="Horizontal" BorderWidth="1px" Height="28px" Width="155px">
                                                                        <asp:ListItem Value="HOMBRE">Hombre</asp:ListItem>
                                                                        <asp:ListItem Value="MUJER" Selected="True">Mujer</asp:ListItem>
                                                                    </asp:RadioButtonList></td>
                                                            </tr>
                                                            
                                                            <tr>
                                                                <td title="Limpieza"  align="left" style="width: 100px">
                                                                    <asp:Label ID="Label18" runat="server" Font-Bold="True" Style="text-align: left"
                                                                        Text="Dirección:" Width="120px"></asp:Label></td>
                                                                <td title="Limpieza"  align="left" style="width: 100px">
                                                                    <asp:TextBox ID="txtDirecion" runat="server" MaxLength="50"></asp:TextBox></td>
                                                            </tr><tr>
                                                                <td title="Limpieza"  align="left" style="width: 100px">
                                                                    <asp:Label ID="Label19" runat="server" Font-Bold="True" Style="text-align: left"
                                                                        Text="Cuidad:" Width="120px"></asp:Label></td>
                                                                <td title="Limpieza"  align="left" style="width: 100px">
                                                                    <asp:TextBox ID="txtCuidad" runat="server" MaxLength="30"></asp:TextBox></td>
                                                            </tr>
                                                            <tr>
                                                                <td title="Limpieza"  align="left" style="width: 100px">
                                                                    <asp:Label ID="Label20" runat="server" Font-Bold="True" Style="text-align: left"
                                                                        Text="Provincia:" Width="120px"></asp:Label></td>
                                                                <td title="Limpieza"  align="left" style="width: 100px">
                                                                    <asp:TextBox ID="txtProvincia" runat="server" MaxLength="30"></asp:TextBox></td>
                                                            </tr>
                                                            <tr>
                                                                <td title="Limpieza"  align="left" style="width: 100px">
                                                                    <asp:Label ID="Label21" runat="server" Font-Bold="True" Style="text-align: left"
                                                                        Text="Código Postal:" Width="120px"></asp:Label></td>
                                                                <td title="Limpieza"  align="left" style="width: 100px">
                                                                    <asp:TextBox ID="txtPostal" runat="server" MaxLength="20"></asp:TextBox></td>
                                                            </tr>
                                                            <tr>
                                                                <td title="Limpieza"  align="left" style="width: 100px">
                                                                    <asp:Label ID="Label10" runat="server" Font-Bold="True" Style="text-align: left"
                                                                        Text="País:" Width="120px"></asp:Label></td>
                                                                <td title="Limpieza"  align="left" style="width: 100px">
                                                                    <asp:TextBox ID="Pais" runat="server" MaxLength="30"></asp:TextBox></td>
                                                            </tr>
                                                        
                                                            <tr>
                                                                <td title="Limpieza"  align="left" style="width: 100px">
                                                                    <asp:Label ID="Label14" runat="server" Font-Bold="True" Style="text-align: left"
                                                                        Text="Experiencia Profesional:" Width="120px"></asp:Label></td>
                                                                <td title="Limpieza"  align="left" style="width: 100px">
                                                                    <asp:TextBox ID="Experiencia" runat="server" TextMode="MultiLine" MaxLength="300"></asp:TextBox></td>
                                                            </tr>
                                                         
                                                            <tr>
                                                                <td title="Limpieza"  align="right" colspan="2" style="text-align: right">
                                                                    &nbsp;<asp:Button ID="btnSend" runat="server" Font-Bold="True" Text="Enviar" Width="100px" /></td>
                                                            </tr>
                                                        </table>
                                                    </asp:Panel>
                                                    <br /><asp:Label id="lblMensaje" runat="server" Width="309px" Font-Bold="True" ForeColor="#336699"></asp:Label>
                                                    
											</td>
										</TR>
									</TABLE>
								</td>
							</tr>
						</table>
						<hr noShade SIZE="1">
					</td>
				</tr>
			</table>
		</form>
		</div>
	</body>
</html>
