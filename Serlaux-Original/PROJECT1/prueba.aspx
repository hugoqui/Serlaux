<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="prueba.aspx.cs" Inherits="Project.prueba" %>

<!DOCTYPE html>

<html>

    

<head>
  
    <title>jquery-bootstrap-modal-steps samples</title>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
</head>
<body>
    <div class="container-fluid">
        <div class="col-md-12">
            <div class="page-header">
                <h2>jquery-bootstrap-modal-steps</h2>
            </div>

            <div class="row">
               
                <div class="col-md-4">
                    <div id="modal-sample-4" class="modal fade">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h4 class="js-title-step"></h4>
                                </div>
                                <div class="modal-body">
                                    <div class="row hide" data-step="1" data-title="Click next please">
                                        <div class="col-md-12">
                                            <div class="jumbotron text-center"><p>Click next, please.</p></div>
                                        </div>
                                    </div>
                                    <div class="row hide" data-step="2" data-title="Callback on second step">
                                        <div class="col-md-12">
                                            <div class="jumbotron text-center"><p>An ugly javascript alert will appeared. It works?!</p></div>
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
                    <div class="panel panel-default">
                        <div class="panel-body">
                            A modal with a callback function at 2 (second) step
                        </div>
                        <div class="panel-footer">
                            <button type="button" id="id_btt" data-toggle="modal" data-target="#modal-sample-4">
                                <span class="glyphicon glyphicon-flash"></span> Open modal
                            </button>
                        </div>
                    </div>
                </div>

              
            </div>
        </div>
    </div>

    <script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
    <script src="http://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.4/js/bootstrap.min.js"></script>
    <script src="Scripts/multi-step-modal.js"></script>
    <script type="text/javascript">
       

        $('#modal-sample-4').modalSteps({
            callbacks: {
                '2': function () { alert('Tanam!'); }
            }
        });
        $("#id_btt").hide();
        $("#id_btt").trigger('click');
        
    </script>
</body>
</html>