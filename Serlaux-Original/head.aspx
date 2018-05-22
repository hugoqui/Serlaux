<%@ page language="C#" autoeventwireup="true" inherits="_Default, App_Web_nswfhzkk" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
 <head>
		<title>Foxclean</title>
		<meta content="True" name="vs_showGrid"/>
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema"/>
		<meta content="limpiadores,limpieza edificios,limpieza oficinas,limpieza moquetas,Madrid,barcelona,zaragoza,valencia,sevilla,valladolid,malaga,murcia,granada,lerida,toledo,la coruna,vigo" name="keywords"/>
		<meta content="Bienvenido a Linetor especialistas en - limpieza edificios,limpieza oficinas,limpieza moquetas,madrid,barcelona,zaragoza,valencia,sevilla,valladolid,malaga,murcia,granada,lerida,toledo,la coruna,santander,burgos,guadlajara,cuenca,ciudad real,caceres,badajoz,vigo!" name="description"/>
		<link href="lin.css" type="text/css" rel="stylesheet"/>
		<link type="text/css" href="css/ui-lightness/jquery-ui-1.8.custom.css" rel="stylesheet" />	
		<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
		<script type="text/javascript" src="js/jquery-ui-1.8.custom.min.js"></script>	
		<%--<link href="css/style.css" rel="stylesheet" type="text/css" />--%>
        <!--
            jCarousel library   
        -->
        <script type="text/javascript" src="js/jquery.jcarousel.min.js"></script>
        <!--
            jCarousel skin stylesheet
        -->
        <link rel="stylesheet" type="text/css" href="css/tango/skin.css" />
		<script type="text/javascript">
		$(function(){

				// Accordion
				$("#accordion").accordion({ 
				    header: "h3"
				 });			
        });
		</script>
		<script type="text/javascript">
        function mycarousel_initCallback(carousel)
            {
            // Disable autoscrolling if the user clicks the prev or next button.
            carousel.buttonNext.bind('click', function() {
            carousel.startAuto(0);
             });

            carousel.buttonPrev.bind('click', function() {
            carousel.startAuto(0);
            });

            // Pause autoscrolling if the user moves with the cursor over the clip.
            carousel.clip.hover(function() {
            carousel.stopAuto();
            }, function() {
                    carousel.startAuto();
                    });
                };

            jQuery(document).ready(function() {
            jQuery('#mycarousel').jcarousel({
            auto: 4,
            scroll: 5,
            wrap: 'circular',
            initCallback: mycarousel_initCallback
                });
            });
</script>
	</head>
	<body bgColor="#ffffff">
		<div align="center">
		<form id="Form2" method="post" runat="server">
			<table style="WIDTH: 706px; HEIGHT: 1095px" border="0">
				<TBODY>
					<tr>
						<td title="Limpieza"  colspan="3">
							<!--#include file="Head.inc" --></td>
					</tr>
					<tr>
					
					</tr>
						<td title="Limpieza"  colSpan="3"style="text-align: center">
							<table id="grm" style="WIDTH: 753px; BORDER-TOP-STYLE: none; HEIGHT: 489px" width="753" border="0">
								<TBODY>
									<TR>
										<td title="Limpieza"  class="color" vAlign="top" width="100" height="30" rowSpan="2" align="left" >
											<TABLE id="menu" style="WIDTH: 102px; HEIGHT: 470px" height="470" cellSpacing="0" cellPadding="0" width="102" border="0">
											<TR>
													<td title="Limpieza"  style="background-color: white; height: 41px;" width="12">&nbsp;</TD>
													<td title="Limpieza"  style="background-color: white; height: 41px;" width="105"><A href="http://186.69.152.146:81/zcliente11/login.aspx" target="_blank"><span style="font-size: 8pt; color: blue"><strong>ZONA DE CLIENTES</strong></span></A><span
                                                            					style="font-size: 8pt; color: blue"><strong> </strong></span></td></TR>
										
											<TR>
													<td title="Limpieza"  style="background-color: white; border-top: #ff802b thin solid; height: 41px;" width="12">&nbsp;</TD>
													<td title="Limpieza" style="background-color: white; border-top: #ff802b thin solid; height: 41px;" width="105"><A href="http://186.69.152.146:81/zcliente11/login1.aspx" target="_blank"><span style="font-size: 8pt; color: blue"><strong>ZONA DE ASOCIADOS</strong></span></A> <span
                                                           						 style="font-size: 8pt; color: blue"><strong>&nbsp;</strong></span></TD>
										    </TR>
										    <TR>
													<td title="Limpieza"  style="background-color: white; border-top: #ff802b thin solid;" width="12" height="41">&nbsp;</TD>
													<td title="Limpieza"  style="background-color: white; border-top: #ff802b thin solid;" width="105" height="41"><A href="http://f001.from-ky.com:81/zcliente11/Laboral/Trabajo.aspx"><span style="font-size: 8pt; color: blue"><strong>BOLSA DE TRABAJO</strong></span></A> <span
                                                           						 style="font-size: 8pt; color: blue"><strong>&nbsp;</strong></span></TD>
										    </TR>		
										
												<TR>
													<td title="Limpieza" style="HEIGHT: 41px" width="12">&nbsp;</TD>
													<td title="Limpieza"  style="WIDTH: 105px; HEIGHT: 41px" width="105"><A href="index.aspx">PAGINA 
															PRINCIPAL</A>
													</TD>
												</TR>
												<TR>
													<td title="Limpieza" style="HEIGHT: 55px" width="12" height="55"><IMG height="1" src="" width="12"/></TD>
													<td title="Limpieza" style="WIDTH: 105px; HEIGHT: 55px" width="105" height="55"><A href="limpieza.aspx">CONTRATAS 
															LIMPIEZA DE OFICINAS</A>
													</TD>
												</TR>
												<TR>
													<td title="Limpieza" style="HEIGHT: 55px" width="12" height="55"><IMG height="1" src="" width="12"/></TD>
													<td title="Limpieza" style="WIDTH: 105px; HEIGHT: 55px" width="105" height="55"><A href="comunidades.aspx">CONTRATAS 
															LIMPIEZA DE COMUNIDADES</A>
													</TD>
												</TR>
												<TR>
													<td title="Limpieza" style="HEIGHT: 55px" width="12" height="55"><IMG height="1" src="" width="12"/></TD>
													<td title="Limpieza" style="WIDTH: 105px; HEIGHT: 55px" width="105" height="55"><A href="Http://www.nilfisk-advance.es">SOLUCIONES 
															DE LIMPIEZA</A>
													</TD>
												</TR>
												<TR>
													<td title="Limpieza" width="12" height="90"><IMG height="1" src="spacer.gif" width="12"/></TD>
													<td title="Limpieza" style="WIDTH: 105px" width="105" height="90">HAGA SU PRESUPUESTO DE LIMPIEZA:<BR/>
														<BR/>
														<A href="limpieza.aspx">OFICINAS</A><BR/>
														<A href="comunidades.aspx">COMUNIDADES</A>
													</TD>
												</TR>
												<TR>
													<td title="Limpieza" style="HEIGHT: 65px" width="12" height="65">&nbsp;</TD>
													<td title="Limpieza" style="WIDTH: 105px; HEIGHT: 65px" width="105" height="65"><A href="mailto:admin@foxclean.net">ENVIAR 
															CORREO</A>
													</TD>
												</TR>
												<TR>
													<td title="Limpieza" style="HEIGHT: 62px" width="12" height="62">&nbsp;</TD>
													<td title="Limpieza" style="WIDTH: 105px; HEIGHT: 62px" width="105" height="62"><A href="Delegaciones.aspx">PRINCIPALES 
															DELEGACIONES</A></TD>
												</TR>
												<TR>
													<td title="Limpieza"  width="12" height="47">&nbsp;</TD>
													<td title="Limpieza"  style="WIDTH: 101px" width="101" height="47"><a href="http://f001.from-ky.com:81/referirusuario/info.aspx">REFERIR UN CONOCIDO</a></TD>
												</TR>
												<TR>
													<td title="Limpieza"  width="12" height="47">&nbsp;</TD>
													<td title="Limpieza"  style="WIDTH: 101px" width="101" height="47"><a href="referenciasLimpieza.aspx">SITIOS DE INTERES</a></TD>
												</TR>
											</TABLE>
										</TD>
										<td title="Limpieza"  align="left" height="30">
											<TABLE id="Table1" style="WIDTH: 649px; HEIGHT: 1066px" cellSpacing="1" cellPadding="3" width="649" border="1">
												<TBODY>
													<td title="Limpieza"  id="tit" width="660" height="2">
									<P align="center">LIMPIEZA,HIGIENE Y MANTENIMIENTO COMERCIAL</P>
								</td>
													<TR>
														<td title="Limpieza" align="middle" bgColor="white" colSpan="2" style="height: 65px">
															<P align="center"><FONT color="#ff802b" size="4"><STRONG><U>PRUEBE NUESTRO SERVICIO SIN 
																			COMPROMISO</U></STRONG></FONT></P>
															<P class="MsoNormal">Le ofrecemos la primera semana gratis en todas nuestras 
																contratas de limpieza y mantenimiento.</P>
														</td>
													</TR>
													<TR>
														<td title="Limpieza" id="of2" colSpan="2" height="20">
															<P align="center"><FONT size="4" >NUESTROS SERVICIOS</FONT></P>
														</td>
													</TR>
													<tr>
													    <td colspan="2">
													        <div id="accordion">
		                                                    	<div>
				                                                    <h3><a href="#">Contratas de limpieza y mantenimiento comercial. Oficinas, industrias, comercios...</a></h3>
				                                                    <div>
															            <P align="center"><A href="presupuestos.aspx"><IMG src="oficina.jpg" height="100" width="150" border="0"/></A></P>
															            <P align="left">Ofrecemos un servicio&nbsp;independiente y de calidad para sus instalacione. Tenemos &nbsp;servicios diseñados&nbsp;para cubrir sus necesidades.  <A href="presupuestos.aspx">PRESUPUESTO</A></P>
																    </div>
			                                                    </div>
			                                                    <div>
				                                                    <h3><a href="#">Contratas de limpieza y mantenimiento de comunidades.</a></h3>
				                                                    <div>
				                                                        <P align="center"><A href="presupuestos.aspx"><IMG height="100" src="condo.jpg" width="150" border="0"/></A></P>
															            <P align="left">Atenderemos en forma ágil y eficiente todas sus necesidades de mantenimiento: déjenos la limpieza y el mantenimiento a nosotros.  <A href="presupuestos.aspx">PRESUPUESTO</A></P></div>
			                                                        </div>
			                                                    <div>
				                                                    <h3><a href="#">Servicios Domesticos</a></h3>
				                                                    <div>
															            <P align="center"><A href="servicioDomestico.aspx"><img alt="" src="images/servicioDom1.jpg" height="100" width="150" border="0" /></A></P>
															            <P align="left">Le ayudamos a conseguir personal calificado con experiencia para llevar su casa, cocina, plancha, cuidado de niños, choferes, jardineros   <A href="servicioDomestico.aspx">Conocer más del servicio..</A></P>
				                                                    </div>
			                                                    </div>
			                                                    <div>
				                                                    <h3><a href="#">Servicios Asistenciales.</a></h3>
				                                                    <div>
															            <P align="center"><A href="servicioAsis.aspx"><IMG height="100" width="150" src="images/servicioAsis.jpg" border="0"/></A></P>
															            <P class="MsoNormal" align="left">Le ofrecemos una variedad de servicios asistenciales y sanitarios para personas mayores, ancianos, enfermos y discapacitados <A href="servicioAsis.aspx">Conocer más del Servicio</A></P>
																	</div>
			                                                    </div>
			                                                    <div>
				                                                    <h3><a href="#">Servicios de higiene para baños.</a></h3>
				                                                    <div>
															            <P align="center"><A href="higiene-sanitaria.aspx"><IMG height="100" width="150" src="SECAMANOS.jpg" border="0"/></A></P>
															            <P class="MsoNormal" align="left">Ofrecemos una gama completa de productos y servicios relacionados con la higiene de aseos: cualquier cosa que necesite para mantener sus baños limpios y en perfecto estado. <A href="higiene-sanitaria.aspx">Conocer más del Servicio</A></P>
																	</div>
			                                                    </div>
			                                                    <div>
				                                                    <h3><a href="#">Servicios de ropa y lavanderia (venta y renting).</a></h3>
				                                                    <div>
				                                                        <P align="center"><A href="textiles.aspx"><IMG height="100" width="150" src="TOALLA_HOTEL.jpg" border="0" /></A></P>
															            <P align="left">Conocemos sus necesidades en cuanto a servicio de ropa y lavandería, incluyendo venta y renting de las mismas.  <A href="textiles.aspx">Conocer más del servicio..</A></P>
				                                                    </div>
			                                                    </div>
			                                                    <div>
				                                                    <h3><a href="#">Servicios de mantenimiento de suelos.</a></h3>
				                                                    <div>
				                                                        <P align="center"><A href="suelos.aspx"><IMG height="100" width="150" src="suelos1.jpg" border="0"/></A></P>
															            <P align="left">Tenga plena confianza que sus instalaciones serán atendidas de forma eficaz y sencilla: déjenos el mantenimiento y limpieza a nosotros. <A href="suelos.aspx">Conocer más del servicio..</A></P>
																	</div>    
			                                                    </div>
			                                                    <div>
				                                                    <h3><a href="#">Renting de vestuario profesional.</a></h3>
				                                                    <div>
				                                                        <P align="center"><A href="vestuario.aspx"><IMG src="doctor.jpg" style="width: 150px; height: 100px" border="0"/></A></P>
															            <P align="Left">Contamos con productos de alta calidad, durables y económicos. Si usted necesita textiles de vestuario laboral para su organización o negocio nosotros tenemos la solución. <A href="vestuario.aspx">Conocer más del servicio..</A></P>
																	</div>    
			                                                    </div>
			                                                    <div>
				                                                    <h3><a href="#">Servicio de limpieza de conductos de aire acondicionado.</a></h3>
				                                                    <div>
				                                                        <P align="center"><A href="conductos.aspx"><IMG height="100" width="150" src="robot_inspeccion_tuberia.jpg" border="0"/></A></P>
														                <P align="Left">Nuestro trabajo consiste en la limpieza, desinfección y mantenimiento de conductos de aire acondicionado.   <A href="conductos.aspx">Conocer más del servicio..</A></P>
																	</div>    
			                                                    </div>
			                                                    <div>
				                                                    <h3><a href="#">Servicio de pest control.</a></h3>
				                                                    <div>
				                                                        <P align="center"><A href="PestControl.aspx"><IMG src="pest_control.jpg" style="width: 150px; height: 100px"/></A></P>
														                <P align="left"><P>Foxclean es una de las primeras proveedoras de servicios de control de plagas al sector público, comercial y particulares en España. <A href="PestControl.aspx">Conocer más del servicio..</A></P>
																	</div>      
			                                                    </div>
		                                                    </div>
													    </td>
													</tr>  													
													<tr>
														<td title="Limpieza" class="gris" width="320" height="15" colspan="2"></td>
													</tr>
													<tr>
													        <td>
													           <div id="wrap" align="center">
                                                                      <ul id="mycarousel" class="jcarousel-skin-tango">
                                                                          <li><img src=buildings.jpg width="75" height="75" alt="" /></li>
                                                                          <li><img src=clinica.jpg width="75" height="75" alt="" /></li>
                                                                          <li><img src=commercial.jpg width="75" height="75" alt="" /></li>
                                                                          <li><img src=condo.jpg width="75" height="75" alt="" /></li>
                                                                          <li><img src=conductos_limpieza.jpg width="75" height="75" alt="" /></li>
                                                                          <li><img src=ConductoSucio.jpg width="75" height="75" alt="" /></li>
                                                                          <li><img src=doctor.jpg width="75" height="75" alt="" /></li>
                                                                          <li><img src=doctor1.jpg width="75" height="75" alt="" /></li>
                                                                          <li><img src=DSCN2690.JPG width="75" height="75" alt="" /></li>
                                                                          <li><img src=industial-floor.gif width="75" height="75" alt="" /></li>
                                                                          <li><img src="images/servicioAsis.jpg" width="75" height="75" alt="" /></li>
                                                                          <li><img src="images/servicioAsis1.jpg" width="75" height="75" alt="" /></li>
                                                                          <li><img src="images/servicioAsis2.jpg" width="75" height="75" alt="" /></li>
                                                                          <li><img src="images/servicioDom1.jpg" width="75" height="75" alt="" /></li>
                                                                          <li><img src="images/servicioDom2.jpg" width="75" height="75" alt="" /></li>
                                                                      </ul>
                                                                </div>
													        </td>
													</tr>
													<td title="Limpieza" id="tit" align="middle" colSpan="2" height="7">
														    <a href="http://f001.from-ky.com:81/referirusuario/info.aspx"><img alt="" src="images/REFERIR.PNG" border="0" style="width: 600px; height:120px;" /></a>
														</td>
								                </TBODY>
							                </table>
						                </td>
					                </tr>
				</TBODY>
			</table>
<hr noshade="noshade" size="1" />
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="http://www.kecomsoft.com" Target="_blank">© 2001 - 2009 Developed by Kecomsoft Corp.</asp:HyperLink>
			</form>
			<script type="text/javascript">
var gaJsHost = (("https:" == document.location.protocol) ? "https://ssl." : "http://www.");
document.write(unescape("%3Cscript src='" + gaJsHost + "google-analytics.com/ga.js' type='text/javascript'%3E%3C/script%3E"));
</script>
<script type="text/javascript">
try {
var pageTracker = _gat._getTracker("UA-1658286-9");
pageTracker._trackPageview();
} catch(err) {}</script>
<script src="http://www.google-analytics.com/urchin.js" type="text/javascript">
</script>
<script type="text/javascript">
try {
_uacct = "UA-1658286-9";
urchinTracker();
} catch(err) {}</script>
			</div>
    </body>
</html>