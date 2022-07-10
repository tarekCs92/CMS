<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Personality.Index1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- banner section -->
    <section class="banner-w3ls">
        <div class='header'>
            <div class="container" align="center">
                <div class="banner-agileits" align="center">
                    <h2>شركة المجد للخدمات التعليمية </h2>
                    <ul class="social-icons1" align="center">
                        <asp:ListView ID="lstIcons" runat="server">
                            <ItemTemplate>
                                <li><a href="<%#Eval("Link") %>"><i class="fa <%#Eval("Icon") %>"></i></a></li>
                            </ItemTemplate>
                        </asp:ListView>

                        <%--                        <li><a href="https://www.youtube.com/channel/UCMN0l1RyGXw4vDoeSaKSHGg"><i class="fa fa-youtube"></i></a></li>
                        <li><a href="https://twitter.com/almajdeducation"><i class="fa fa-twitter"></i></a></li>
                        <li><a href="https://plus.google.com/u/0/112258893971784429527"><i class="fa fa-google-plus"></i></a></li>
                        <li><a href="https://www.instagram.com/almajdeducation/"><i class="fa fa-instagram"></i></a></li>--%>
                    </ul>
                </div>
            </div>
        </div>
    </section>
    <!-- /banner section -->
    <!-- info section -->
    <section class="info-w3l" id="info" data-aos="zoom-in">
        <div class="col-lg-4 col-md-4 col-sm-12 info-wthree1">

            <div class="col-xs-10" dir="rtl">
                <div class="info-agile">
                    <h3 id="htitle5" runat="server">نحو مستقبل مشرق</h3>
                    <p id="ptext5" runat="server">تعرف معنا على كافة الاجراءات اللازمه لاكمال دراستك بالخارج </p>

                </div>
            </div>
            <div class="col-xs-2">
                <i class="fa fa-university" aria-hidden="true"></i>
            </div>
            <div class="clearfix"></div>
            <hr>
        </div>
        <div class="col-lg-4 col-md-4 col-sm-12 info-wthree2">

            <div class="col-xs-10" dir="rtl">
                <div class="info-agile">
                    <h3 id="htitle4" runat="server">فقط قم باستشارة مستشارينا</h3>
                    <p id="ptext4" runat="server">كل ما يحتاجه الطالب للدراسة في الخارج لدى شركة المجد للخدمات التعليمية.</p>
                </div>
            </div>
            <div class="col-xs-2">
                <i class="fa fa-certificate" aria-hidden="true"></i>
            </div>
            <div class="clearfix"></div>
            <hr>
        </div>
        <div class="col-lg-4 col-md-4 col-sm-12 info-wthree3">

            <div class="col-xs-10" dir="rtl">
                <div class="info-agile">
                    <h3>شركة المجد للخدمات التعليمية</h3>
                    <p id="ptextSpecial2" runat="server">
                    </p>

                </div>

            </div>
            <div class="col-xs-2">
                <i class="fa fa-cogs" aria-hidden="true"></i>
            </div>
            <div class="clearfix"></div>
            <hr>
        </div>
        <div class="clearfix"></div>
    </section>
    <!-- /info section -->
    <!-- services section -->
    <section class="service-w3l" id="service">
        <div class="container">
            <div class="col-lg-4 col-md-12 col-sm-12" data-aos="flip-up" dir="rtl">
                <h3>خدماتنا</h3>
                <p class="serv-p1">نسعى إلى تحقيق حلمكم ..</p>
            </div>
            <div class="col-lg-8 col-md-12 col-sm-12">
                <div class="col-xs-4 serv-agile1" data-aos="flip-up" dir="rtl">
                    <i class="fa fa-book" aria-hidden="true"></i>
                    <h4 id="htitle" runat="server">مصر</h4>
                    <p class="serv-p2" id="ptext" runat="server">الدراسة بمصر لجميع الكويتيين  خريجي المعاهد والدبلومات في مختلف التخصصات..</p>
                </div>
                <div class="col-xs-4 serv-agile2" data-aos="flip-up" dir="rtl">
                    <i class="fa fa-graduation-cap" aria-hidden="true"></i>
                    <h4 id="htitle2" runat="server">اليونان
                    </h4>
                    <p class="serv-p2" id="ptext2" runat="server">لجميع المصريين المقيميين بمصر او بأي بلد أخرى الان نوفر لكم فرصة الدراسة باليونان.</p>
                </div>
                <div class="col-xs-4 serv-agile3" data-aos="flip-up" dir="rtl">
                    <i class="fa fa-book" aria-hidden="true"></i>
                    <h4 id="htitle3" runat="server">الأردن
                    </h4>
                    <p class="serv-p2" id="ptext3" runat="server">الدراسه بالاردن لجميع الوافدين من مختلف الجنسيات مع المجد في جميع التخصصات.</p>
                </div>
                <div class="clearfix"></div>
                <div class="clearfix"></div>
            </div>


            <div class="clearfix"></div>
        </div>
    </section>
    <!-- /services section -->
    <!-- about section -->
    <section class="about-agileits" id="about">
        <div class="container">
            <div class="col-lg-6 col-md-6 col-sm-12 about-w3ls1" data-aos="zoom-in">
                <div class="hover01 column">
                    <div>
                        <figure>
                            <img src="images/about-img.jpg" alt="" class="img-responsive">
                        </figure>
                    </div>
                </div>
            </div>
            <div class="col-lg-6 col-md-6 col-sm-12 about-w3ls2" data-aos="zoom-in">
                <div class="about-w3l" dir="rtl">
                    <h3><span class="fa fa-diamond" aria-hidden="true"></span>شركة المجد التعليمية.</h3>
                    <p id="ptextSpecial" runat="server">
                        تساعد آلاف من الطلاب على الدراسة في الخارج , تعرف على أعرق الجامعات ، واحصل على معلومات عن البرامج والمنح الدراسية
                        ، بالإضافة إلى معلومات عن تكلفة الحياة والدراسة و الحصول على تأشيرة السفر .
                    </p>
                    <%--<p>سنقوم بتوجيهك للجامعات المناسبه لك / سترسل اوراقك و سنقوم باستخراج التأشيرة لك / سنكون معك خطوه بخطوه الى ان تصل لحلمك .</p>--%>
                    <ul class="about-links">
                        <li><a href="About.aspx" class="about-link1" data-toggle="modal" data-target="#largeModal">المزيد</a></li>
                        <li><a href="Contact.aspx" class="about-link2">اتصل الان</a></li>
                    </ul>
                </div>
            </div>
            <div class="clearfix"></div>
        </div>
        <div class="modal fade" id="largeModal" tabindex="-1" role="dialog" aria-labelledby="largeModal" aria-hidden="true">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        <h4 class="modal-title w3-agileits agileits-w3layouts w3layouts">About Us</h4>
                    </div>
                    <div class="modal-body">
                        <div class="col-lg-6 col-md-6 col-sm-12">
                            <img src="images/about-img.jpg" alt="" class="img-responsive">
                        </div>
                        <div class="col-lg-6 col-md-6 col-sm-12">
                            <p class="news-info">المجد للخدمات التعليمية</p>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- /about section -->
    <!-- Staff section  -->
    <%--<section class="staff-agileinfo" id="team">
        <div class="container">
            <h3 class="text-center">شركة المجد</h3>
            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6 team-agile1" data-aos="flip-up">
                <div class="view view-eighth">
                    <img src="images/team-img1.jpg" alt="" class="img-responsive" />
                    <div class="mask">
                        <h4>للخدمات التعليمية</h4>
                        <ul class="team-social">
                            <li><a href="https://www.facebook.com/Almajdeducational/"><i class="fa fa-facebook"></i></a></li>
                            <li><a href="https://www.youtube.com/channel/UCMN0l1RyGXw4vDoeSaKSHGg"><i class="fa fa-youtube"></i></a></li>
                            <li><a href="https://twitter.com/almajdeducation"><i class="fa fa-twitter"></i></a></li>
                            <li><a href="https://plus.google.com/u/0/112258893971784429527"><i class="fa fa-google-plus"></i></a></li>
                        </ul>
                        <p class="info">تواصل معنا</p>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6 team-agile2" data-aos="flip-up">
                <div class="view view-eighth">
                    <img src="images/team-img2.jpg" alt="" class="img-responsive" />
                    <div class="mask">
                        <h4>للخدمات التعليمية</h4>
                        <ul class="team-social">
                            <li><a href="https://www.facebook.com/Almajdeducational/"><i class="fa fa-facebook"></i></a></li>
                            <li><a href="https://www.youtube.com/channel/UCMN0l1RyGXw4vDoeSaKSHGg"><i class="fa fa-youtube"></i></a></li>
                            <li><a href="https://twitter.com/almajdeducation"><i class="fa fa-twitter"></i></a></li>
                            <li><a href="https://plus.google.com/u/0/112258893971784429527"><i class="fa fa-google-plus"></i></a></li>
                        </ul>

                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6 team-agile3" data-aos="flip-up">
                <div class="view view-eighth">
                    <img src="images/team-img3.jpg" alt="" class="img-responsive" />
                    <div class="mask">
                        <h4>للخدمات التعليمية</h4>
                        <ul class="team-social">
                            <li><a href="https://www.facebook.com/Almajdeducational/"><i class="fa fa-facebook"></i></a></li>
                            <li><a href="https://www.youtube.com/channel/UCMN0l1RyGXw4vDoeSaKSHGg"><i class="fa fa-youtube"></i></a></li>
                            <li><a href="https://twitter.com/almajdeducation"><i class="fa fa-twitter"></i></a></li>
                            <li><a href="https://plus.google.com/u/0/112258893971784429527"><i class="fa fa-google-plus"></i></a></li>
                        </ul>

                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6 team-agile4" data-aos="flip-up">
                <div class="view view-eighth">
                    <img src="images/team-img4.jpg" alt="" class="img-responsive" />
                    <div class="mask">
                        <h4>للخدمات التعليمية</h4>
                        <ul class="team-social">
                            <li><a href="https://www.facebook.com/Almajdeducational/"><i class="fa fa-facebook"></i></a></li>
                            <li><a href="https://www.youtube.com/channel/UCMN0l1RyGXw4vDoeSaKSHGg"><i class="fa fa-youtube"></i></a></li>
                            <li><a href="https://twitter.com/almajdeducation"><i class="fa fa-twitter"></i></a></li>
                            <li><a href="https://plus.google.com/u/0/112258893971784429527"><i class="fa fa-google-plus"></i></a></li>
                        </ul>

                    </div>
                </div>
            </div>
            <div class="clearfix"></div>
        </div>
    </section>--%>
    <!-- /Staff section -->
    <!-- subscribe section -->
    <!-- /subscribe section -->
    <!-- Portfolio section -->

    <section class="portfolio-agileinfo" id="portfolio">
        <h3 class="text-center">معرض الصور</h3>
        <div class="gallery-grids">
            <div class="bs-example bs-example-tabs" role="tabpanel" data-example-id="togglable-tabs">
                <%--<ul id="myTab" class="nav nav-tabs" role="tablist" data-aos="zoom-in">
                    <li role="presentation" class="active"><a href="#home" id="home-tab" role="tab" data-toggle="tab" aria-controls="home" aria-expanded="true">التحق</a></li>
                    <li role="presentation"><a href="#teach" role="tab" id="teach-tab" data-toggle="tab" aria-controls="teach">التخصصات التربويه</a></li>
                    <li role="presentation"><a href="#train" role="tab" id="train-tab" data-toggle="tab" aria-controls="train">ادارة محاسبه تمويل</a></li>
                    <li role="presentation"><a href="#learn" role="tab" id="learn-tab" data-toggle="tab" aria-controls="learn">تربيه رياضيه </a></li>
                    <li role="presentation"><a href="#award" role="tab" id="award-tab" data-toggle="tab" aria-controls="award">تعلم صعوبات تخاطب </a></li>
                </ul>--%>
                <div class="clearfix"></div>
            </div>
            <div id="myTabContent" class="tab-content">
                <div role="tabpanel" class="tab-pane fade in active" id="home" aria-labelledby="home-tab">
                    <div class="tab_img">
                        <asp:ListView ID="lstgallary" runat="server">
                            <ItemTemplate>
                                <div class="col-md-3 col-sm-6 col-xs-6 portfolio-grids" data-aos="zoom-in">
                                    <a href="<%#Eval("Image") %>" class="b-link-stripe b-animate-go lightninBox" data-lb-group="1">
                                        <img src="<%#Eval("Image") %>" class="img-responsive" alt="w3ls" />
                                        <div class="b-wrapper">
                                            <i class="fa fa-search-plus" aria-hidden="true"></i>
                                            <h5>لا تتردد </h5>
                                            <p>شركة المجد التعليمية</p>
                                        </div>
                                    </a>
                                </div>
                            </ItemTemplate>
                        </asp:ListView>
                        <%--                        <div class="col-md-3 col-sm-6 col-xs-6 portfolio-grids" data-aos="zoom-in">
                            <a href="images/port-img5.jpg" class="b-link-stripe b-animate-go lightninBox" data-lb-group="1">
                                <img src="images/port-img5.jpg" class="img-responsive" alt="w3ls" />
                                <div class="b-wrapper">
                                    <i class="fa fa-search-plus" aria-hidden="true"></i>
                                    <h5>لا تتردد </h5>
                                    <p>شركة المجد التعليمية</p>
                                </div>
                            </a>
                        </div>
                        <div class="col-md-3 col-sm-6 col-xs-6 portfolio-grids" data-aos="zoom-in">
                            <a href="images/port-img6.jpg" class="b-link-stripe b-animate-go lightninBox" data-lb-group="1">
                                <img src="images/port-img6.jpg" class="img-responsive" alt="w3ls" />
                                <div class="b-wrapper">
                                    <i class="fa fa-search-plus" aria-hidden="true"></i>
                                    <h5>التحق الآن</h5>
                                    <p>شركة المجد التعليمية</p>
                                </div>
                            </a>
                        </div>
                        <div class="col-md-3 col-sm-6 col-xs-6 portfolio-grids" data-aos="zoom-in">
                            <a href="images/port-img7.jpg" class="b-link-stripe b-animate-go lightninBox" data-lb-group="1">
                                <img src="images/port-img7.jpg" class="img-responsive" alt="w3ls" />
                                <div class="b-wrapper">
                                    <i class="fa fa-search-plus" aria-hidden="true"></i>
                                    <h5>لا تتردد</h5>
                                    <p>شركة المجد التعليمية</p>
                                </div>
                            </a>
                        </div>
                        <div class="col-md-3 col-sm-6 col-xs-6 portfolio-grids" data-aos="zoom-in">
                            <a href="images/port-img8.jpg" class="b-link-stripe b-animate-go lightninBox" data-lb-group="1">
                                <img src="images/port-img8.jpg" class="img-responsive" alt="w3ls" />
                                <div class="b-wrapper">
                                    <i class="fa fa-search-plus" aria-hidden="true"></i>
                                    <h5>التحق الآن</h5>
                                    <p>شركة المجد التعليمية</p>
                                </div>
                            </a>
                        </div>
                        <div class="col-md-3 col-sm-6 col-xs-6 portfolio-grids" data-aos="zoom-in">
                            <a href="images/port-img9.jpg" class="b-link-stripe b-animate-go lightninBox" data-lb-group="1">
                                <img src="images/port-img9.jpg" class="img-responsive" alt="w3ls" />
                                <div class="b-wrapper">
                                    <i class="fa fa-search-plus" aria-hidden="true"></i>
                                    <h5>لا تتردد</h5>
                                    <p>شركة المجد التعليمية</p>
                                </div>
                            </a>
                        </div>
                        <div class="col-md-3 col-sm-6 col-xs-6 portfolio-grids" data-aos="zoom-in">
                            <a href="images/port-img10.jpg" class="b-link-stripe b-animate-go lightninBox" data-lb-group="1">
                                <img src="images/port-img10.jpg" class="img-responsive" alt="w3ls" />
                                <div class="b-wrapper">
                                    <i class="fa fa-search-plus" aria-hidden="true"></i>
                                    <h5>التحق الآن</h5>
                                    <p>شركة المجد التعليمية</p>
                                </div>
                            </a>
                        </div>
                        <div class="col-md-3 col-sm-6 col-xs-6 portfolio-grids" data-aos="zoom-in">
                            <a href="images/port-img11.jpg" class="b-link-stripe b-animate-go lightninBox" data-lb-group="1">
                                <img src="images/port-img11.jpg" class="img-responsive" alt="w3ls" />
                                <div class="b-wrapper">
                                    <i class="fa fa-search-plus" aria-hidden="true"></i>
                                    <h5>لا تتردد</h5>
                                    <p>شركة المجد التعليمية</p>
                                </div>
                            </a>
                        </div>
                        <div class="col-md-3 col-sm-6 col-xs-6 portfolio-grids" data-aos="zoom-in">
                            <a href="images/port-img12.jpg" class="b-link-stripe b-animate-go lightninBox" data-lb-group="1">
                                <img src="images/port-img12.jpg" class="img-responsive" alt="w3ls" />
                                <div class="b-wrapper">
                                    <i class="fa fa-search-plus" aria-hidden="true"></i>
                                    <h5>التحق الآن</h5>
                                    <p>شركة المجد التعليمية</p>
                                </div>
                            </a>
                        </div>--%>
                        <div class="clearfix"></div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- /Portfolio section -->
    <!-- contact section -->
    <!-- contact section -->
    <section class="contact-wthree jarallax" id="contact">
        <div class="container">
            <h3 class="text-center"><font color="#fea523">اتصل بنا</font></h3>

            <div class="col-lg-10 col-md-10 col-sm-10" data-aos="zoom-in" dir="rtl">
                <h4>كن معنا دائما على اتصال</h4>
                <p class="contact-agile">ماتتنازلش عن احلامك </p>
            </div>
            <div class="col-lg-2 col-md-2 col-sm-2" data-aos="zoom-in" dir="rtl">
            </div>
            <div class="col-lg-12" data-aos="zoom-in" dir="rtl">
                <ul class="contact-info">
                    <li>
                        <i class="fa fa-phone-square" aria-hidden="true"></i>
                        <p class="contact-p1" id="lblPhone" runat="server">00201111588677</p>
                        <%--<p class="contact-p2">0096550991933</p>--%>

                    </li>
                    <li>
                        <i class="fa fa-envelope" aria-hidden="true"></i>
                        <p class="contact-p1"><a href="#" id="lblEmail" runat="server">almajdeducation@gmail.com</a></p>
                        <%--<p class="contact-p2"><a href="almajdeducation@gmail.com">almajdeducation@gmail.com</a></p>--%>
                    </li>
                    <li>
                        <i class="fa fa-address-book" aria-hidden="true"></i>
                        <p class="contact-p1" id="lblAddress" runat="server"></p>
                        <%--<p class="contact-p2">حولى</p>--%>
                    </li>
                </ul>
            </div>
            <div class="clearfix"></div>
            <form action="#" method="post" name="sentMessage" id="contactForm" novalidate>
                <div class="col-lg-4 col-md-4 col-sm-4" data-aos="zoom-in" dir="rtl">
                    <div class="control-group form-group">
                        <div class="controls">
                            <label>البريد الالكترونى</label>
                            <input type="text" id="email" runat="server" class="form-control" />
                            <asp:RegularExpressionValidator ValidationGroup="LocationInfoGroup" ID="expEmail" runat="server" ControlToValidate="email" ErrorMessage="valid email address required" ValidationExpression="^([0-9a-zA-Z]([-.\w]*[0-9a-zA-Z])*@([0-9a-zA-Z][-\w]*[0-9a-zA-Z]\.)+[a-zA-Z]{2,9})$"></asp:RegularExpressionValidator>
                            <p class="help-block"></p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-4" data-aos="zoom-in" dir="rtl">
                    <div class="control-group form-group">
                        <div class="controls">
                            <label>رقم الهاتف</label>
                            <input type="tel" id="phone" class="form-control" runat="server" required data-validation-required-message="Please enter your phone number.">
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-4" data-aos="zoom-in" dir="rtl">
                    <div class="control-group form-group">
                        <div class="controls">
                            <label>الاسم</label>
                            <input type="text" class="form-control" id="name" runat="server" required data-validation-required-message="">
                            <asp:RequiredFieldValidator ID="rfvcandidate"
                                runat="server" ControlToValidate="name"
                                ErrorMessage="حقل مطلوب" ValidationGroup="LocationInfoGroup"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                </div>
                <div class="clearfix"></div>
                <div class="col-lg-12" data-aos="zoom-in" dir="rtl">
                    <div class="control-group form-group">
                        <div class="controls">
                            <label>الرســـالة:</label>
                            <textarea rows="10" cols="100" id="message" runat="server" class="form-control" required data-validation-required-message="Please enter your message" maxlength="999" style="resize: none"></textarea>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1"
                                runat="server" ControlToValidate="name" ValidationGroup="LocationInfoGroup"
                                ErrorMessage="حقل مطلوب"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div id="success"></div>
                    <!-- For success/fail messages -->
                </div>
                <div class="col-lg-12" data-aos="zoom-in" dir="rtl">
                    <button type="submit" class="btn btn-primary" validationgroup="LocationInfoGroup" runat="server" onserverclick="contactbtn_ServerClick">ارســـــل</button>
                </div>
                <div class="clearfix"></div>
                <asp:Label ID="lblResult" runat="server" Text="Label"></asp:Label>
            </form>
        </div>
    </section>
    <!-- /contact section -->
    <%--<div id="exampleSlider">
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
    </div>--%>
</asp:Content>
