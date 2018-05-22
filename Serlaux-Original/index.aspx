 
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

<HTML lang="en-us" xmlns:v="urn:schemas-microsoft-com:vml" xmlns:o="urn:schemas-microsoft-com:office:office">
	<HEAD>
    <title>Serlaux</title>
	<meta content="True" name="vs_showGrid">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<LINK href="lin.css" type="text/css" rel="stylesheet">
		<link type="text/css" href="css/ui-lightness/jquery-ui-1.8.custom.css" rel="stylesheet" />	
		
		<link type="text/css" href="css/c/branding.css" rel="stylesheet" />
        <link type="text/css" href="css/c/business-header.css" rel="stylesheet" />
        <link type="text/css" href="css/c/colorbox.css" rel="stylesheet" />
        <link type="text/css" href="css/c/initial2.css" rel="stylesheet" />
         <link type="text/css" href="css/c/initial.css" rel="stylesheet" />
        <link type="text/css" href="css/c/reset.css" rel="stylesheet" />
        <link type="text/css" href="css/es/c/pri-nav.css" rel="stylesheet" />
		
		<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
		<script type="text/javascript" src="js/jquery-ui-1.8.custom.min.js"></script>	
		
		
		<meta content="True" name="vs_showGrid">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<LINK href="lin.css" type="text/css" rel="stylesheet">
		<link href="print.css" type="text/css" media="print" rel="stylesheet">
	</HEAD>
	<body class="index" id="accesorios-y-consumibles-para-banos-publicos-initial-directo">
	<div align="left">
		<form id="Form1" method="post" runat="server">
			<div id="extraStyleWrapper">
      <div id="topWrapper">
        <header id="topHeader" class="centerThis">
          <div id="headerLeft">
            <header id="logoWrapper">
              
              <a href="/" title="Logo"><img id="logo" src="images/vans-header2.jpg" alt="Logo" style="padding-top: 28px;"></a>
              
            </header><!-- logoWrapper -->
          </div><!-- headerLeft -->
          <div id="headerRight">
             <div id ="siteextended" style="padding-right: 200px; font-size: 12px;">
               
                    <div class="rhs_calltoaction rhs_colour1 rhs_withshadow rhs_tel" style="width: 285px;" >
                        <h2="colour1"><span style="
    background-color: #0177c1;
    display: block;
    padding: 4px 15px 4px 18px;
    margin: 1em 0;
    background-repeat: no-repeat;
    background-position: 7px 3px;
    margin: 0;
    font-weight: bold;
    font-size: 1.2em;
        color: #fff;
">�Podemos ayudarle?</span></h2>
                        <ul style="padding: 0 0 0 14px; font-size: 1.1em;">
                        <li class="phone"><h3 style="
    font-size: 24px;
">902 121 131</h3></li>
                        <li>Contacte con un representante de ventas</li>
                        </ul>
                        <div class="fade_divider"><hr /></div>
                    </div>
                </div>
          </div><!-- headerRight -->
          <div class="clearFix"></div>
        </header><!-- topHeader -->
       <nav id="navWrapper" class="">
          <!--#include file="Head2.inc" -->
      </div><!-- topWrapper -->
      <div id="contentWrapper">
        <div class="centerThis">
          <div id="content">

    <div id="billboardWrapper">
    <div id="billboard" class="theme-default nivoSlider">
    
    <div id="slider">
        <div><img src="images/comunidad1.jpg" style="display: inline; height: 388px; width: 948px;"></div>
        <div><img src="images/oficina3.jpg" style="display: inline; height: 388px; width: 948px;"></div>
       <div><img src="images/servicodomes1.jpg" style="display: inline; height: 388px; width: 948px;"></div>
       <div><img src="images/conducto3.jpg" style="display: inline; height: 388px; width: 948px;"></div>
       <div><img src="images/servicodomes2.jpg" style="display: inline; height: 388px; width: 948px;"></div>
       
    </div>
        <script type="text/javascript">
            $(function() {
                $('#slider div:gt(0)').hide();
                setInterval(function() {
                    $('#slider div:first-child').fadeOut(1000)
                        .next('div').fadeIn(1000)
                        .end().appendTo('#slider');
                }, 4000);
            })
</script>

<!--******************************************** -->
<script type="text/javascript" async="" defer="">
    var l2slhight = 400;
    var l2slwdth = 350;
    var l2slay_mnst = "#l2snlayer {}";
    var l2slv = 3;
    
    var l2slay_hbgc = "rgba(0, 84, 164, 0.8)";
    var l2slay_bcolor = "rgba(0, 84, 164, 0.8)";

    //var l2slay_hbgc = "#00ad00";
    //var l2slay_bcolor = "#00ad00";
    var l2sdialogofftxt = "Live Chat Offline";
    var l2sdialogontxt = "¿Preguntas? Online";
    var l2sminimize = true;
    var l2senblyr = true;
    var l2slay_pos = "R";
    var l2sontxt = '';
    var l2sofftxt = '';
    var l2s_pht = encodeURI(location.protocol);
    //var l2s_cv = "site=Prestomatic;l2scv;;";
    var l2s_cv = "site=Serlaux;l2scv;;";
    if (l2s_pht.indexOf("http") == -1) l2s_pht = 'http:';

    function loadChat() {
        document.getElementById('l2s_trk').style.visibility = 'hidden';
        var l2scd = document.createElement('script');
        l2scd.type = 'text/javascript';
        l2scd.async = true;
        l2scd.src = ('https:' == document.location.protocol ? 'https://' : 'http://') + 's01.live2support.com/js/lsjs1.php?stid=11990&jqry=Y&l2stxt=Y';
        var l2sscr = document.getElementsByTagName('script')[0];
        l2sscr.parentNode.insertBefore(l2scd, l2sscr);
    }

    $(window).bind("load", loadChat);
</script>
<script type="text/javascript">
    var l2sontxt2 = "chatear con un agente";
    var l2sofftxt2 = "Live Chat Offline";
</script>


<div id="l2s_trk" style="z-index:99; visibility: visible;">
    <a href="https://www.live2support.com/ls3/l2schat11990-3192-0.html" target="_blank" onmouseover="" onmouseout="" onclick="try{lswin('sid=11990','11990'); return false;} catch(l2se) { }" id="l2stxtcd"></a>
</div>

<!--******************************************** -->
        
        
    
    <div class="nivo-caption" style="display: block;">
            <h3>Empresa lider en servicios auxiliares y de limpieza</h3>
            <span></span>
        </div>
        
        
      
</div><!-- billboardWrapper -->



    <div id="contentSections"  align="center" class="group" style="padding-left: 50;">
    		 
    		 <div id="sitewrap4">
                    <div id="navmain" class="home">
                       <div id="Div2">
                            <a href="#" target="_blank"><img alt="Initial - vis" border="0" src="images/limpieza.png" style="width: 160px; height: 160px; padding-left: 30px;"
/></a>
                            
                        </div>
                       
                    </div>
                    
                </div>
    		 
    		 <div id="sitewrap3">
                    <div id="sitecontent">
                       
                       
                        <ul>
                            <li class="homepage" style="
    text-align: left;
    padding-left: 28px;
">Servicios de higiene personalizados</li>
                            <li class="homepage" style="
    text-align: left;
    padding-left: 28px;
">Tecnicos con gran habilidad y experiencia</li>
                            <li class="homepage" style="
    text-align: left;
    padding-left: 28px;
">Contacto directo con nuestros comerciales</li>
                            <li class="homepage" style="
    text-align: left;
    padding-left: 28px;
">Pruebe nuestros servicios sin compromisos</li>
                           
                        </ul>
                         
        
                       </br>
                        </br>

                        
                        <div class="summary">

                                <div class="slp_row">
                                        <div class="service">
                                            <div class="services">
                                                <a href="#"><img src="/images/oficina.jpg" alt="Washrooms imagess" style=" height: 100px; width: 100px;"></a>
                                                <p class="inline-arrow"><a href="limpieza.aspx">Limpieza para oficinas</a></p><br />
                                                <p>Ofrecemos un servicio de calidad para sus instalaciones. Dise�ados para cubrir sus necesidades.</p>
                                            </div>
                                        </div>
                                        <div class="service">

                                            <div class="services">
                                                <a href="#"><img src="/images/condo.jpg" alt="Washrooms imagess" style=" height: 100px; width: 100px;"></a>
                                                <p class="inline-arrow" ><a href="comunidades.aspx">Limpieza para comunidades</a></p><br />
                                                <p>Atenderemos en forma eficiente todas sus necesidades de mantenimiento: d�jenos la limpieza y el mantenimiento a nosotros.</p>
                                            </div>
                                        </div>
                                </div>
                                <div class="slp_row">
                                        <div class="service">
                                            
                                            <div class="services">
                                               <a href="#"><img src="/images/sabanas.jpg" alt="Washrooms images" style=" height: 100px; width: 100px;"></a>
                                            <p class="inline-arrow" ><a href="lavanderia.aspx">Servicio de lavanderia</a></p><br />
                                                <p>Conocemos sus necesidades en cuanto a servicio de ropa y lavander�a, incluyendo venta y renting de las mismas.</p>
                                            </div>
                                        </div>
                                        
                                        <div class="service">
                                            <div class="services">
                                                <a href="#"><img src="/images/VENTANAS.jpg" alt="Washrooms images" style=" height: 100px; width: 100px;"></a>
                                                <p class="inline-arrow" ><a href="ventanas.aspx">Limpieza de cristales</a></p><br />
                                                <p>Limpieza profesional de ventanas para: oficinas, edificios y comercios.</p>
                                            </div>
                                        </div>
                                        
                                </div>
                                <div class="slp_row">
                                        <div class="service">
                                            <div class="services">
                                                <a href="#"><img src="/images/fumigador.jpg" alt="Washrooms images" style=" height: 100px; width: 100px;"></a>
                                                <p class="inline-arrow" ><a href="PestControl.aspx">Servicio de pest control</a></p><br />
                                                <p>Le ofrecemos servicios de control de plagas al sector p�blico, comercial y particulares en Espa�a.</p>
                                            </div>
                                        </div>
                                        <div class="service">
                                            <div class="services">
                                                <a href="#"><img src="/images/servicioDom1.jpg" alt="Washrooms images" style=" height: 100px; width: 100px;"></a>
                                                <p class="inline-arrow" ><a href="servicioDomestico.aspx">Servicios dom�sticos</a></p><br />
                                                <p>Le asignaremos personal cualificado con experiencia para llevar su casa, cocina, plancha, cuidado de ni�os, choferes, jardineros.</p>
                                            </div>
                                        </div>

                                        
                                   
                                </div>
                                <div class="slp_row">
                                       
                                        <div class="service">

                                            <div class="services">
                                                <a href="#"><img src="/images/servicioAsis.jpg" alt="Washrooms images" style=" height: 100px; width: 100px;"></a>
                                                <p class="inline-arrow" ><a href="servicioAsis.aspx">Servicios asistenciales</a></p><br />
                                                <p>Le ofrecemos una variedad de servicios asistenciales y sanitarios para personas mayores, enfermos y discapacitados</p>
                                            </div>
                                        </div>
                                        <div class="service">
                                            <div class="services">
                                                <a href="#"><img src="/images/limpieza-conductos.jpg" alt="Washrooms images" style=" height: 100px; width: 100px;"></a>
                                                <p class="inline-arrow" ><a href="conductos.aspx">Limpieza de conductos</a></p><br />
                                                <p>Nuestro trabajo consiste en la limpieza, desinfecci�n y mantenimiento de conductos de aire acondicionado.</p>
                                            </div>
                                        </div>
                                </div>
                                
                               <%-- <div class="slp_row">
                                        <div class="service">
                                            <div class="services">
                                                <a href="#"><img src="/images/limpieza-conductos.jpg" alt="Washrooms images" style=" height: 64px; width: 64px;"></a>
                                                <p class="inline-arrow"><a href="http://www.foxclean.es/conducto.aspx">Servicio de limpieza de conductos.</a></p>
                                                <p>Nuestro trabajo consiste en la limpieza, desinfecci�n y mantenimiento de conductos de aire acondicionado.</p>
                                            </div>
                                        </div>
                                        <div class="services-col2">

                                            <div class="services">
                                                <a href="#"><img src="/images/limpiadorapisos.jpg" alt="Washrooms images" style=" height: 64px; width: 64px;"></a>
                                                <p class="inline-arrow"><a href="http://www.foxclean.es/suelos.aspx">Servicios de mantenimiento de suelos.</a></p>
                                                <p>Tenga plena confianza que sus instalaciones ser�n atendidas de forma eficaz y sencilla: d�jenos el mantenimiento y limpieza a nosotros.</p>
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
                                                <p class="inline-arrow"><a href="http://www.foxclean.es/serviciosDomesticos.aspx">Servicio Dom�stico Por Horas</a></p>
                                                <p>En Foxclean ofrecemos a nuestros clientes la posibilidad de contar con personal adecuado para las tareas dom�sticas del d�a a d�a en sus casa.</p>
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
                                                <p>Servicio profesional en el sector de la seguridad y telecomunicaci�n para las comunidades.</p>
                                            </div>
                                        </div>
                                </div>--%>


                        </div>

                    </div>
                </div>	
                <div class="no_branding" id="Div1">
                    <div id="gradient">
                    <div> 
                        
                    </div>
                    <div>
                        <div id="switcher">
                                   <a href="http://s01.live2support.com/ls3/l2schat11990-2743-0.html" target="_blank" onmouseover="" onmouseout="" onclick="try{lswin('sid=11990','11990'); return false;} catch(l2se) { }" id="l2stxtcd"><img  src="images/chat.jpg"/ width="20px" style="
    height: 90px;
    width: 150px;
    padding-top: 30px;
"></a>       
                        </div>
                        
                        
                        
   
                        
                    </div>
                </div>
                    
                </div>
    </div><!-- contentSections -->


</div><!-- content -->
        </div><!-- centerThis -->
      </div><!-- contentWrapper -->
    </div><!-- extraStyleWrapper -->
 

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
		</form>
		</div>
	</body>
</HTML>
