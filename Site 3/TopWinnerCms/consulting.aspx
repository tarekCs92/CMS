<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Index.Master" CodeBehind="consulting.aspx.cs" Inherits="TopWinnerCms.consulting" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<!-- header_internal_page -->
<section class="header_internal_page">
    <div class="overlay">
        <h2>الأستشارات</h2>
    </div>
</section>
<!-- end_header_internal_page -->
    <div class="wrapper padding-70">
        <div class="container">
            <div class="row">
                <div class="col-md-8 ">
                    <!--start service-->
                                   <!--start consultation-->
               <section class="consultation internal_page">
                <div class="row">
                    <div class="col-md-12">
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
<%--                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h4 class="panel-title">
                                            <a data-toggle="collapse" data-parent="#accordion" href="#collapse1">أستشاره
                                            1</a>
                                        </h4>
                                    </div>
                                    <div id="collapse1" class="panel-collapse collapse in">
                                        <div class="panel-body"> هذا النص هو مثال لنص يمكن أن يستبدل في نفس
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
                                        <div class="panel-body"> هذا النص هو مثال لنص يمكن أن يستبدل في نفس
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
                    
                    </div>
                                       <div class="booging_page">
                        <h3>طلب استشارة</h3>
                        <%-- <form class="" action=" " method="post" id="">--%>
                            <div class="form-group row">
                                <label for="" class="col-sm-2">الاسم</label>
                                <div class="col-sm-10">
                                  <input type="text" class="form-control" id="Name" runat="server" placeholder="">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="" class="col-sm-2">الجوال</label>
                                <div class="col-sm-10">
                                  <input type="number" class="form-control" id="Phone" runat="server" placeholder="">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="" class="col-sm-2">البريد</label>
                                <div class="col-sm-10">
                                  <input type="email" class="form-control" id="Email" runat="server" placeholder="">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="" class="col-sm-2">الاستشارة</label>
                                <div class="col-sm-10">
                                 <textarea class="form-control" id="consultant" runat="server" rows="9" ></textarea>
                                </div>
                            </div>

                            <div class="form-group btn_reggf">
                                <button class="more_00 transition" runat="server" onserverclick="Unnamed_ServerClick">إرسـال</button>
                                <asp:Label ID="lblresult" CssClass="text-center" runat="server" Text="Label"></asp:Label>
                            </div>
                        <%-- </form>--%>
                     </div>
                </section>
                <!--end consultation-->
                    <!--end service-->
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
                        </div>

                    </div>

                </div>
            </div>
        </div>

    </div>
    <!--end wrapper-->
    <!-- //bootstrap-pop-up -->
</asp:Content>
