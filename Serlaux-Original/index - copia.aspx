 
<%@ page language="VB" autoeventwireup="true" inherits="_Default, App_Web_nswfhzkk" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<%--<script runat="server">

     Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
     
        Dim net As Integer = 0
        Try
            Dim ipAddress As String = Request.ServerVariables("HTTP_X_FORWARDED_FOR")
            If IsNothing(ipAddress) Then ipAddress = Request.ServerVariables("REMOTE_ADDR")

            Dim xmlString As String
            Using web As New Net.WebClient()
                xmlString = web.DownloadString("http://freegeoip.net/xml/" & ipAddress)
                'xmlString = web.DownloadString("http://freegeoip.net/xml/200.53.119.154")
            End Using

            If InStr(xmlString, "Ecuador") Then
                net = 1
                Response.Redirect("ecu/index.aspx")
            End If
            If InStr(xmlString, "Peru") Then
                net = 1
                Response.Redirect("per/index.aspx")
            End If
            If InStr(xmlString, "United States") Then
                net = 1
                Response.Redirect("usa/index.aspx")
            End If
            If InStr(xmlString, "United Kingdom") Then
                net = 1
                Response.Redirect("uk/index.aspx")
            End If
            If InStr(xmlString, "Chile") Then
                net = 1
                Response.Redirect("chi/index.aspx")
            End If
            If InStr(xmlString, "Mexico") Then
                net = 1
                Response.Redirect("mex/index.aspx")
            End If
        Catch ex As Exception
                       
        End Try
   End Sub
</script>--%>

<html xmlns="http://www.w3.org/1999/xhtml" >
 <head>
		<title>Foxser</title>
		<meta content="True" name="vs_showGrid"/>
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema"/>
		<meta content="limpiadores,limpieza edificios,limpieza oficinas,limpieza moquetas,Madrid,barcelona,zaragoza,valencia,sevilla,valladolid,malaga,murcia,granada,lerida,toledo,la coruna,vigo" name="keywords"/>
		<meta content="Bienvenido a Foxser especialistas en - limpieza edificios,limpieza oficinas,limpieza moquetas,madrid,barcelona,zaragoza,valencia,sevilla,valladolid,malaga,murcia,granada,lerida,toledo,la coruna,santander,burgos,guadlajara,cuenca,ciudad real,caceres,badajoz,vigo!" name="description"/>
	<%--	<link href="lin.css" type="text/css" rel="stylesheet"/>--%>
		<link type="text/css" href="css/ui-lightness/jquery-ui-1.8.custom.css" rel="stylesheet" />	
		
		<link type="text/css" href="css/c/branding.css" rel="stylesheet" />
        <link type="text/css" href="css/c/business-header.css" rel="stylesheet" />
        <link type="text/css" href="css/c/colorbox.css" rel="stylesheet" />
        <link type="text/css" href="css/c/initial.css" rel="stylesheet" />
        <link type="text/css" href="css/c/reset.css" rel="stylesheet" />
        <link type="text/css" href="css/es/c/pri-nav.css" rel="stylesheet" />
		
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
        
		
	</head>
	<body class="p-home">
    <form id="form1" runat="server">
    <div id="cboxOverlay" style="display:none"></div>
    <div id="colorbox" class style="padding-bottom:52px; padding-right:52px; display:none">
            <div id="cboxWrapper">
                    <div>
                        <div id="cboxTopLeft" style="float:left;"></div>
                        <div id="cboxTopCenter" style ="float:left;"></div>
                        <div id="cboxTopRight" style="float:left;"></div>
                    </div>
                    <div style ="clear:left;">
                        <div id="cboxMiddleLeft" style="float: left;"></div>
                        <div id="cboxContent" style="float: left;" >
                            <div id="cboxLoadedContent" style=" width:0px; height:0px; overflow:hidden;  float:left;"></div>
                            <div id="cboxLoadingOverlay" style="float:left;"></div>
                            <div id="cboxLoadingGraphic" style="float:left;"></div>
                            <div id="cboxTitle" style="float:left;"></div>
                            <div id="cboxCurrent" style="float:left;"></div>
                            <div id="cboxNext" style="float:left;"></div>
                            <div id="cboxPrevious" style="float:left;"></div>
                            <div id="cboxSlideshow" style="float:left;"></div>
                            <div id="cboxShut" style="float:left;"></div>
                        </div>
                        <div id="cboxMiddleRight" style="float: left;" ></div>
                    </div>
                    <div style="clear: left;">
                        <div id="cboxBottomLeft" style="float:left;"></div>
                        <div id="cboxBottomCenter" style="float:left;"></div>
                        <div id="cboxBottomRight" style="float:left;"></div>
                    </div>
            </div>  
            <div style="position:absolute; width:9999px; visibility:hidden; display:none;"></div>
    </div>
    
    <div id="sitewrap">
        <div id="tagline">
            <div>
                <div id ="siteextende" style="padding-right: 200px;">
               
                    <div class="rhs_calltoaction rhs_colour1 rhs_withshadow rhs_tel" style="width: 300px;" >
                        <h2="colour1"><span style="
    background-color: #0177c1;
    display: block;
    padding: 4px 15px 4px 18px;
    margin: 1em 0;
    background-repeat: no-repeat;
    background-position: 7px 3px;
    margin: 0;
    font-weight: bold;
    font-size: 1.6em;
    color: #fff;
">¿Podemos ayudarle?</span></h2>
                        <ul style="padding: 0 0 0 14px; font-size: 1.4em;">
                        <li class="phone"><h3 style="
    color: #0078c1;
    font-weight: normal;
    text-rendering: optimizeLegibility;
    line-height: 36px;
    display: block;
    font-size: 0.9em;
   font-family: 'Open Sans';
">902 121 131</h3></li>
                        <li>Contacte con un representante de ventas</li>
                        </ul>
                        <div class="fade_divider"><hr /></div>
                    </div>
                </div>
                <%-- <div class ="body2">Contacte con un representante de ventas</div>--%>
            
            

            </div>
            
        </div>
        <img class="branding" src="images/vans-header-840x165.jpg" alt="Inicio"/>
        
        <div id="sitehead">

            <ul id="accesstools" class="hidden">

                <li>
                    <a href="#skip_navigation" accesskey="2">Salto a la navegacion principal</a>
                </li>
            </ul>

            <!--#include file="Head2.inc" -->
              
           
            <div id="sitewrap2" class="clearfix">

                <div id="sitewrap4">
                    <div id="navmain" class="home">
                        <div><%--<p align="left"> <a href="http://www.initial.es/catalogo-noticias-promociones/" target="_blank"><img alt="Initial - vis" border="0" src="images/quote.gif"/></a>--%>

                           <%-- <a href="#" target="_blank">--%><img alt="Initial - vis" border="0" src="images/lateral1.jpg" width="200px" height="100%"/><%--</a>--%>

                             <%--</p>--%></div>
                       
                    </div>
                    
                </div>
                <div id="sitewrap3">
                    <div id="sitecontent">
                        <h2 style="padding-left: 50px;"> <b>Bienvenido a SERLAUX</b></h2>
                        <p style="padding-left: 15px;">Empresa lider en el mercado de servicos de higiene</p>
                        <ul>
                            <li class="homepage">Servicios de higiene personalizados</li>
                            <li class="homepage">Tecnicos con gran habilidad y experiencia</li>
                            <li class="homepage">Contacto directo con nuestros comerciales</li>
                            <li class="homepage">Pruebe nuestros servicios sin compromisos</li>
                            <li class="homepage">Contacte con nosotros para reservar una inspección</li>
                        </ul>
                        <h2 class="style2"><span>Nuestros servicios</span></h2>

                        
                        <div class="summary">

                                <div class="slp_row">
                                        <div class="service">
                                            <div class="services">
                                                <a href="#"><img src="/images/oficina.jpg" alt="Washrooms imagess" style=" height: 100px; width: 100px;"></a>
                                                <p class="inline-arrow" style="padding-top: 15px;"><a href="limpieza.aspx">Servicios de Limpieza para Oficinas</a></p><br />
                                                <p>Ofrecemos un servicio de calidad para sus instalaciones. Diseñados para cubrir sus necesidades.</p>
                                            </div>
                                        </div>
                                        <div class="service">

                                            <div class="services">
                                                <a href="#"><img src="/images/condo.jpg" alt="Washrooms imagess" style=" height: 100px; width: 100px;"></a>
                                                <p class="inline-arrow" style="padding-top: 15px;"><a href="comunidades.aspx">Servicios de Limpieza para comunidades</a></p><br />
                                                <p>Atenderemos en forma eficiente todas sus necesidades de mantenimiento: déjenos la limpieza y el mantenimiento a nosotros.</p>
                                            </div>
                                        </div>
                                </div>
                                <div class="slp_row">
                                        <div class="service">
                                            
                                            <div class="services">
                                               <a href="#"><img src="/images/sabanas.jpg" alt="Washrooms images" style=" height: 100px; width: 100px;"></a>
                                            <p class="inline-arrow" style="padding-top: 15px;"><a href="lavanderia.aspx">Servicio de Lavanderia</a></p><br />
                                                <p>Conocemos sus necesidades en cuanto a servicio de ropa y lavandería, incluyendo venta y renting de las mismas.</p>
                                            </div>
                                        </div>
                                        
                                        <div class="service">
                                            <div class="services">
                                                <a href="#"><img src="/images/VENTANAS.jpg" alt="Washrooms images" style=" height: 100px; width: 100px;"></a>
                                                <p class="inline-arrow" style="padding-top: 15px;"><a href="ventanas.aspx">Limpieza de cristales</a></p><br />
                                                <p>Limpieza profesional de ventanas para: oficinas, edificios y comercios.</p>
                                            </div>
                                        </div>
                                        
                                </div>
                                <div class="slp_row">
                                        <div class="service">
                                            <div class="services">
                                                <a href="#"><img src="/images/fumigador.jpg" alt="Washrooms images" style=" height: 100px; width: 100px;"></a>
                                                <p class="inline-arrow" style="padding-top: 15px;"><a href="PestControl.aspx">Servicio de pest control</a></p><br />
                                                <p>Le ofrecemos servicios de control de plagas al sector público, comercial y particulares en España.</p>
                                            </div>
                                        </div>
                                        <div class="service">
                                            <div class="services">
                                                <a href="#"><img src="/images/servicioDom1.jpg" alt="Washrooms images" style=" height: 100px; width: 100px;"></a>
                                                <p class="inline-arrow" style="padding-top: 15px;"><a href="servicioDomestico.aspx">Servicios Domésticos</a></p><br />
                                                <p>Le asignaremos personal cualificado con experiencia para llevar su casa, cocina, plancha, cuidado de niños, choferes, jardineros.</p>
                                            </div>
                                        </div>

                                        
                                   
                                </div>
                                <div class="slp_row">
                                       
                                        <div class="service">

                                            <div class="services">
                                                <a href="#"><img src="/images/servicioAsis.jpg" alt="Washrooms images" style=" height: 100px; width: 100px;"></a>
                                                <p class="inline-arrow" style="padding-top: 15px;"><a href="servicioAsis.aspx">Servicios Asistenciales</a></p><br />
                                                <p>Le ofrecemos una variedad de servicios asistenciales y sanitarios para personas mayores, enfermos y discapacitados</p>
                                            </div>
                                        </div>
                                        <div class="service">
                                            <div class="services">
                                                <a href="#"><img src="/images/limpieza-conductos.jpg" alt="Washrooms images" style=" height: 100px; width: 100px;"></a>
                                                <p class="inline-arrow" style="padding-top: 15px;"><a href="conductos.aspx">Limpieza de conductos</a></p><br />
                                                <p>Nuestro trabajo consiste en la limpieza, desinfección y mantenimiento de conductos de aire acondicionado.</p>
                                            </div>
                                        </div>
                                </div>
                                
                               <%-- <div class="slp_row">
                                        <div class="service">
                                            <div class="services">
                                                <a href="#"><img src="/images/limpieza-conductos.jpg" alt="Washrooms images" style=" height: 64px; width: 64px;"></a>
                                                <p class="inline-arrow"><a href="http://www.foxclean.es/conducto.aspx">Servicio de limpieza de conductos.</a></p>
                                                <p>Nuestro trabajo consiste en la limpieza, desinfección y mantenimiento de conductos de aire acondicionado.</p>
                                            </div>
                                        </div>
                                        <div class="services-col2">

                                            <div class="services">
                                                <a href="#"><img src="/images/limpiadorapisos.jpg" alt="Washrooms images" style=" height: 64px; width: 64px;"></a>
                                                <p class="inline-arrow"><a href="http://www.foxclean.es/suelos.aspx">Servicios de mantenimiento de suelos.</a></p>
                                                <p>Tenga plena confianza que sus instalaciones serán atendidas de forma eficaz y sencilla: déjenos el mantenimiento y limpieza a nosotros.</p>
                                            </div>
                                        </div>
                                </div>
                                <div class="slp_row">
                                        <div class="service">
                                            <div class="services">
                                                <a href="#"><img src="/images/VENTANAS.jpg" alt="Washrooms images" style=" height: 64px; width: 64px;"></a>
                                                <p class="inline-arrow"><a href="http://www.foxclean.es/ventanas.aspx">Limpieza de cristales.</a></p>
                                                <p>Limpieza profesional de ventanas para: oficinas, edificios y comercios.</p>
                                            </div>
                                        </div>
                                        <div class="services-col2">

                                            <div class="services">
                                                <a href="#"><img src="/images/Home-cleaning-services.jpg" alt="Washrooms images" style=" height: 64px; width: 64px;"></a>
                                                <p class="inline-arrow"><a href="http://www.foxclean.es/serviciosDomesticos.aspx">Servicio Doméstico Por Horas</a></p>
                                                <p>En Foxclean ofrecemos a nuestros clientes la posibilidad de contar con personal adecuado para las tareas domésticas del día a día en sus casa.</p>
                                            </div>
                                        </div>
                                </div>

                                <div class="slp_row">
                                        <div class="service">
                                            <div class="services">
                                                <a href="#"><img src="/images/REF-ICO-PRIN.jpg" alt="Washrooms images" style=" height: 64px; width: 64px;"></a>
                                                <p class="inline-arrow"><a href="http://www.foxclean.es/Refintegrales.aspx">Reformas Integrales.</a></p>
                                                <p>Se hacen todo tipo de reformas para casas y locales</p>
                                            </div>
                                        </div>
                                        <div class="services-col2">

                                            <div class="services">
                                                <a href="#"><img src="/images/antena.jpg" alt="Washrooms images" style=" height: 64px; width: 64px;"></a>
                                                <p class="inline-arrow"><a href="http://www.foxclean.es/SegurTelecom.aspx">Seguridad y Telecomunicaciones.</a></p>
                                                <p>Servicio profesional en el sector de la seguridad y telecomunicación para las comunidades.</p>
                                            </div>
                                        </div>
                                </div>--%>


                        </div>

                    </div>
                </div>
                
              
                <div class="no_branding" id="siteextended">
                    <div id="gradient">
                    <div> 
                        
                    </div>
                    <div>
                        <div id="switcher">
                            <a href="#" target="_blank"><img alt="Initial - vis" border="0" src="images/limpieza.png" style="width: 160px; height: 160px";
/></a>
                            
                        </div>
                        
                        
                        
                        <a href="http://s01.live2support.com/ls3/l2schat11990-2743-0.html" target="_blank" onmouseover="" onmouseout="" onclick="try{lswin('sid=11990','11990'); return false;} catch(l2se) { }" id="l2stxtcd"><img  src="images/chat.jpg"/ width="20px" style="
    height: 90px;
    width: 150px;
"></a>
                        
                    </div>
                </div>
                    
                </div>
                <div class="siteextended_slot"></div>
             </div>

            <div>
                    <div id="group-services-footer" style="
    background-color: #0078c1;
">
                            <div class="column"></div>
                            <div class="column">
                            </br>
                               <h2><span>902 121 131</span></h2> 
                              
                            </div>
                            <div class="column"></div>
                    </div>
            </div>
        </div>
    </div>
        
    
    </form>
</body>
</html>

