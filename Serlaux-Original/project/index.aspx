<%@ Page Title="" Language="C#" MasterPageFile="~/Inicial.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Project.index" %>



<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
  
    <script src="Scripts/jquery-1.10.2.js"></script>
<script src="Scripts/jquery-1.10.2.min.js"></script> 

    <script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
    <script src="http://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.4/js/bootstrap.min.js"></script>
  
    <script type="text/javascript">
      
      

             function redirect() {
                 window.location.href = "busqueda.aspx";
             }

             $('.dropdownItem').click(function () {
                 var text = $(this).html();
                 var cod = $(this).attr('data-dropdown-value');

                 $('.dropdownLabel').html(text);
                 $('#MainContent_cod_Ubicacion').val(cod);

                 getServices(cod);
                 getCity(cod);
                 
             });



            

             function getServices(cod) {
                 $.ajax({
                     type: "POST",
                     url: "webmethodos.aspx/ListServices",
                     data: '{cod: "'+cod+'" }',
                     contentType: "application/json; charset=utf-8",
                     dataType: "json",
                     success: function OnSuccess(response) {
                         $('.servicesListColumn').html('');
                         $('.servicesListColumn').html("'" + response.d + "'");

                         $('.headerProsLink').removeClass('disabled');
                         $('.headerPricesLink').removeClass('disabled');
                     },
                     failure: function (response) {
                         alert(response.d);
                     }
                 });
             }
             function getCity(cod) {
                 var ubi = $('.dropdownLabel').html();

                 $.ajax({
                     type: "POST",
                     url: "webmethodos.aspx/ListCity",
                     data: '{codUbi: "' + cod + '",desUbi:"'+ubi+'" }',
                     contentType: "application/json; charset=utf-8",
                     dataType: "json",
                     success: function OnSuccess(response) {
                         $('.cityListHeader').html();
                         $('.cityListHeader').html("Lugares en " + ubi + "");
                         $('.cityList').html('');
                         $('.cityList').html("'" + response.d + "'");

                     },
                     failure: function (response) {
                         alert(response.d);
                     }
                 });
             }

         
             
              

    </script> 
    
      
  <div class="topImage">
             <div class="topImageLargeBack">
	                <div class="topImageLargeImage">
	                </div>
            </div>

            <div   class="topImageInner" align="center" style="background-image: url('img/imagenfondo.jpg');background-repeat: no-repeat; background-size: 100% auto; height: 500px;">
	            <div class="vertical-table">
	                <div style="height: 500px;">
                         <div >
                           


                        <div class="serviceZipHeader">
                            <div id="serviceZipHeader" class="serviceZipHeaderForm ng-pristine ng-valid">
                                 <span class="servicePrompt">Necesito</span>
                                         <div class="selectHolder">
                                            
                                             <asp:Literal ID="opt_services" runat="server"></asp:Literal>
                                           
                                        </div>
                                
                                <span class="zipPrompt">en</span>
                                <asp:TextBox ID="txtzipCode" name="zipCode" maxlength="5" class="serviceZipInput" runat="server" placeholder="Zip Code"></asp:TextBox>
                                
                                
                                <input id="buscar"  type="button" class="serviceZipSubmit" value="ir" onclick="redirect()" style="width: 68px; font-size: 21px; margin: 5px 0px; text-transform: uppercase; display: inline-block; vertical-align: middle; background: transparent linear-gradient(rgb(250, 147, 0) 0px, rgb(242, 101, 34) 100%) repeat scroll 0% 0%; color: rgb(255, 255, 255); border: medium none; padding: 1px;"/>
                                
                            </div>
                        </div>


                        </div>
  





	                </div>
                </div>

            </div>
        </div>

    <div class="module howItWorksModule"><div class="moduleInner">
  
  <div class="moduleHeader">How it Works</div>
  
  <div class="howItWorksSection">
    <div class="number">1</div>
    <div class="header">Pick A SERVIZ</div>
    <div class="details">
      Find your service, check out our up-front prices and highly reviewed SERVIZ Pros.
    </div>
  </div>
  <div class="howItWorksSection">
    <div class="number">2</div>
    <div class="header">Book Online</div>
    <div class="details">
      In our mobile app or online, simply tell us what the problem is and when and where to show up.
    </div>
  </div>
  <div class="howItWorksSection">
    <div class="number">3</div>
    <div class="header">Pay After Work is Done</div>
    <div class="details">
      We send out a SERVIZ Pro, we fix your problem, and you pay only after the work is done.
    </div>
  </div>
</div></div>
    <div class="module bigServiceModule">
        
        <asp:Literal ID="ltr_subservices" runat="server"></asp:Literal>

    </div>
    <div class="module singleProModule"><div class="moduleInner">
  <a class="learnMore" href="/service-pros-los-angeles/sp/1">Learn More</a>
  <div class="sectionDot"></div>
  <div class="moduleTitle">Trusted SERVIZ Pros</div>
  <div>
    <div class="singleProList">
      <div class="proListItem reviewsItem">
        <div class="proBullet"></div>
        <span>1000s of Reviews</span>
      </div>
      <div class="proListItem checkedItem">
        <div class="proBullet"></div>
        <span>Background Checked</span>
      </div>
      <div class="proListItem insuredItem">
        <div class="proBullet"></div>
        <span>Insured</span>
      </div>
      <div class="proListItem guaranteedItem">
        <div class="proBullet"></div>
        <span>Guaranteed</span>
      </div>
    </div>
    <div class="singleProCardHolder"><div class="singleProCard">
      <div class="proTop">
        <div class="proTopLeft">
          <div class="proImage"><img src="https://assets.serviz.com/images/our_service_pro_large.png"></div>
          <span>Plumber</span>
        </div>
        <div class="proTopRight">
          <div class="proName">Brian A</div>
          <div>
            <div class="starHolder smallStars">
  
  <span class="star active" data-rating-val="1">
    
    <span style="width:100%;"></span>
    
  </span>
  
  <span class="star active" data-rating-val="2">
    
    <span style="width:100%;"></span>
    
  </span>
  
  <span class="star active" data-rating-val="3">
    
    <span style="width:100%;"></span>
    
  </span>
  
  <span class="star active" data-rating-val="4">
    
    <span style="width:100%;"></span>
    
  </span>
  
  <span class="star active" data-rating-val="5">
    
    <span style="width:100%;"></span>
    
  </span>
  
</div>
            <span class="ratingCount">14 Reviews<span>
          </span></span></div>
          <div class="proYearsExperience">15 Years Experience</div>
        </div>
      </div>
      <div class="proReviews">
        <div class="reviewHeader">14 Reviews</div>
        <div>
          <div class="reviewSubHeader">
            <div class="reviewNameHolder">
              <span class="reviewName">Sam A,</span>
              <span class="reviewAddress">Los Angeles, CA</span>
            </div>
          </div>
          <div class="reviewDate">5/5/2014</div>
        </div>
        <div class="reviewComments">
          "Plumber was on time, quick and efficient. He found a very low cost solution to a problem that we
          feared was going to cost thousands! He only charged us the minimum service call charge. We were very happy!"
        </div>
        <div class="reviewSeeMore"><a href="/service-pros-los-angeles/sp/1">See More</a></div>
      </div>
    </div></div>
    <a class="learnMoreButton" href="/service-pros-los-angeles/sp/1"><button>Learn More</button></a>
  </div>
</div></div>

    
    <asp:HiddenField ID="cod_Ubicacion" runat="server" Value="-1" />
   
</asp:Content>
