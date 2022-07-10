<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Personality.Index1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        <div id="exampleSlider">
        <div><h3> مرحبا بكم فى موقع <span>الاجهزه الطبيه</span></h3></div>
        <div><h3> كل ما يخص الاجهزه الطبيه <span>من منتجات وخدمات</span></h3></div>
         <div><h3> صورالاجهزه واسمها <span>ومواصفاتها</span></h3></div>
    </div>
	

<div class="testimonials">
<div class="container">
 <h3 class="w3l_header w3_agileits_header">
40 منتج من <span>المعدات الطبية</span></h3>
		  <p class="sub_para_agile"></p>
<div class="agile_team_grids_top">
    
    <asp:ListView ID="ListView1" runat="server">
        <ItemTemplate>
            <div class="col-md-4 w3_agile_services_grid">
                <div class="agile_services_grid1 wthree_services_grid1" style="background:url('<%#Eval("image") %>') no-repeat 0px 0px;">
                    <div class="agile_services_grid1_sub">
                        <p><%#Eval("ArName") %></p>
                    </div>
                </div>
            </div>
        </ItemTemplate>
    </asp:ListView>
				
				
				<div class="clearfix"> </div>
			</div>
		</div>
</div>
<!-- /flip -->
	
<!-- //flip -->
<!-- bootstrap-pop-up -->
	<div class="modal video-modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModal">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>						
				</div>
				<div class="signin-form profile">
						<h3 class="agileinfo_sign">Funding</h3>	
					<div class="modal-body">
						<img src="images/g1.jpg" alt=" " class="img-responsive" />
						<p>Ut enim ad minima veniam, quis nostrum 
							exercitationem ullam corporis suscipit laboriosam, 
							nisi ut aliquid ex ea commodi consequatur? Quis autem 
							vel eum iure reprehenderit qui in ea voluptate velit 
							esse quam nihil molestiae consequatur, vel illum qui 
							dolorem eum fugiat quo voluptas nulla pariatur.
							<i>" Quis autem vel eum iure reprehenderit qui in ea voluptate velit 
								esse quam nihil molestiae consequatur.</i></p>
					</div>
				</div>
			</div>
		</div>
	</div>
<!-- //bootstrap-pop-up -->
<!-- gallery -->
	<div class="gallery">
	     	      <h3 class="w3l_header w3_agileits_header">أحداث</h3>
		  <p class="sub_para_agile"></p>
		  	<div class="agile_team_grids_top">
		<ul id="flexiselDemo1">	
			<li>
				<div class="wthree_gallery_grid">
					<a href="images/g1.jpg" class="lsb-preview" data-lsb-group="header">
						<div class="view second-effect">
							<img src="images/g1.jpg" alt="" class="img-responsive" />
							<div class="mask">
								<p>طبيب</p>
							</div>
						</div>	
					</a>
				</div>
			</li>
			<li>
				<div class="wthree_gallery_grid">
					<a href="images/g2.jpg" class="lsb-preview" data-lsb-group="header">
						<div class="view second-effect">
							<img src="images/g2.jpg" alt="" class="img-responsive" />
							<div class="mask">
								<p>ARABHEALTH</p>
							</div>
						</div>	
					</a>
				</div>
			</li>
			<li>
				<div class="wthree_gallery_grid">
					<a href="images/g3.jpg" class="lsb-preview" data-lsb-group="header">
						<div class="view second-effect">
							<img src="images/g3.jpg" alt="" class="img-responsive" />
							<div class="mask">
								<p>صحة تركمان</p>
							</div>
						</div>	
					</a>
				</div>
			</li>
			
			
		</ul>
	</div>
</div>
<!-- //gallery -->
<!-- testimonials -->
	<div class="testimonials">
		<div class="container">
	      <h3 class="w3l_header w3_agileits_header">أخبار</h3>
		  <p class="sub_para_agile"></p>
			<div class="w3ls_testimonials_grids">
				 <section class="center slider">
						<div class="agileits_testimonial_grid">
							<div class="w3l_testimonial_grid">
								<a href="">جديدة طاولة العمليات جراحة Dixion 8900 وحدات
جدول التشغيل الجديد Dixion جراحة 8900 وحدات. توسيع Dixion اتساع منتجاتها</p>
								<div class="w3l_testimonial_grid_pos">
									<img src="images/1.png" alt=" " class="img-responsive" />
								</div>
							</div>
						</div>
                        
						<div class="agileits_testimonial_grid">
							<div class="w3l_testimonial_grid">
                            	<a href="">نموذج بديل للVacus 7303</a>
								<p>ايها العملاء والشركاء،
مجموعة خطط Dixion 7303 إنتاج مضخة شفط Vacus.</p>
								
								<div class="w3l_testimonial_grid_pos">
									<img src="images/2.png" alt=" " class="img-responsive" />
								</div>
							</div>
						</div>
						<div class="agileits_testimonial_grid">
							<div class="w3l_testimonial_grid">
                            	<a href="">التدريب السنوي</a>
								<p>شركاء الأعمال الأعزاء،
 
Dixion يرحب بكم للمشاركة في التدريب السنوي في الخدمة الفنية للمنتجات Dixion.</p>
								
								<div class="w3l_testimonial_grid_pos">
									<img src="images/3.png" alt=" " class="img-responsive" />
								</div>
							</div>
						</div>
				</section>
			</div>
		</div>
	</div>
<!-- //testimonials -->
</asp:Content>
