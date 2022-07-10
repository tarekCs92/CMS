<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="Personality.About" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="slide-contant">
        <div class="container">
            <div class="row">

                <div class="col-lg-12 text-center">

                    <h2 class="head">عن الشركة</h2>
                    <div class="line-white center-block"></div>
                </div>

            </div>
        </div>
    </div>
    <!--end slider-->

    <div class="contant">
        <div class="container">
            <div class="row">


                <div class="cleaner-h4"></div>

                <div class="col-lg-8 col-xs-12">

                    <div class="cleaner-h4"></div>

                    <h3 runat="server" id="htitle"></h3>

                    <div class="line"></div>

                    <p class="p-contant" runat="server" id="ptext">
                    </p>
                    <div class="cleaner-h4"></div>
                    <div class="row">
                        <div class="col-lg-4 col-xs-12">
                            <i class="fa fa-icon fa-certificate"></i>
                            <h4 runat="server" id="h11">شهادة خبرة</h4>
                            <p class="p-icon" runat="server" id="d11">هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن </p>
                        </div>
                        <!--end col-4-->
                        <div class="col-lg-4 col-xs-12">
                            <i class="fa fa-icon fa-clock-o"></i>
                            <h4 runat="server" id="h22">خدمة متميزة</h4>
                            <p class="p-icon" runat="server" id="d22">هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن</p>
                        </div>
                        <!--end col-4-->
                        <div class="col-lg-4 col-xs-12">
                            <i class="fa fa-icon fa-child"></i>
                            <h4 runat="server" id="h33">افضل سعر</h4>
                            <p class="p-icon" runat="server" id="d33">هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن</p>
                        </div>
                        <!--end col-4-->
                    </div>
                    <!--end row-->
                </div>
                <!--end col-8-->
                <div class="col-lg-4 hidden-xs">
                    <img class="img-responsive img-contant" src="/images/man.png" />
                </div>
                <!--end col-4-->
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
