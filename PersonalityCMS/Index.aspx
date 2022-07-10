<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Personality.Index1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div id="exampleSlider">
        <asp:ListView ID="lstslider" runat="server">
            <ItemTemplate>
                <div style="background: url(<%#Eval("Image") %>) no-repeat 0px 0px !important;">
                    <h3><%#Eval("ArTitle") %></h3>
                </div>
            </ItemTemplate>
        </asp:ListView>
        <asp:ListView ID="lstslideren" runat="server">
            <ItemTemplate>
                <div style="background: url(<%#Eval("Image") %>) no-repeat 0px 0px !important;">
                    <h3><%#Eval("EnTitle") %></h3>
                </div>
            </ItemTemplate>
        </asp:ListView>
    </div>


    <div class="testimonials">
        <div class="container">
            <h3 class="w3l_header w3_agileits_header">40 منتج من <span>المعدات الطبية</span></h3>
            <p class="sub_para_agile"></p>
            <div class="agile_team_grids_top">
                <asp:ListView ID="lstproduts" runat="server">
                    <ItemTemplate>
                        <div class="col-md-4 w3_agile_services_grid">
                            <div class="agile_services_grid1 wthree_services_grid1" style="background: url(<%#Eval("Image") %>) no-repeat 0px 0px;">
                                <div class="agile_services_grid1_sub">
                                    <p><%#Eval("ArTitle") %></p>
                                </div>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:ListView>
                                <asp:ListView ID="lstprodutsen" runat="server">
                    <ItemTemplate>
                        <div class="col-md-4 w3_agile_services_grid">
                            <div class="agile_services_grid1 wthree_services_grid1" style="background: url(<%#Eval("Image") %>) no-repeat 0px 0px;">
                                <div class="agile_services_grid1_sub">
                                    <p><%#Eval("EnTitle") %></p>
                                </div>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:ListView>
                <div class="clearfix"></div>
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
    <!-- gallery -->
    <div class="gallery">
        <h3 class="w3l_header w3_agileits_header">أحداث</h3>
        <p class="sub_para_agile"></p>
        <div class="agile_team_grids_top">
            <ul id="flexiselDemo1">
                <asp:ListView ID="lstlstest" runat="server">
                    <ItemTemplate>
                        <li>
                            <div class="wthree_gallery_grid">
                                <a href="images/g1.jpg" class="lsb-preview" data-lsb-group="header">
                                    <div class="view second-effect">
                                        <img src="<%#Eval("Image") %>" alt="" class="img-responsive" />
                                        <div class="mask">
                                            <p><%#Eval("ArTitle") %></p>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </li>
                    </ItemTemplate>
                </asp:ListView>
                <asp:ListView ID="lstlstesten" runat="server">
                    <ItemTemplate>
                        <li>
                            <div class="wthree_gallery_grid">
                                <a href="images/g1.jpg" class="lsb-preview" data-lsb-group="header">
                                    <div class="view second-effect">
                                        <img src="<%#Eval("Image") %>" alt="" class="img-responsive" />
                                        <div class="mask">
                                            <p><%#Eval("EnTitle") %></p>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </li>
                    </ItemTemplate>
                </asp:ListView>
            </ul>
        </div>
    </div>
    <!-- //gallery -->
    <!-- testimonials -->
    <div class="testimonials">
        <div class="container">
            <h3 class="w3l_header w3_agileits_header" id="hstaticnews" runat="server"></h3>
            <p class="sub_para_agile"></p>
            <div class="w3ls_testimonials_grids">
                <section class="center slider">
                    <asp:ListView ID="lstnews" runat="server">
                        <ItemTemplate>
                            <div class="agileits_testimonial_grid">
                                <div class="w3l_testimonial_grid">
                                    <a href="#"><%#Eval("ArTitle") %></a>
                                    <p>
                                        <%#Eval("ArDescription") %>
                                    </p>
                                    <%-- <div class="w3l_testimonial_grid_pos">
                                        <img src="images/1.png" alt=" " class="img-responsive" />
                                    </div>--%>
                                </div>
                            </div>
                        </ItemTemplate>
                    </asp:ListView>
                    <asp:ListView ID="lstnewsen" runat="server">
                        <ItemTemplate>
                            <div class="agileits_testimonial_grid">
                                <div class="w3l_testimonial_grid">
                                    <a href="#"><%#Eval("EnTitle") %></a>
                                    <p>
                                        <%#Eval("EnDescription") %>
                                    </p>
                                    <%-- <div class="w3l_testimonial_grid_pos">
                                        <img src="images/1.png" alt=" " class="img-responsive" />
                                    </div>--%>
                                </div>
                            </div>
                        </ItemTemplate>
                    </asp:ListView>
                </section>
            </div>
        </div>
    </div>
    <!-- //testimonials -->
</asp:Content>
