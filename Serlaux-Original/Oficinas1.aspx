<%@ Page Language="c#" Inherits="LinetorNet.Oficinas1, App_Web_nswfhzkk" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html lang="en-us" xmlns:v="urn:schemas-microsoft-com:vml" xmlns:o="urn:schemas-microsoft-com:office:office">
<head>
    <title>Serlaux</title>
    <meta content="True" name="vs_showGrid">
    <meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
    <link href="lin.css" type="text/css" rel="stylesheet">
    <link type="text/css" href="css/ui-lightness/jquery-ui-1.8.custom.css" rel="stylesheet" />

    <link type="text/css" href="css/c/branding.css" rel="stylesheet" />
    <link type="text/css" href="css/c/business-header.css" rel="stylesheet" />
    <link type="text/css" href="css/c/colorbox.css" rel="stylesheet" />
    <link type="text/css" href="css/c/initial2.css" rel="stylesheet" />
    <link type="text/css" href="css/c/reset.css" rel="stylesheet" />
    <link type="text/css" href="css/es/c/pri-nav.css" rel="stylesheet" />

    <script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
    <script type="text/javascript" src="js/jquery-ui-1.8.custom.min.js"></script>


    <script language="JavaScript">
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
    </script>
    <meta content="True" name="vs_showGrid">
    <meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
    <link href="lin.css" type="text/css" rel="stylesheet">
    <link href="print.css" type="text/css" media="print" rel="stylesheet">
    <style type="text/css">
        .btn {
        }
    </style>
</head>
<body class="index" id="accesorios-y-consumibles-para-banos-publicos-initial-directo" onload="verif()">
    <div align="left">
        <form id="Form1" method="post" runat="server">
            <div id="extraStyleWrapper">
                <div id="topWrapper">
                    <header id="topHeader1" class="centerThis">
          <div id="headerLeft">
            <header id="logoWrapper">
              
              <a href="/" title="Logo"><img id="logo" src="images/vans-header2.jpg" alt="Logo" style="padding-top: 35px;"></a>
              
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
        </header>
                    <!-- topHeader -->
                    <nav id="navWrapper" class="">
          <ul id="mainNav" class="centerThis group">
            
            
            <li class="activePage"><a href="index.aspx">Inicio </a>
              
            </li>
             <li class="activePage"><a href="oficinas1.aspx">Calcule su presupuesto y horas necesarias</a>
             <li class="activePage"><a href="oficinas2.aspx">Presupuesto segun horas a contratar</a>
              
            </li>
            
          
            
          </ul><!-- mainNav -->
        </nav>
                    <!-- navWrapper -->
                </div>
                <!-- topWrapper -->
                <div id="contentWrapper">
                    <div class="centerThis">
                        <div id="content">

                            <div id="billboardWrapper">
                                <div id="billboard" class="theme-default nivoSlider">

                                    <div id="slider">
                                        <div>
                                            <img src="images/oficina1.jpg" style="display: inline; height: 388px; width: 948px;"></div>
                                        <div>
                                            <img src="images/oficina2.jpg" style="display: inline; height: 388px; width: 948px;"></div>
                                        <div>
                                            <img src="images/oficina3.jpg" style="display: inline; height: 388px; width: 948px;"></div>
                                    </div>
                                    <script type="text/javascript">
                                        $(function () {
                                            $('#slider div:gt(0)').hide();
                                            setInterval(function () {
                                                $('#slider div:first-child').fadeOut(1000)
                                                    .next('div').fadeIn(1000)
                                                    .end().appendTo('#slider');
                                            }, 4000);
                                        })
                                    </script>



                                    <div class="nivo-caption" style="display: block;">
                                        <h3>Limpieza de Oficinas</h3>
                                        <span></span>
                                    </div>



                                </div>
                                <!-- billboardWrapper -->



                                <div id="contentSections" align="center" class="group" style="padding-left: 50;">
                                    <table id="AutoNumber6" style="border-collapse: collapse" cellspacing="0" cellpadding="5" width="604" border="0">
                                        <tr>
                                            <td title="Limpieza" align="left" colspan="3" height="50" rowspan="1">Si no tiene experiencia 
												anterior y si nos da datos de sus oficinas le podemos estimar las horas 
												necesarias de trabajo diario para la limpieza de sus instalaciones.<br>
                                                <br>
                                                Dándonos también los días de trabajo que desea a la semana le orientamos sobre 
												la mensualidad a pagar por el servicio.</td>
                                            <td title="Limpieza" valign="center" align="middle" width="99" height="50" rowspan="1">
                                                <asp:Button ID="calc1" runat="server" CssClass="btn" Font-Bold="True" Width="94px" Text="CALCULAR" ForeColor="White" BackColor="Silver" Height="25px" OnClick="CALCULATE_Click"></asp:Button></td>
                                        </tr>
                                        <tr>
                                            <td title="Limpieza" align="left" width="382" height="19">Código postal donde se encuentran sus 
												oficinas (5 dijitos):
                                            </td>
                                            <td title="Limpieza" align="left" width="14" height="19">&nbsp;</td>
                                            <td title="Limpieza" align="left" width="69" height="19">
                                                <asp:TextBox ID="CP" runat="server" CssClass="ctl" Width="100px" Height="25px"></asp:TextBox></td>
                                            <td title="Limpieza" align="left" width="99" height="19">&nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td title="Limpieza" align="left" width="382" height="33">Número de puestos de trabajo.&nbsp; (Ej. 
												si trabajan 10 personas y cada una tiene una mesa de trabajo el numero seria 
												10):</td>
                                            <td title="Limpieza" align="left" width="14" height="33">&nbsp;</td>
                                            <td title="Limpieza" align="left" width="69" height="33">
                                                <asp:TextBox ID="PUESTOS" Style="z-index: 1" runat="server" CssClass="ctl" Width="100px" Height="25px"></asp:TextBox></td>
                                            <td title="Limpieza" align="left" width="99" height="33">
                                                <asp:Label ID="l_puestos" runat="server" Font-Names="Verdana" Font-Bold="True" Width="124px" ForeColor="Red" BackColor="White" Height="7px" Font-Size="XX-Small"></asp:Label></td>
                                        </tr>
                                        <tr>
                                            <td title="Limpieza" align="left" width="382" height="55">Número de aparatos sanitarios de todos los 
												aseos. (Ej. si su oficina tiene 2 aseos uno tiene un lavabo y un inodoro -2- y 
												el otro tiene un lavabo un inodoro y una bañera -3- el numero seria 5):</td>
                                            <td title="Limpieza" align="left" width="14" height="60">&nbsp;</td>
                                            <td title="Limpieza" align="left" width="69" height="60">
                                                <asp:TextBox ID="SANITARIOS" Style="z-index: 1" runat="server" CssClass="ctl" Width="100px" Height="25px"></asp:TextBox></td>
                                            <td title="Limpieza" align="left" width="99" height="60">
                                                <asp:Label ID="l_sanit" runat="server" Font-Names="Verdana" Font-Bold="True" Width="124px" ForeColor="Red" BackColor="White" Height="7px" Font-Size="XX-Small"></asp:Label></td>
                                        </tr>
                                        <tr>
                                            <td title="Limpieza" align="left" width="382" height="28">Número de ventana. (Ej. si tiene 10 
												ventanas y una de ellas es doble el numero seria 11):</td>
                                            <td title="Limpieza" align="left" width="14" height="28">&nbsp;</td>
                                            <td title="Limpieza" align="left" width="69" height="28">
                                                <asp:TextBox ID="VENTANAS" Style="z-index: 1" runat="server" CssClass="ctl" Width="100px" Height="25px"></asp:TextBox></td>
                                            <td title="Limpieza" align="left" width="99" height="28">
                                                <asp:Label ID="l_vent" runat="server" Font-Names="Verdana" Font-Bold="True" Width="124px" ForeColor="Red" BackColor="White" Height="7px" Font-Size="XX-Small"></asp:Label></td>
                                        </tr>
                                        <tr>
                                            <td title="Limpieza" align="left" width="382" height="21">Número de días a la semana que desea el 
												servicio. (Ej. si quiere el servicio los martes y los jueves el numero seria 
												2):
                                            </td>
                                            <td title="Limpieza" align="left" width="14" height="21">&nbsp;</td>
                                            <td title="Limpieza" align="left" width="69" height="21">
                                                <asp:DropDownList ID="DIASSEMANA" Style="z-index: 1" runat="server" Width="100px" Height="25px">
                                                    <asp:ListItem Value="1" Selected="True">1</asp:ListItem>
                                                    <asp:ListItem Value="2">2</asp:ListItem>
                                                    <asp:ListItem Value="3">3</asp:ListItem>
                                                    <asp:ListItem Value="4">4</asp:ListItem>
                                                    <asp:ListItem Value="5">5</asp:ListItem>
                                                    <asp:ListItem Value="6">6</asp:ListItem>
                                                    <asp:ListItem Value="7">7</asp:ListItem>
                                                </asp:DropDownList>
                                                <asp:TextBox ID="dddd" runat="server" CssClass="ddd" Width="100px" Height="25px"></asp:TextBox></td>
                                            <td title="Limpieza" align="left" width="99" height="21">&nbsp;</td>
                                            <tr>
                                                <td title="Limpieza" colspan="4">
                                                    <table class="contraido" id="result" style="border-collapse: collapse" cellspacing="0" cellpadding="5" width="594" border="0">
                                                        <tr>
                                                            <td title="Limpieza" id="menu" style="padding-left: 100px; font-size: 15px; text-decoration: underline" colspan="3" height="20"><a href="http://foxclean01.com/peticionPresupuesto.aspx"><b>
                                                                <fond color="gray">Petición de Presupuesto</fond>
                                                            </b></a></td>
                                                            <td title="Limpieza" id="menu" width="80" height="20">
                                                                <asp:Button ID="printa" runat="server" Font-Bold="True" Width="60px" Text="Print" ForeColor="White" BackColor="Silver" Height="22px" Font-Size="X-Small" OnClick="printa_Click"></asp:Button></td>
                                                        </tr>
                                                        <tr>
                                                        <tr>
                                                            <td title="Limpieza" align="right" colspan="4" height="1"></td>
                                                        </tr>
                                                        <tr>
                                                        <tr>
                                                            <td title="Limpieza" id="tit1" align="middle" colspan="4" height="9"><a name="Results">RESULTADOS</a></td>
                                                        </tr>
                                                        <tr>
                                                            <td title="Limpieza" id="rr" align="right" width="415" height="13">Horas de trabajo al dia para la 
															limpieza de sus OFICINAS
                                                            </td>
                                                            <td title="Limpieza" align="middle" width="19" height="13">&nbsp;</td>
                                                            <td title="Limpieza" align="right" width="80" height="13">
                                                                <asp:Label ID="hdia" runat="server" Font-Names="Verdana" Width="80px" BackColor="White" Height="7px" Font-Size="XX-Small"></asp:Label></td>
                                                            <td title="Limpieza" align="right" width="80" height="13">&nbsp;</td>
                                                        </tr>
                                                        <tr>
                                                            <td title="Limpieza" id="rr" align="right" width="415" height="19">Importe de la mensualidad en 
															Euros:
                                                            </td>
                                                            <td title="Limpieza" align="middle" width="19" height="19">&nbsp;</td>
                                                            <td title="Limpieza" align="right" width="80" height="19">
                                                                <asp:Label ID="EImp" runat="server" Font-Names="Verdana" Width="80px" BackColor="White" Height="7px" Font-Size="XX-Small"></asp:Label></td>
                                                            <td title="Limpieza" align="right" width="80" height="19">&nbsp;</td>
                                                        </tr>
                                                        <tr class="contraido">
                                                            <td title="Limpieza" id="rr" align="right" width="415" height="23">Importe de la mensualidad en 
															Pesetas:</td>
                                                            <td title="Limpieza" align="middle" width="19" height="23">&nbsp;</td>
                                                            <td title="Limpieza" align="right" width="80" height="23">
                                                                <asp:Label ID="BPImp" runat="server" Font-Names="Verdana" Width="80px" BackColor="White" Height="7px" Font-Size="XX-Small"></asp:Label></td>
                                                            <td title="Limpieza" align="right" width="80" height="23">&nbsp;</td>
                                                        </tr>
                                                        <tr>
                                                            <td title="Limpieza" align="middle" width="415" height="23">&nbsp;</td>
                                                            <td title="Limpieza" align="middle" width="19" height="23">&nbsp;</td>
                                                            <td title="Limpieza" align="middle" width="80" height="23"></td>
                                                            <td title="Limpieza" align="middle" width="80" height="23"></td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                    </table>
                                </div>
                                <!-- contentSections -->


                            </div>
                            <!-- content -->
                        </div>
                        <!-- centerThis -->
                    </div>
                    <!-- contentWrapper -->
                </div>
                <!-- extraStyleWrapper -->


                <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
        </form>
    </div>
</body>
</html>
