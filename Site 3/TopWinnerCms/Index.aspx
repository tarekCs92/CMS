<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Personality.Index1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!--start main slider-->
    <section class="slider">
        <div class="row">
            <div class="large-12 columns">
                <div class="fadeOut owl-carousel owl-theme">
                    <asp:ListView ID="lstSlider" runat="server">
                        <ItemTemplate>
                            <div class="item" style="background-image: url(<%#Eval("Image") %>);">
                                <div class="overlay">
                                    <div class="container caption">
                                        <h2 class="h1"><%#Eval("ArTitle") %></h2>
                                        <p><%#Eval("ArDescription") %></p>
                                    </div>
                                </div>
                            </div>
                        </ItemTemplate>
                    </asp:ListView>
                </div>
            </div>
        </div>
    </section>
    <!--end main slider-->
    <!--start wrapper-->
    <div class="wrapper padding-60">
        <div class="container">
            <div class="row">
                <div class="col-md-8">
                    <!--start about-->
                    <section class="aboutUs">
                        <div class="title">
                            <h2 class="h1" id="header1" runat="server">توب وينر </h2>
                            <hr>
                            <hr>
                        </div>
                        <p id="desc1" runat="server">
                            هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة,هذا النص هو مثال لنص يمكن أن يستبدل في نفس
                        المساحة .
                        هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة,هذا النص هو مثال لنص يمكن أن يستبدل في نفس
                        المساحة ,
                        هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة,هذا النص هو مثال لنص يمكن أن يستبدل في نفس
                        المساحة .
                        هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة,هذا النص هو مثال لنص يمكن أن يستبدل في نفس
                        المساحة , هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة,هذا النص هو مثال لنص يمكن أن يستبدل
                        في نفس
                        المساحة .
                        هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة,هذا النص هو مثال لنص يمكن أن يستبدل في نفس
                        المساحة .
                        </p>
                    </section>
                    <!--end about-->

                    <!--start service-->
                    <section class="services padding-60">
                        <div class="title">
                            <h2 class="h1">خدماتنا </h2>
                            <hr>
                            <hr>
                        </div>
                        <div class="row">
                            <asp:ListView ID="lstServices" runat="server">
                                <ItemTemplate>
                                    <div class="col-md-4">
                                        <div class="single-service transition">
                                            <i class="fa fa-diamond"></i>
                                            <h4><%#Eval("ArTitle") %> </h4>

                                            <p>
                                                <%#Eval("ArDescription") %>
                                            </p>
                                            <a href="/service_details.aspx?id=<%#Eval("Id") %>">المزيد</a>
                                        </div>
                                    </div>
                                </ItemTemplate>
                            </asp:ListView>
                            <div class="col-md-12 text-center">
                                <a class="more transition" href="/Services.aspx">المزيد <i class="fa fa-arrow-left" aria-hidden="true"></i></a>
                            </div>
                        </div>
                    </section>
                    <!--end service-->

                    <!--start consultation-->
                    <section class="consultation padding-60">
                        <div class="title">
                            <h2 class="h1">الأستشارات </h2>
                            <hr>
                            <hr>
                        </div>
                        <div class="row">
                            <div class="col-md-8">
                                <div class="fqa">
                                    <div class="panel-group" id="accordion">
                                        <asp:ListView ID="lstConsult" runat="server">
                                            <ItemTemplate>
                                                <div class="panel panel-default" >
                                                    <div class="panel-heading">
                                                        <h4 class="panel-title">
                                                            <a data-toggle="collapse" data-parent="#accordion" href="#collapse<%#Container.DisplayIndex%>"><%#Eval("ArTitle") %></a>
                                                        </h4>
                                                    </div>
                                                    <div id="collapse<%#Container.DisplayIndex%>" class="panel-collapse collapse ">
                                                        <div class="panel-body">
                                                            <%#Eval("ArDescription") %>
                                                        </div>
                                                    </div>
                                                </div>
                                            </ItemTemplate>
                                        </asp:ListView>
                                        <%--                                        <div class="panel panel-default">
                                            <div class="panel-heading">
                                                <h4 class="panel-title">
                                                    <a data-toggle="collapse" data-parent="#accordion" href="#collapse1">أستشاره
                                                    1</a>
                                                </h4>
                                            </div>
                                            <div id="collapse1" class="panel-collapse collapse in">
                                                <div class="panel-body">
                                                    هذا النص هو مثال لنص يمكن أن يستبدل في نفس
                                                المساحة,هذا النص هو مثال لنص يمكن أن يستبدل في
                                                نفس المساحة , هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة,هذا
                                                النص هو مثال لنص يمكن أن يستبدل في
                                                نفس المساحة .
                                                </div>
                                            </div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div class="panel-heading">
                                                <h4 class="panel-title">
                                                    <a data-toggle="collapse" data-parent="#accordion" href="#collapse2">أستشاره
                                                    2</a>
                                                </h4>
                                            </div>
                                            <div id="collapse2" class="panel-collapse collapse">
                                                <div class="panel-body">
                                                    هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة,هذا النص هو مثال لنص
                                                يمكن أن يستبدل في
                                                نفس المساحة , هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة,هذا
                                                النص هو مثال لنص يمكن أن يستبدل في
                                                نفس المساحة .
                                                </div>
                                            </div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div class="panel-heading">
                                                <h4 class="panel-title">
                                                    <a data-toggle="collapse" data-parent="#accordion" href="#collapse3">أستشاره
                                                    3</a>
                                                </h4>
                                            </div>
                                            <div id="collapse3" class="panel-collapse collapse">
                                                <div class="panel-body">
                                                    هذا النص هو مثال لنص يمكن أن يستبدل في نفس
                                                المساحة,هذا النص هو مثال لنص يمكن أن يستبدل في
                                                نفس المساحة , هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة,هذا
                                                النص هو مثال لنص يمكن أن يستبدل في
                                                نفس المساحة .
                                                </div>
                                            </div>
                                        </div>--%>
                                    </div>

                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="councillor owl-carousel owl-theme text-center">
                                    <asp:ListView ID="lstTeam" runat="server">
                                        <ItemTemplate>
                                            <div class="item">
                                                <div class="img">
                                                    <img src="<%#Eval("Image") %>">
                                                </div>
                                                <h4><%#Eval("ArTitle") %></h4>

                                                <p><%#Eval("Icon") %></p>
                                            </div>
                                        </ItemTemplate>
                                    </asp:ListView>

                                    <%--                                    <div class="item">
                                        <div class="img">
                                            <img src="assets/images/team/2.jpg">
                                        </div>
                                        <h4>الأسم</h4>

                                        <p>عنوان الوظيفه</p>
                                    </div>
                                    <div class="item">
                                        <div class="img">
                                            <img src="assets/images/team/3.jpg">
                                        </div>
                                        <h4>الأسم</h4>

                                        <p>عنوان الوظيفه</p>
                                    </div>--%>
                                </div>
                            </div>
                            <div class="col-md-12 text-center">
                                <a class="more transition" href="/consulting.aspx">المزيد 
                            <i class="fa fa-arrow-left" aria-hidden="true"></i></a>
                            </div>
                        </div>
                    </section>
                    <!--end consultation-->

                    <!--start Country-->
                    <!--end Country-->
                </div>
                <div class="col-md-4">
                    <div class="advertisement">
                        <div class="advertis">
                            <h4><i class="fa fa-television" aria-hidden="true"></i>أعلانات</h4>
                        </div>
                        <asp:ListView ID="lstAdvertise" runat="server">
                            <ItemTemplate>
                                <div class="img">
                                    <img src="<%#Eval("Image") %>">
                                </div>
                            </ItemTemplate>
                        </asp:ListView>
                        <div class="social-media">
                            <asp:ListView ID="lstSocial" runat="server">
                                <ItemTemplate>
                                    <a href="<%#Eval("Link") %>">
                                        <div class="fa <%#Eval("Icon") %>"></div>
                                    </a>
                                </ItemTemplate>
                            </asp:ListView>
                            <%-- <a href="">
                                <div class="fa  fa-twitter"></div>
                            </a>
                            <a href="">
                                <div class="fa fa-dribbble"></div>
                            </a>
                            <a href="">
                                <div class="fa fa-google"></div>
                            </a>
                            <a href="">
                                <div class="fa fa-rss"></div>
                            </a>
                            <a href="">
                                <div class="fa fa-linkedin"></div>
                            </a>
                            <a href="">
                                <div class="fa fa-pinterest"></div>
                            </a>
                            <a href="">
                                <div class="fa fa-youtube"></div>
                            </a>--%>
                        </div>
                    </div>

                </div>
            </div>
        </div>

    </div>
    <!--end wrapper-->

</asp:Content>
