<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Personality.Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="slide-contact-us">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2 class="head">اتصل بنا</h2>
                    <div class="line-white center-block"></div>
                </div>
            </div>
        </div>
    </div>
    <!--end slider-->

    <div class="contant">
        <div class="container">
            <div class="row">
                <div class="cleaner-h3"></div>
                <div class="col-lg-6 col-xs-12">
                    <h3>ارسل رسالة</h3>
                    <div class="line"></div>
                    <%--<form>--%>
                    <label>الاسم</label>
                    <input type="text" id="name" runat="server" placeholder="الاسم" />

                    <label>رقم الهاتف</label>
                    <input type="text" id="email" runat="server" placeholder="رقم الهاتف" />

                    <label>الموضوع</label>
                    <input type="text" runat="server" id="subject" placeholder="الموضوع" />

                    <label>الرسالة</label>
                    <textarea runat="server" id="message"></textarea>

                    <a href="#" class="btn btn-info" runat="server" onserverclick="contactbtn_ServerClick">ارسل</a>

                    <asp:Label ID="lblResult" runat="server" Text=""></asp:Label>
                    <%--</form>--%>
                </div>
                <!--end col-6-->
                <div class="col-lg-6 col-xs-12">

                    <h3>تواصل معنا</h3>
                    <div class="line"></div>

                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1781287.924437384!2d46.41436432393404!3d29.309388230285016!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3fc5363fbeea51a1%3A0x74726bcd92d8edd2!2sKuwait!5e0!3m2!1sen!2seg!4v1521579881412" width="100%" height="280" frameborder="0" style="border: 0" allowfullscreen></iframe>

                    <div class="cleaner-h2"></div>

                    <p><i class="fa fa-mark fa-map-marker"></i><span id="head1address" runat="server">25 ش ابراهيم الشامى متفرع من شارع محمد ابراهيم</span></p>
                    <p><i class="fa fa-mark fa-phone"></i><span id="head1phone" runat="server"></span></p>
                    <p><i class="fa fa-mark fa-fax"></i><span id="head1fax" runat="server"></span></p>
                    <p><i class="fa fa-mark fa-send"></i><span id="head1email" runat="server"></span></p>

                    <div class="cleaner-h2"></div>

                    <ul class="social social-blue">
                        <li><a href="#" runat="server" id="facebookmaster" target="_blank"><i class="fa fa-facebook-f"></i></a></li>
                        <li><a href="#" runat="server" id="twittermaster" target="_blank"><i class="fa fa-twitter"></i></a></li>
                        <li><a href="#" runat="server" id="vkmaster" target="_blank"><i class="fa fa-linkedin"></i></a></li>
                    </ul>
                    <!--end social-->
                </div>
                <!--end col-6-->

                <div class="cleaner-h3"></div>

            </div>
            <!--end row-->
        </div>
        <!--end container-->
    </div>
    <!--end contant-->




    <div class="our-clients">
        <div class="container">
            <div class="row">

                <div class="cleaner-h4"></div>
                <div class="cleaner-h4"></div>

                <div class="col-lg-12">
                    <h3>عملائنا</h3>
                    <div class="line center-block"></div>

                    <%--                    <p class="main-project center-block">
                        هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز على الشكل  
                    </p>--%>
                </div>
                <!--end col-12-->
                <div class="col-lg-12">
                    <div id="logos">
                        <ul>
                            <asp:ListView ID="lstjobs" runat="server">
                                <ItemTemplate>
                                    <li>
                                        <img class="img-responsive" src="<%#Eval("Image") %>" />
                                    </li>
                                </ItemTemplate>
                            </asp:ListView>
                        </ul>
                    </div>
                </div>
                <!--end col-12-->
                <div class="cleaner-h4"></div>
            </div>
            <!--end row-->
        </div>
        <!--end container-->
    </div>
    <!--end our-clients-->
</asp:Content>
