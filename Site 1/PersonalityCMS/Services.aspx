<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="Services.aspx.cs" Inherits="Personality.Services" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="slide-services">
        <div class="container">
            <div class="row">

                <div class="col-lg-12 text-center">
                    <h2 class="head">خدماتنا</h2>
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
                <div class="cleaner-h3"></div>
                <asp:ListView ID="lsetservices" runat="server">
                    <ItemTemplate>
                        <div class="col-lg-6">
                            <div class="service">
                                <div class="row">

                                    <div class="col-lg-2">
                                        <img src="<%#Eval("Link") %>" class="img-responsive" />
                                    </div>
                                    <!--end col-2-->

                                    <div class="col-1g-8">
                                        <a href="Steel Project.html">
                                            <h4 class="h-services"><%#Eval("ArTitle") %></h4>
                                        </a>

                                        <p><%#Eval("ArDescription") %> </p>
                                    </div>
                                    <!--end col-10-->

                                </div>
                                <!--end row-->
                            </div>
                            <!--end service-->
                            <div class="cleaner-h3"></div>
                        </div>
                    </ItemTemplate>
                </asp:ListView>

                <!--end col-6-->


                <!--end col-6-->

                <div class="cleaner-h3"></div>
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
