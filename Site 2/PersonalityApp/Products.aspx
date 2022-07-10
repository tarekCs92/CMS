<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="Personality.Products" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <!-- /banner -->	
    <div class="banner1">
	    <div class="wthree_banner1_info">
				<h3><span>منتجا</span>تنا</h3>
		</div>
    </div>
<!-- //banner -->	
<!-- courses -->
    <div class="team">
        <div class="container">
            <div class="w3_agile_team_grid">
                <div class="w3_agile_team_grid_left">
                    <h3 class="w3l_header w3_agileits_header">منتجاتنا</h3>
                    <p class="sub_para_agile"></p>
                </div>
            </div>
            <div class="agile_team_grids_top">
            <asp:ListView ID="ListView1" runat="server">
                <ItemTemplate>
                   
                        <div class="col-md-3 w3_agile_services_grid">
                            <div class="agile_services_grid1 wthree_services_grid1" style="background:url('<%#Eval("image") %>') no-repeat 0px 0px;">
                                <div class="agile_services_grid1_sub">
                                </div>
                            </div>
                            <div class="agileits_w3layouts_services_grid1">

                                <h4><a href="#" onclick="openProduct(this);" data-title="<%#Eval("ArName") %>" data-desc="<%#Eval("ArDescription") %>" data-img="<%#Eval("image") %>"  data-toggle="modal" data-target="#myModal"><%#Eval("ArName") %></a></h4>
                            </div>
                        </div>

                </ItemTemplate>
            </asp:ListView>
                        <div class="clearfix"></div>
                    </div>

        </div>
    </div>
<!-- //courses -->

<!-- bootstrap-pop-up -->
	<div class="modal video-modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModal">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h3 class="agileinfo_sign" id="ProTitle"></h3>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>						
				</div>
				<section>
					<div class="modal-body">
						<img alt=" " class="img-responsive"  id="ProImage"/>
						<p id="ProDesc"></p>
					</div>
				</section>
			</div>
		</div>
	</div>
<!-- //bootstrap-pop-up -->

</asp:Content>
