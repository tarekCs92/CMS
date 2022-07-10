<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Personality.Index1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div class="slider">
        <div id="carousel-example-generic-1" class="carousel slide" data-ride="carousel">
            <!-- Wrapper for slides -->
            <div class="carousel-inner" role="listbox">
                <asp:ListView ID="lstslider" runat="server">
                    <ItemTemplate>

                        <div class="item <%#Container.DataItemIndex == 0 ? "active" : string.Empty %>">
                            <img class="img-responsive img-slider relative" src="<%#Eval("Image") %>" />
                            <div class="position">
                                <p class="p-main">
                                    <%#Eval("ArTitle") %>
                                </p>
                                <div class="line"></div>
                                <p class="p-none">
                                    <%#Eval("ArDescription") %>
                                </p>
                                <%-- <a href="#" class="btn btn-black">Our Services</a>--%>
                            </div>
                            <!--end position-->
                        </div>
                    </ItemTemplate>
                </asp:ListView>
                <!-- Controls -->
                <a class="left carousel-control" href="#carousel-example-generic-1" role="button" data-slide="prev">
                    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="right carousel-control" href="#carousel-example-generic-1" role="button" data-slide="next">
                    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>
        </div>
        <!--end carsoul-->
    </div>
    <!--end slider-->


    <div class="contant">
        <div class="cleaner-h2"></div>
        <div class="container">
            <div class="row">
                <div class="cleaner-h4"></div>

                <div class="col-lg-8 col-xs-12">

                    <div class="cleaner-h4"></div>

                    <h3>مهتمنا
 <span>العناية بمنزلك</span></h3>

                    <div class="line"></div>

                    <p class="p-contant" runat="server" id="ptext"> التركيز على الشكل الخارجي للنص أو شكل توضع الفقرات في الصفحة التي يقرأها. ولذلك يتم استخدام طريقة لوريم إيبسوم لأنها تعطي توزيعاَ طبيعياَ -إلى حد ما- للأحرف عوضاً عن استخدام "هنا يوجد محتوى نصي، هنا يوجد محتوى نصي" فتجعلها تبدو (أي الأحرف) وكأنها نص مقروء. العديد من برامح النشر المكتبي وبرامح تحرير صفحات الويب تستخدم لوريم إيبسوم بشكل إفتراضي كنموذج عن النص، وإذا قمت بإدخال "lorem ipsum" في أي محرك بحث ستظهر العديد من المواقع الحديثة العهد في نتائج البحث. على مدى السنين ظهرت نسخ جديدة ومختلفة من نص لوريم إيبسوم، أحياناً عن طريق الصدفة، وأحياناً عن عمد كإدخال بعض العبارات الفكاهية إليها. </p>

                    <div class="cleaner-h4"></div>
                    <div class="row">
                        <div class="col-lg-4 col-xs-12">
                            <i class="fa fa-icon fa-certificate"></i>
                            <h4 runat="server" id="h11">شهادة خبرة</h4>
                            <p class="p-icon" runat="server" id="d11"> </p>
                        </div>
                        <!--end col-4-->
                        <div class="col-lg-4 col-xs-12">
                            <i class="fa fa-icon fa-clock-o"></i>
                            <h4 runat="server" id="h22">خدمة متميزة</h4>
                            <p class="p-icon" runat="server" id="d22"></p>
                        </div>
                        <!--end col-4-->
                        <div class="col-lg-4 col-xs-12">
                            <i class="fa fa-icon fa-child"></i>
                            <h4 runat="server" id="h33">افضل سعر</h4>
                            <p class="p-icon" runat="server" id="d33"></p>
                        </div>
                        <!--end col-4-->
                    </div>
                    <%--<div class="row">

                        <div class="col-lg-4 col-xs-12">
                            <i class="fa fa-icon fa-certificate"></i>
                            <h4>شهادة خبرة</h4>
                            <p class="p-icon"> </p>
                        </div>
                        <!--end col-4-->

                        <div class="col-lg-4 col-xs-12">
                            <i class="fa fa-icon fa-clock-o"></i>
                            <h4>خدمة متميزة</h4>
                            <p class="p-icon"></p>
                        </div>
                        <!--end col-4-->

                        <div class="col-lg-4 col-xs-12">
                            <i class="fa fa-icon fa-child"></i>
                            <h4>افضل سعر</h4>
                            <p class="p-icon"></p>
                        </div>
                        <!--end col-4-->

                    </div>--%>
                    <!--end row-->

                </div>
                <!--end col-8-->

                <div class="col-lg-4 hidden-xs">
                    <img class="img-responsive img-contant" src="images/man.png" />
                </div>
                <!--end col-4-->


            </div>
            <!--end row-->
        </div>
        <!--end container-->
    </div>
    <!--end contant-->

    <div class="our-services">
        <div class="container">
            <div class="row">

                <div class="cleaner-h4"></div>
                <div class="cleaner-h4"></div>


                <div class="col-lg-12 text-center">
                    <h2 class="h2-main">خدماتنا</h2>
                    <div class="line-white center-block"></div>
                    <%--<p class="p-main center-block"> التركيز على الشكل الخارجي للنص</p>--%>
                </div>

                <div class="cleaner-h4"></div>
                <div class="cleaner-h4"></div>
                <asp:ListView ID="lsetservices" runat="server">
                    <ItemTemplate>
                        <div class="col-lg-3">
                            <div class="servicess">
                                <div class="line-right">
                                    <img src="<%#Eval("Image") %>" class="img-responsive center-block" />
                                    <p class="text-center"><%#Eval("ArTitle") %></p>
                                    <div class="white"></div>
                                </div>
                                <div class="cleaner-h2"></div>
                                <div class="line-white center-block"></div>
                            </div>
                            <!--end servicess-->
                        </div>
                    </ItemTemplate>
                </asp:ListView>

                <!--end col-3-->
                <!--end col-3-->

                <div class="cleaner-h4"></div>
                <div class="cleaner-h4"></div>

            </div>
            <!--end row-->
        </div>
        <!--end container-->
    </div>
    <!--end our services-->

    <div class="projects">
        <div class="container">
            <div class="row">

                <div class="cleaner-h4"></div>
                <div class="cleaner-h4"></div>

                <div class="col-lg-12">
                    <h3>المشروعات</h3>
                    <div class="line center-block"></div>

                    <%--                    <p class="main-project center-block">
                         التركيز على الشكل الخارجي للنص
                    </p>--%>
                </div>
                <!--end col-12-->

                <div class="cleaner-h3"></div>
                <asp:ListView ID="ListView1" runat="server">
                    <ItemTemplate>
                        <div class="col-lg-6" style="display: <%#Container.DataItemIndex != 0 ? "none" : string.Empty %>">
                            <img src="<%#Eval("Image") %>" class="img-responsive images" />
                            <div class="data-projects">
                                <a href="/Details.aspx?id=<%#Eval("Id") %>">
                                    <h3><%#Eval("ArTitle") %></h3>
                                    <p>
                                        <%#Eval("ArDescription") %>
                                    </p>
                                </a>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:ListView>
                <div class="col-lg-6">
                    <asp:ListView ID="ListView2" runat="server">
                        <ItemTemplate>
                            <div class="block-1" style="display: <%#Container.DataItemIndex == 0 ? "none" : string.Empty %>">
                                <a href="/Details.aspx?id=<%#Eval("Id") %>">
                                    <img src="<%#Eval("Image") %>" class="img-responsive" />
                                    <h4><%#Eval("ArTitle") %></h4>
                                    <p><%#Eval("ArDescription") %></p>
                                </a>
                            </div>
                            <!--end block-1-->
                        </ItemTemplate>
                    </asp:ListView>
                </div>
                <!--end col-6-->
            </div>
            <!--end row-->
        </div>
        <!--end container-->
        <div class="cleaner-h4"></div>
        <div class="cleaner-h4"></div>
    </div>
    <!--end projects-->


    <div class="contact-us">
        <div class="container">
            <div class="row">
                <div class="col-lg-2">
                </div>
                <!--end col-lg-2-->

                <div class="col-lg-8">
                    <h4 style="margin-top: 10%;">احصل على استشارتك المجانية</h4>
                    <%--<p class="cont">
                         التركيز على الشكل الخارجي للنص
                        <span>أو شكل توضع الفقرات في الصفحة التي يقرأها. ولذلك يتم استخدام طريقة لوريم إيبسوم لأنها</span>
                    </p>--%>
                </div>
                <!--end col-8-->

                <div class="col-lg-2">
                    <div class="buttom"><a href="Contact.aspx" class="btn-contact">اتصل بنا</a></div>
                </div>
                <!--end col-lg-2-->

            </div>
            <!--end row-->
        </div>
        <!--end container-->
    </div>
    <!--end contact-us-->



    <div class="our-clients">
        <div class="container">
            <div class="row">

                <div class="cleaner-h4"></div>
                <div class="cleaner-h4"></div>

                <div class="col-lg-12">
                    <h3>عملائنا</h3>
                    <div class="line center-block"></div>

                    <%--                    <p class="main-project center-block">
                         التركيز على الشكل  
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
