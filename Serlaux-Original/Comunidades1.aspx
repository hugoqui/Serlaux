<%@ page language="c#" inherits="LinetorNet.Comunidades1, App_Web_nswfhzkk" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
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
        <link type="text/css" href="css/c/reset.css" rel="stylesheet" />
        <link type="text/css" href="css/es/c/pri-nav.css" rel="stylesheet" />
		
		<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
		<script type="text/javascript" src="js/jquery-ui-1.8.custom.min.js"></script>	
		<%--<link href="css/style.css" rel="stylesheet" type="text/css" />--%>
        <!--
            jCarousel library   
        -->
		
		<SCRIPT language="JavaScript">
		<!--

		    function verif() {
		        var hh = document.getElementById("hdia")
		        var tt = document.getElementById("result")
		        if (hh.title.length > 0) {
		            tt.className = "mostrado"
		            parent.location = "#Results"
		        }
		    }
		//-->
		</SCRIPT>
		<meta content="True" name="vs_showGrid">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<LINK href="lin.css" type="text/css" rel="stylesheet">
		<link href="print.css" type="text/css" media="print" rel="stylesheet">
	    <style type="text/css">
            .btn
            {}
        </style>
	</HEAD>
	<body class="index" id="accesorios-y-consumibles-para-banos-publicos-initial-directo" onLoad="verif()">
	<div align="left">
		<form id="Form1" method="post" runat="server">
			<div id="extraStyleWrapper">
      <div id="topWrapper">
        <header id="topHeader1" class="centerThis">
          <div id="headerLeft">
            <header id="logoWrapper">
              
              <a href="/" title="Logo"><img id="logo" src="images/vans-header2.jpg" alt="Logo" style="padding-top: 34px;"></a>
              
            </header><!-- logoWrapper -->
          </div><!-- headerLeft -->
          <div id="headerRight">
             <div id ="siteextended" style="padding-right: 200px;">
               
                    <div class="rhs_calltoaction rhs_colour1 rhs_withshadow rhs_tel" style="width: 310px;" >
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
">¿Podemos ayudarle?</span></h2>
                        <ul style="padding: 0 0 0 14px; font-size: 1.1em;">
                        <li class="phone"><h3 >902 121 131</h3></li>
                        <li>Contacte con un representante de ventas</li>
                        </ul>
                        <div class="fade_divider"><hr /></div>
                    </div>
                </div>
          </div><!-- headerRight -->
          <div class="clearFix"></div>
        </header><!-- topHeader -->
        <nav id="navWrapper" class="">
          <ul id="mainNav" class="centerThis group">
            
            
            <li class="activePage"><a href="index.aspx">Inicio </a>
              
            </li>
             <li class="activePage"><a href=comunidades1.aspx>Calcule su presupuesto y horas necesarias</a>
             <li class="activePage"><a href=#>Presupuesto segun horas a contratar</a>
              
            </li>
            
          
            
          </ul><!-- mainNav -->
        </nav><!-- navWrapper -->
      </div><!-- topWrapper -->
      <div id="contentWrapper">
        <div class="centerThis">
          <div id="content">

    <div id="billboardWrapper">
    <div id="billboard" class="theme-default nivoSlider">
    
    <div id="slider">
        <div><img src="images/comunidad1.jpg" style="display: inline; height: 388px; width: 948px;"></div>
        <div><img src="images/comunidad2.jpg" style="display: inline; height: 388px; width: 948px;"></div>
       <div><img src="images/comunidad3.jpg" style="display: inline; height: 388px; width: 948px;"></div>
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
        
        
    
    <div class="nivo-caption" style="display: block;">
            <h3>Limpieza de Comunidades</h3>
            <span></span>
        </div>
        
        
      
</div><!-- billboardWrapper -->



    <div id="contentSections"  align="center" class="group" style="padding-left: 50;">
    	  <table id="AutoNumber6" width="604" border="0">
										<tr>
											<td title="Limpieza"  align="left" colSpan="3" height="50" rowSpan="1" style="padding: 10;">Si no tiene experiencia 
												anterior y si nos da datos de su comunidad le podemos estimar las horas 
												necesarias de trabajo diario para la limpieza.<BR>
												<br>
												Dándonos también los días de trabajo que desea a la semana le orientamos sobre 
												la mensualidad a pagar por el servicio.</td>
											<td title="Limpieza"  vAlign="center" align="middle" width="99" height="50" rowSpan="1" style="padding: 10;"><asp:button id="calc1" runat="server" Font-Bold="True" CssClass="btn" Text="CALCULAR" ForeColor="White" BackColor="Silver" Height="25px" Width="94px" onclick="calc1_Click"></asp:button></td>
										</tr>
										<tr>
											<td title="Limpieza"  align="left" width="382" height="19" style="padding: 10;">Código postal donde se encuentra su 
												comunidad (5 dijitos):
											</td>
											<td title="Limpieza"  align="left" width="14" height="19" style="padding: 10;">&nbsp;</td>
											<td title="Limpieza"  align="left" width="69" height="19" style="padding: 10;"><asp:textbox id="CP" runat="server" CssClass="ctl" Height="25px" Width="100px"></asp:textbox></td>
											<td title="Limpieza"  align="left" width="99" height="19" style="padding: 10;">&nbsp;</td>
										</tr>
										<tr>
											<td title="Limpieza"  align="left" width="382" height="33" style="padding: 10;">Número total de viviendas:</td>
											<td title="Limpieza"  align="left" width="14" height="33" style="padding: 10;">&nbsp;</td>
											<td title="Limpieza"  align="left" width="69" height="33" style="padding: 10;"><asp:textbox id="VIVIENDAS" style="Z-INDEX: 1" runat="server" CssClass="ctl" Height="25px" Width="100px"></asp:textbox></td>
											<td title="Limpieza"  align="left" width="99" height="33" style="padding: 10;"><asp:label id="l_viviendas" runat="server" Font-Bold="True" Font-Names="Verdana" ForeColor="Red" BackColor="White" Height="7px" Width="124px" Font-Size="XX-Small"></asp:label></td>
										</tr>
										<tr>
											<td title="Limpieza"  align="left" width="382" height="60" style="padding: 10;">Número aproximado de ventanas que hay en 
												toda la comunidad en las zonas a limpiar. (Ej. si la comunidad tiene 2 
												escaleras con 5 descansillos en cada escalera y una ventana por descansillo en 
												numero es 10):</td>
											<td title="Limpieza"  align="left" width="14" height="60" style="padding: 10;">&nbsp;</td>
											<td title="Limpieza"  align="left" width="69" height="60" style="padding: 10;"><asp:textbox id="VENTANAS" style="Z-INDEX: 1" runat="server" CssClass="ctl" Height="25px" Width="100px"></asp:textbox></td>
											<td title="Limpieza"  align="left" width="99" height="60" style="padding: 10;"><asp:label id="l_vent" runat="server" Font-Bold="True" Font-Names="Verdana" ForeColor="Red" BackColor="White" Height="7px" Width="124px" Font-Size="XX-Small"></asp:label></td>
										</tr>
										<tr>
											<td title="Limpieza"  align="left" width="382" height="21" style="padding: 10;">Número de días a la semana que desea el 
												servicio. (Ej. si quiere el servicio los martes y los jueves el numero seria 
												2):
											</td>
											<td title="Limpieza"  align="left" width="14" height="21" style="padding: 10;">&nbsp;</td>
											<td title="Limpieza"  align="left" width="69" height="21"style="padding: 10;"><asp:dropdownlist id="DIASSEMANA" style="Z-INDEX: 1" runat="server" Height="25px" Width="100px">
													<asp:ListItem Value="1" Selected="True">1</asp:ListItem>
													<asp:ListItem Value="2">2</asp:ListItem>
													<asp:ListItem Value="3">3</asp:ListItem>
													<asp:ListItem Value="4">4</asp:ListItem>
													<asp:ListItem Value="5">5</asp:ListItem>
													<asp:ListItem Value="6">6</asp:ListItem>
													<asp:ListItem Value="7">7</asp:ListItem>
												</asp:dropdownlist><asp:textbox id="dddd" runat="server" CssClass="ddd" Height="25px" Width="100px"></asp:textbox></td>
											<td title="Limpieza"  align="left" width="99" height="21">&nbsp;</td>
										<tr>
											<td title="Limpieza"  colSpan="4">
												<table class="contraido" id="result" style="BORDER-COLLAPSE: collapse" cellSpacing="0" cellPadding="5" width="594" border="0">
													<tr>
														<td title="Limpieza"  id="menu" style="PADDING-LEFT: 100px; FONT-SIZE: 15px; TEXT-DECORATION: underline" colSpan="3" height="20"><A href="http://foxclean01.com/peticionPresupuesto.aspx"><b><FONT color="gray">Petición de Presupuesto</FONT></b></A></td>
														<td title="Limpieza"  id="menu" width="80" height="20"><asp:button id="printa" runat="server" Font-Bold="True" Text="Print" ForeColor="White" BackColor="Silver" Height="22px" Width="60px" Font-Size="X-Small" onclick="printa_Click"></asp:button></td>
													</tr>
													<tr>
													<TR>
														<td title="Limpieza"  align="right" colSpan="4" height="1"></td>
													</TR>
													<tr>
													<tr>
														<td title="Limpieza"  id="tit1" align="middle" colSpan="4" height="9"><a name="Results">RESULTADOS</a></td>
													</tr>
													<tr>
														<td title="Limpieza"  id="rr" align="right" width="415" height="13">Horas de trabajo al dia para la 
															limpieza de la comunidad:</td>
														<td title="Limpieza"  align="middle" width="19" height="13">&nbsp;</td>
														<td title="Limpieza"  align="right" width="80" height="13"><asp:label id="hdia" runat="server" Font-Names="Verdana" BackColor="White" Height="7px" Width="80px" Font-Size="XX-Small"></asp:label></td>
														<td title="Limpieza"  align="right" width="80" height="13">&nbsp;</td>
													</tr>
													<tr>
														<td title="Limpieza"  id="rr" align="right" width="415" height="19">Importe de la mensualidad en 
															Euros:
														</td>
														<td title="Limpieza"  align="middle" width="19" height="19">&nbsp;</td>
														<td title="Limpieza"  align="right" width="80" height="19"><asp:label id="EImp" runat="server" Font-Names="Verdana" BackColor="White" Height="7px" Width="80px" Font-Size="XX-Small"></asp:label></td>
														<td title="Limpieza"  align="right" width="80" height="19">&nbsp;</td>
													</tr>
													<tr class="contraido">
														<td title="Limpieza"  id="rr" align="right" width="415" height="23">Importe de la mensualidad en 
															Pesetas:</td>
														<td title="Limpieza"  align="middle" width="19" height="23">&nbsp;</td>
														<td title="Limpieza"  align="right" width="80" height="23"><asp:label id="BPImp" runat="server" Font-Names="Verdana" BackColor="White" Height="7px" Width="80px" Font-Size="XX-Small"></asp:label></td>
														<td title="Limpieza"  align="right" width="80" height="23">&nbsp;</td>
													</tr>
													<tr>
														<td title="Limpieza"  align="middle" width="415" height="23">&nbsp;</td>
														<td title="Limpieza"  align="middle" width="19" height="23">&nbsp;</td>
														<td title="Limpieza"  align="middle" width="80" height="23"></td>
														<td title="Limpieza"  align="middle" width="80" height="23"></td>
													</tr>
												</table>
											</td>
										</tr>
									</table>			
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
