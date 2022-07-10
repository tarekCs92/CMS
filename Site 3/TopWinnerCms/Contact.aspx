<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Personality.Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- header_internal_page -->
    <section class="header_internal_page">
        <div class="overlay">
            <h2>اتصل بنا</h2>
        </div>
    </section>
    <!-- end_header_internal_page -->
    <!--start wrapper-->
    <div class="wrapper padding-70">
        <div class="container">
            <div class="row">
                <div class="col-md-8">
                    <div class="internal_page contact_page">
                        <!-- map -->
                        <div class="map_page">
                            <iframe src="https://www.google.com/maps/embed?pb=!1m10!1m8!1m3!1d13814.715861784276!2d31.325568649999997!3d30.04606675!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sar!2seg!4v1484210804672" width="100%" height="275" frameborder="0" style="border: 3px solid #aaa" allowfullscreen></iframe>
                        </div>
                        <!-- end_map -->
                        <div class="row info_fo">
                            <div class="col-md-6 col-xs-12">
                                <div class="contact-info">
                                    <i class="fa fa-map-marker" aria-hidden="true"></i>
                                    <span id="spnAddress" runat="server"></span>
                                </div>
                            </div>
                            <div class="col-md-6 col-xs-12">
                                <div class="contact-info">
                                    <i class="fa fa-phone" aria-hidden="true"></i>
                                    <span id="spnPhones" runat="server"></span>
                                </div>
                            </div>
                        </div>
                        <div class="form">
                            <%--<form class="" action=" " method="post" id="contact_form">--%>
                            <!-- Text input-->
                            <div class="form-group">
                                <label class="control-label">الاسم</label>
                                <div class="inputGroupContainer">
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                        <input name="first_name" placeholder="الاسم" class="form-control" type="text" id="name" runat="server">
                                    </div>
                                </div>
                            </div>
                            <!-- Text input-->
                            <div class="form-group">
                                <label class="control-label">الايميل</label>
                                <div class="inputGroupContainer">
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
                                        <input name="email" placeholder="بريدك الالكترونى" class="form-control" type="text" id="email" runat="server">
                                    </div>
                                </div>
                                <asp:RegularExpressionValidator ValidationGroup="LocationInfoGroup" ID="expEmail" runat="server" ControlToValidate="email" ErrorMessage="valid email address required" ValidationExpression="^([0-9a-zA-Z]([-.\w]*[0-9a-zA-Z])*@([0-9a-zA-Z][-\w]*[0-9a-zA-Z]\.)+[a-zA-Z]{2,9})$"></asp:RegularExpressionValidator>
                            </div>

                            <!-- Text input-->
                            <div class="form-group">
                                <label class="control-label">رقم التليفون</label>
                                <div class="inputGroupContainer">
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="glyphicon glyphicon-earphone"></i></span>
                                        <input name="phone" placeholder="(+2)123 456 7980" class="form-control" type="text" id="phone" runat="server">
                                    </div>
                                </div>
                            </div>
                            <div class="form-group message_inbut_00">
                                <label for="comment">الرسالة</label>
                                <textarea class="form-control" rows="9" id="message" runat="server"></textarea>
                            </div>
                            <div class="form-group">
                                <asp:RequiredFieldValidator ValidationGroup="LocationInfoGroup" ID="RequiredFieldValidator3Ar"
                                     runat="server" ControlToValidate="message"
                                    ErrorMessage="حقل مطلوب"></asp:RequiredFieldValidator>
                            </div>
                            <!-- Button -->
                            <div class="form-group">
                                <a href="#" class="more_00 transition" validationgroup="LocationInfoGroup" runat="server" onserverclick="contactbtn_ServerClick">إرسال الأن</a>
                            </div>
                            <%-- </form>--%>
                        </div>
                    </div>
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

</asp:Content>
