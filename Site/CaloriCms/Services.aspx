<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="Services.aspx.cs" Inherits="Personality.Services" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- /banner -->
    <div class="banner1">
        <div class="wthree_banner1_info">
            <h3><span>خدمات </span>الدعم</h3>
        </div>
    </div>
    <!-- //banner -->
    <!-- icons -->
    <div class="team">
        <div class="container">
            <div class="grid_3 grid_4 w3_agileits_icons_page">
                <div class="icons">
                    <p runat="server" id="pservicedescription">
                       
                    </p>
                    <section id="new">
                        <h3 class="page-header page-header icon-subheading">الخدمات</h3>

                        <div class="row fontawesome-icon-list">
                            <asp:ListView ID="lsetservices" runat="server">
                                <ItemTemplate>
                                    <div class="icon-box col-lg-6 col-md-3 col-sm-4"><a class="agile-icon" href="#"><i class="fa <%#Eval("Icon") %>" aria-hidden="true"></i><%#Eval("ArTitle") %></a></div>
                                </ItemTemplate>
                            </asp:ListView>
                        </div>

                    </section>
                    <div class="section group">
                        <div class="box">
                            <div class="title ">
                                <h3 class="page-header icon-subheading">شروط الاستخدام</h3>
                            </div>
                            <div class="box_content">
                                <div class="fontawesome-icon-list">
                                    <asp:ListView ID="lsetcondition" runat="server">
                                        <ItemTemplate>
                                            <div class="icon-box col-lg-6 col-md-3 col-sm-4"><a class="agile-icon" href="#"><i class="fa <%#Eval("Icon") %>" aria-hidden="true"></i><%#Eval("ArTitle") %></a></div>
                                        </ItemTemplate>
                                    </asp:ListView>

                                    <div class="clearfix"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>
    <!-- icons -->
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
                        <p>
                            Ut enim ad minima veniam, quis nostrum 
							exercitationem ullam corporis suscipit laboriosam, 
							nisi ut aliquid ex ea commodi consequatur? Quis autem 
							vel eum iure reprehenderit qui in ea voluptate velit 
							esse quam nihil molestiae consequatur, vel illum qui 
							dolorem eum fugiat quo voluptas nulla pariatur.
							<i>" Quis autem vel eum iure reprehenderit qui in ea voluptate velit 
								esse quam nihil molestiae consequatur.</i>
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- //bootstrap-pop-up -->
</asp:Content>
