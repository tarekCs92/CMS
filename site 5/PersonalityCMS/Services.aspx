<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="Services.aspx.cs" Inherits="Personality.Services" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="contact-wthree jarallax" id="contact">
        <div class="container">
            <h3 class="text-center"><font color="#fea523">خدماتنا</font></h3>
        </div>
    </section>
    <section class="service-w3l" id="service">
        <div class="container">

            <div class="col-lg-8 col-md-12 col-sm-12">
                <asp:ListView ID="lstCountryService" runat="server">
                    <ItemTemplate>
                        <div class="col-xs-4 serv-agile1" data-aos="flip-up" dir="rtl">
                            <i class="fa fa-book" aria-hidden="true"></i>
                            <h4><%#Eval("ArTitle") %></h4>
                            <p class="serv-p2"><%#Eval("ArDescription") %></p>
                        </div>
                    </ItemTemplate>
                </asp:ListView>

                <div class="clearfix"></div>

                <div class="clearfix"></div>
            </div>
            <div class="col-lg-4 col-md-12 col-sm-12" data-aos="flip-up" dir="rtl">
                <h3>خدماتنا</h3>
                <p class="serv-p1">نسعى إلى تحقيق حلمكم ..</p>
            </div>


            <div class="clearfix"></div>
            <asp:ListView ID="lstServices" runat="server">
                <ItemTemplate>
                    <p class="serv-p1" dir="rtl">&#10024; <%#Eval("ArDescription") %> </p>
                </ItemTemplate>
            </asp:ListView>


            <%--            <p class="serv-p1" dir="rtl">&#10024; نساعدك في الحصول على دعوة طالب لكي تحصل على تأشيرة الدخول  </p>

            <p class="serv-p1" dir="rtl">&#10024;  نتابع عــملية تسجـــيلك في الجـــامعة المخــــتارة حـــتى الــــنهــــاية   </p>
            <p class="serv-p1" dir="rtl">&#10024;   الإرشـــادات اللازمة لطـــلابنا لمساعدتهم باختيار الاختصاص الملائم     </p>
            <p class="serv-p1" dir="rtl">&#10024;  نخبر طــلابنا بتــــواريخ الأحـــداث المـهــمـة و معــــدلاتــــهم أيضاً   </p>
            <p class="serv-p1" dir="rtl">&#10024;  نســـاعد الطـــلاب في حل جمــــيع المشاكل التي تصادفهم في دراستهم    </p>
            <p class="serv-p1" dir="rtl">&#10024;   بالتــــعاون مع الجامعـــة نقــــدم أفضل البرامج لدفع الأقساط الدراسية  </p>
            <p class="serv-p1" dir="rtl">&#10024;   نسعى جهدنا للمحـــافظة على أوقاتـــك و توفير متطـلـبـــات الـــراحة  </p>--%>
        </div>
    </section>


    <section class="staff-agileinfo" id="team">
        <div class="container">
            <h3 class="text-center"><font color="#fea523">الجامعات المتاحة باليونان</font></h3>
            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6 team-agile3" data-aos="flip-up">
                <div class="view view-eighth">
                    <img src="images/team-img3.png" alt="" class="img-responsive" />
                    <div class="mask">
                        <h4>جامعة العقبة</h4>

                        <p class="info"><a href="sp.html">التخصصات المتاحة<a /></p>
                    </div>

                </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6 team-agile3" data-aos="flip-up">
                <div class="view view-eighth">
                    <img src="images/team-img3.png" alt="" class="img-responsive" />
                    <div class="mask">
                        <h4>جامعة العقبة</h4>

                        <p class="info"><a href="sp.html">التخصصات المتاحة<a /></p>
                    </div>

                </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6 team-agile3" data-aos="flip-up">
                <div class="view view-eighth">
                    <img src="images/team-img3.png" alt="" class="img-responsive" />
                    <div class="mask">
                        <h4>جامعة العقبة</h4>

                        <p class="info"><a href="sp.html">التخصصات المتاحة<a /></p>
                    </div>

                </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6 team-agile3" data-aos="flip-up">
                <div class="view view-eighth">
                    <img src="images/team-img3.png" alt="" class="img-responsive" />
                    <div class="mask">
                        <h4>جامعة العقبة</h4>

                        <p class="info"><a href="sp.html">التخصصات المتاحة<a /></p>
                    </div>

                </div>
            </div>
            <div class="clearfix"></div>
        </div>
    </section>

    <section class="staff-agileinfo" id="team">
        <div class="container">
            <h3 class="text-center"><font color="#fea523">الجامعات المتاحة بمصر</font></h3>
            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6 team-agile3" data-aos="flip-up">
                <div class="view view-eighth">
                    <img src="images/team-img3.png" alt="" class="img-responsive" />
                    <div class="mask">
                        <h4>جامعة العقبة</h4>

                        <p class="info"><a href="sp.html">التخصصات المتاحة<a /></p>
                    </div>

                </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6 team-agile3" data-aos="flip-up">
                <div class="view view-eighth">
                    <img src="images/team-img3.png" alt="" class="img-responsive" />
                    <div class="mask">
                        <h4>جامعة العقبة</h4>

                        <p class="info"><a href="sp.html">التخصصات المتاحة<a /></p>
                    </div>

                </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6 team-agile3" data-aos="flip-up">
                <div class="view view-eighth">
                    <img src="images/team-img3.png" alt="" class="img-responsive" />
                    <div class="mask">
                        <h4>جامعة العقبة</h4>

                        <p class="info"><a href="sp.html">التخصصات المتاحة<a /></p>
                    </div>

                </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6 team-agile3" data-aos="flip-up">
                <div class="view view-eighth">
                    <img src="images/team-img3.png" alt="sp.html" class="img-responsive" />
                    <div class="mask">
                        <h4>جامعة العقبة</h4>

                        <p class="info"><a href="sp.html">التخصصات المتاحة<a /></p>
                    </div>

                </div>
            </div>
            <div class="clearfix"></div>
        </div>
    </section>


    <section class="staff-agileinfo" id="team">
        <div class="container">
            <h3 class="text-center"><font color="#fea523">الجامعات المتاحة باليونان</font></h3>
            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6 team-agile3" data-aos="flip-up">
                <div class="view view-eighth">
                    <img src="images/team-img3.png" alt="" class="img-responsive" />
                    <div class="mask">
                        <h4>جامعة العقبة</h4>

                        <p class="info"><a href="sp.html">التخصصات المتاحة<a /></p>
                    </div>

                </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6 team-agile3" data-aos="flip-up">
                <div class="view view-eighth">
                    <img src="images/team-img3.png" alt="" class="img-responsive" />
                    <div class="mask">
                        <h4>جامعة العقبة</h4>

                        <p class="info"><a href="sp.html">التخصصات المتاحة<a /></p>
                    </div>

                </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6 team-agile3" data-aos="flip-up">
                <div class="view view-eighth">
                    <img src="images/team-img3.png" alt="" class="img-responsive" />
                    <div class="mask">
                        <h4>جامعة العقبة</h4>

                        <p class="info"><a href="sp.html">التخصصات المتاحة<a /></p>
                    </div>

                </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6 team-agile3" data-aos="flip-up">
                <div class="view view-eighth">
                    <img src="images/team-img3.png" alt="" class="img-responsive" />
                    <div class="mask">
                        <h4>جامعة العقبة</h4>

                        <p class="info"><a href="sp.html">التخصصات المتاحة<a /></p>
                    </div>

                </div>
            </div>
            <div class="clearfix"></div>
        </div>
    </section>

</asp:Content>
