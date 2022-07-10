<%@ Page Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="course_details.aspx.cs" Inherits="TopWinnerCms.course_details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- header_internal_page -->
    <section class="header_internal_page">
        <div class="overlay">
            <h2>الدورات</h2>
        </div>
    </section>
    <!-- end_header_internal_page -->
    <!--start wrapper-->
    <div class="wrapper padding-70">
        <div class="container">
            <div class="row">
                <div class="col-md-8 ">
                    <%--                    <asp:ListView ID="ListView1" runat="server">
                        <ItemTemplate>--%>


                    <div class="services_de internal_page">
                        <h2 id="title" runat="server"></h2>
                        <span class="date_de">
                            <i class="fa fa-calendar-check-o"></i>
                            <span id="date" runat="server"></span>
                        </span>
                        <div id="carouseldiv" runat="server">
                            <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                                <!-- Indicators -->
                                <ol class="carousel-indicators">
                                    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                                    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                                </ol>

                                <!-- Wrapper for slides -->
                                <div class="carousel-inner" id="slider" runat="server" role="listbox">
                                </div>

                                <!-- Controls -->
                                <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
                                    <i class="fa fa-angle-left"></i>
                                    <span class="sr-only">Previous</span>
                                </a>
                                <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
                                    <i class="fa fa-angle-right"></i>
                                    <span class="sr-only">Next</span>
                                </a>
                            </div>
                        </div>
                        <br />
                        <div class="video_secr" id="video" runat="server">
                            <iframe width="100%" height="290" src="" frameborder="0" gesture="media" allow="encrypted-media" allowfullscreen></iframe>
                        </div>
                        <p id="descriptin" runat="server">
                        </p>
                        <div class="text-center">
                            <a class="more transition" href="#" data-toggle="modal" data-target="#myModal">للحجز </a>
                        </div>
                        <div class="text-center">
                            <asp:Label ID="lblresult" CssClass="text-center" runat="server" Text="Label"></asp:Label>
                        </div>
                    </div>
                    <!--end service-->
                    <%--                        </ItemTemplate>
                    </asp:ListView>--%>
                    <!--start service-->

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
    <!-- Modal -->
    <div id="myModal" class="modal fade" role="dialog">
        <div class="modal-dialog">
            <%--<asp:Label ID="lblid" runat="server" Text="0" Visible="False"></asp:Label>--%>
            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">حجز الدورة</h4>
                </div>
                <div class="modal-body">
                    <div class="form-group row">
                        <label for="" class="col-sm-2">الأسـم</label>
                        <div class="col-sm-10">
                            <input type="text" id="name" runat="server" class="form-control" placeholder="">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="" class="col-sm-2">رقـم الهاتف</label>
                        <div class="col-sm-10">
                            <input type="number" id="phone" runat="server" class="form-control" placeholder="">
                            <asp:RequiredFieldValidator ValidationGroup="LocationInfoGroup" ID="RequiredFieldValidator3Ar"
                                runat="server" ControlToValidate="phone"
                                ErrorMessage="حقل مطلوب"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="" class="col-sm-2">اسم الدورة </label>
                        <div class="col-sm-10">
                            <input type="text" id="coursename" runat="server" class="form-control" placeholder="يكتب هنا اسم الدورة" disabled>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="" class="col-sm-2">البريد الإلكترونى</label>
                        <div class="col-sm-10">
                            <input type="email" id="email" runat="server" class="form-control" placeholder="">
                            <asp:RegularExpressionValidator ValidationGroup="LocationInfoGroup" ID="expEmail" runat="server" ControlToValidate="email" ErrorMessage="valid email address required" ValidationExpression="^([0-9a-zA-Z]([-.\w]*[0-9a-zA-Z])*@([0-9a-zA-Z][-\w]*[0-9a-zA-Z]\.)+[a-zA-Z]{2,9})$"></asp:RegularExpressionValidator>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="" class="col-sm-2">المسمى الوظيفى</label>
                        <div class="col-sm-10">
                            <input type="text" id="job" runat="server" class="form-control" placeholder="">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="" class="col-sm-2">شركة او فرد</label>
                        <div class="col-sm-10">
                            <select class="form-control" id="type" runat="server">
                                <option value="شركة">شركة</option>
                                <option value="فـرد">فـرد</option>
                            </select>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="" class="col-sm-2">عدد الأغراد المسجلين</label>
                        <div class="col-sm-10">
                            <input type="text" id="peoplenuber" runat="server" value="1" />
                        </div>
                    </div>
                    <div class="form-group btn_reggf">
                        <button class="more_00 transition" ValidationGroup="LocationInfoGroup" runat="server" onserverclick="Unnamed_ServerClick">تسجيل</button>
                    </div>
                </div>
                <div class="modal-footer">
                    <%--<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>--%>
                </div>
            </div>

        </div>
    </div>
</asp:Content>
