<%@ Page Title="" Language="C#" MasterPageFile="~/Inicial.Master" AutoEventWireup="true" CodeBehind="Busqueda.aspx.cs" Inherits="Project.Busqueda" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
    </br>
    </br>
    </br>
    </br>
    </br>
    </br>
    </br>
    </br>
    </br>
   
  
    
    <div class="container-fluid">
        <div class="col-md-12">
            

            <div class="row">
               
                <div class="col-md-4">
                    <div id="modal-sample-4" class="modal fade">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <%--<div class="modal-header">
                                    <h4 class="js-title-step"></h4>
                                </div>--%>
                                <br/> 
                                <div id="modal_header" style="padding-left: 20px;">
                                   Paso 1 Eliga Fecha y Horario

                                     <div class="progress" style="width: 98%; padding-right: 2px;">
                                         <div class="progress-bar" style="width:33%"></div>
                                        <%-- <div class="progress-bar" style="width:25%"></div>
                                         <div class="progress-bar" style="width:25%"></div>
                                         <div class="progress-bar" style="width:25%"></div>--%>
                                     </div>
                                </div>
                                <div class="modal-body">
                                    <div class="row hide" data-step="1" data-title="¿Cuándo quieres que tu SERVICIO?">
                                        <div class="col-md-12" align="center">
                                            

                                                 <div class="input-group input-append date add-on" id="dateRangePicker" align="center" style="padding-right: 200px; padding-left: 180px;">
                                                    <input type="text" class="form-control" name="date"  style="width: 190px;" placeholder="Elige su Fecha disponible" />
                                                     <span class="input-group-addon add-on"><span class="glyphicon glyphicon-calendar"></span></span>
                                                     
                                                 </div>
                                                
                                            <br/>
                                             <div class="input-group input-append date add-on" id="div2" align="center" style="padding-right: 200px; padding-left: 180px;">
                                                  <select id="btt_oo" class="form-control" style="width: 230px;">
                                                      

                                                  </select>
                                                     
                                                 </div>
                                            
                                          
                                        </div>
                                    </div>
                                    <div class="row hide" data-step="2" data-title="Callback on second step" >
                                        <div class="col-md-12">
                                            <div class="jumbotron text-center">

                                                <input type="text"  id="text1" placeholder="texto1"/>
                                                <input type="text"  id="text2" placeholder="texto2"/>
                                                <input type="text"  id="text3" placeholder="texto3"/>
                                                <input type="text"  id="text4" placeholder="texto4"/>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row hide" data-step="3" data-title="llamada a 3er paso">
                                        <div class="col-md-12">
                                            <div class="jumbotron text-center"><p>esto es el 3er paso</p></div>
                                        </div>
                                    </div>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-default js-btn-step pull-left" data-orientation="cancel" data-dismiss="modal"></button>
                                    <button type="button" class="btn btn-warning js-btn-step" data-orientation="previous"></button>
                                    <button type="button" class="btn btn-success js-btn-step" data-orientation="next"></button>
                                </div>
                            </div>
                        </div>
                    </div>
                   
                            <button type="button" id="id_btt"  data-toggle="modal" data-target="#modal-sample-4">
                           
                            </button>
                        </div>
                  

              
            </div>
        </div>
    </div>


   
<script src="//cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.0/js/bootstrap-datepicker.min.js"></script>

    <script src="http://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.4/js/bootstrap.min.js"></script>
    <script src="Scripts/multi-step-modal.js"></script>
   
    <link rel="stylesheet" href="http://code.jquery.com/ui/1.10.1/themes/base/jquery-ui.css" />
      <link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.0/css/datepicker.min.css" /> 
<link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.0/css/datepicker3.min.css" />

    <script type="text/javascript">

        $.ajax({
            type: "POST",
            url: "webmethodos.aspx/ListHorario",
            data: '{}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function OnSuccess(response) {
                
                $('#btt_oo').html('"' + response.d + '"');


            },
            failure: function (response) {
                alert(response.d);
            }
        });

        $('#modal-sample-4').modalSteps({
            callbacks: {
                '1': function () {
                    $('#modal_header').html(" Paso 1 Eliga Fecha y Horario  <div class='progress' style='width: 98%; padding-right: 2px;'><div class='progress-bar' style='width:33%'></div></div> ");
                    ;

                   
                                         
                                        <%-- <div class="progress-bar" style="width:25%"></div>
                                         <div class="progress-bar" style="width:25%"></div>
                                         <div class="progress-bar" style="width:25%"></div>--%>
                                     

                },
                '2': function () {

                    $('#modal_header').html("Paso 2 Datos Ubicacion <div class='progress' style='width: 98%; padding-right: 2px;'><div class='progress-bar' style='width:33%'></div><div class='progress-bar' style='width:33%'></div></div>");
                    
                }
            }
        });

        $("#id_btt").hide();
        $("#id_btt").trigger('click');

        $('#dateRangePicker').datepicker({
            format: 'mm/dd/yyyy',
            startDate: '01/01/2010',
            endDate: '12/30/2020'
        });
          

    </script>
</asp:Content>
