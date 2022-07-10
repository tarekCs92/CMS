<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Personality.Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
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
                >
			<ul class="contact-info">
                <li>
                    <i class="fa fa-phone-square" aria-hidden="true"></i>
                    <p class="contact-p1" id="lblPhone" runat="server">00201111588677</p>
                    <%--<p class="contact-p2">0096550991933</p>--%>

                </li>
                <li>
                    <i class="fa fa-envelope" aria-hidden="true"></i>
                    <p class="contact-p1" ><a href="#" id="lblEmail" runat="server">almajdeducation@gmail.com</a></p>
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
                            <input type="tel" id="phone"  class="form-control" runat="server" required data-validation-required-message="Please enter your phone number.">
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
                            <textarea rows="10" cols="100" id="message" runat="server" class="form-control"  required data-validation-required-message="Please enter your message" maxlength="999" style="resize: none"></textarea>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1"
                                runat="server" ControlToValidate="name" ValidationGroup="LocationInfoGroup"
                                ErrorMessage="حقل مطلوب" ></asp:RequiredFieldValidator>
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
    <%--    <div class="banner1">
        <div class="wthree_banner1_info">
            <h3><span>اتصل</span> بنا</h3>
        </div>
    </div>
    <div class="team">
        <div class="container">
            <h3 class="w3l_header w3_agileits_header">اتصل <span>بنا</span></h3>
            <div class="agile_team_grids_top">
                <div class="col-md-6 agileinfo_mail_grid_left">

                    <span class="input input--nariko">
                        <input class="input__field input__field--nariko" id="name" runat="server" name="Name" type="text" placeholder=" " required />

                        <label class="input__label input__label--nariko" for="input-20">
                            <span class="input__label-content input__label-content--nariko">الاسم</span>
                        </label>
                    </span>
                    <span>
                        <br />
                        <asp:RequiredFieldValidator ID="rfvcandidate"
                            runat="server" ControlToValidate="name"
                            ErrorMessage="حقل مطلوب"></asp:RequiredFieldValidator>
                    </span>
                    <span class="input input--nariko">
                        <input class="input__field input__field--nariko" id="email" runat="server" name="Email" type="email" placeholder=" " required />

                        <label class="input__label input__label--nariko" for="input-21">
                            <span class="input__label-content input__label-content--nariko">الايميل</span>
                        </label>
                    </span>
                    <span>
                        <br />
                       <asp:RegularExpressionValidator ID="expEmail" runat="server" ControlToValidate="email" ErrorMessage="valid email address required" ValidationExpression="^([0-9a-zA-Z]([-.\w]*[0-9a-zA-Z])*@([0-9a-zA-Z][-\w]*[0-9a-zA-Z]\.)+[a-zA-Z]{2,9})$"></asp:RegularExpressionValidator>
                    </span>
                    <span class="input input--nariko">
                        <input class="input__field input__field--nariko" id="subject" runat="server" name="Subject" type="text" placeholder=" " required />

                        <label class="input__label input__label--nariko" for="input-22">
                            <span class="input__label-content input__label-content--nariko">الموضوع</span>
                        </label>
                    </span>
                    <span>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2"
                            runat="server" ControlToValidate="Subject"
                            ErrorMessage="حقل مطلوب"></asp:RequiredFieldValidator>
                    </span>
                    <textarea name="Message" id="message" runat="server" placeholder="اكتب رسالتك..." required></textarea>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3"
                        runat="server" ControlToValidate="message"
                        ErrorMessage="حقل مطلوب"></asp:RequiredFieldValidator>
                    <br />
                    <a href="#" class="btn btn-default" id="contactbtn" onserverclick="contactbtn_ServerClick" runat="server">ارسال</a>

                </div>
                <div class="col-md-6 agileinfo_mail_grid_right">
                    <div class="agileinfo_mail_social_right">
                        <div class="agileinfo_mail_social_rightl">
                            <a href="#" class="w3_contact_facebook" id="w3_contact_facebook" runat="server">
                                <i class="fa fa-facebook" aria-hidden="true"></i>
                                <p>فيس بوك</p>
                            </a>
                        </div>
                        <div class="agileinfo_mail_social_rightr">
                            <a href="#" class="w3_contact_twitter" id="w3_contact_twitter" runat="server">
                                <i class="fa fa-twitter" aria-hidden="true"></i>
                                <p>تويتر</p>
                            </a>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                    <div class="agileinfo_mail_social_right">
                        <div class="agileinfo_mail_social_rightl">
                            <a href="#" class="w3_contact_google" id="w3_contact_google" runat="server">
                                <i class="fa fa-google-plus" aria-hidden="true"></i>
                                <p>جوجل بلس</p>
                            </a>
                        </div>
                        <div class="agileinfo_mail_social_rightr">
                            <a href="#" class="w3_contact_instagram" id="w3_contact_instagram" runat="server">
                                <i class="fa fa-instagram" aria-hidden="true"></i>
                                <p>انستجرام</p>
                            </a>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                    <div class="agileinfo_mail_social_right">
                        <div class="agileinfo_mail_social_right_social">
                            <a href="#" class="w3_contact_rss" id="w3_contact_rss" runat="server">
                                <i class="fa fa-rss"></i>
                                <p>ار اس اس</p>
                            </a>
                        </div>
                    </div>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
    </div>
    <div class="agile_map">
        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3950.3905851087434!2d-34.90500565012194!3d-8.061582082752993!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x7ab18d90992e4ab%3A0x8e83c4afabe39a3a!2sSport+Club+Do+Recife!5e0!3m2!1sen!2sin!4v1478684415917" style="border: 0"></iframe>
    </div>--%>
</asp:Content>
