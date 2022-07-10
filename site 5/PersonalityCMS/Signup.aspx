<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="PersonalityCMS.Signup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- contact section -->
    <section class="contact-wthree jarallax" id="contact">
        <div class="container">
            <h3 class="text-center"><font color="#fea523">التحق الآن</font></h3>

            <div class="col-lg-10 col-md-10 col-sm-10" data-aos="zoom-in" dir="rtl">
                <h4>املاء الاستمارة للالتحاق</h4>
                <p class="contact-agile">سنوافيكم بالجديد </p>
            </div>
            <div class="col-lg-2 col-md-2 col-sm-2" data-aos="zoom-in" dir="rtl">
            </div>
            <div class="col-lg-12" data-aos="zoom-in" dir="rtl">
                >
			
            </div>
            <div class="clearfix"></div>
            <form action="#" method="post" name="sentMessage" id="contactForm" novalidate>
                <div class="col-lg-4 col-md-4 col-sm-4" data-aos="zoom-in" dir="rtl">
                    <div class="control-group form-group">
                        <div class="controls">
                            <label>البريد الالكترونى</label>
                            <input type="text" class="form-control" id="email" runat="server" required>
                            <asp:RegularExpressionValidator ForeColor="White" ValidationGroup="v1" ID="expEmail" runat="server" ControlToValidate="email" ErrorMessage="valid email address required" ValidationExpression="^([0-9a-zA-Z]([-.\w]*[0-9a-zA-Z])*@([0-9a-zA-Z][-\w]*[0-9a-zA-Z]\.)+[a-zA-Z]{2,9})$"></asp:RegularExpressionValidator>
                            <p class="help-block"></p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-4" data-aos="zoom-in" dir="rtl">
                    <div class="control-group form-group">
                        <div class="controls">
                            <label>رقم الهاتف</label>
                            <input type="text"  runat="server" class="form-control" id="phone" required>
                            <asp:RequiredFieldValidator ForeColor="White" ValidationGroup="v1" ID="rfvcandidate"
                                runat="server" ControlToValidate="phone"
                                ErrorMessage="حقل مطلوب"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-4" data-aos="zoom-in" dir="rtl">
                    <div class="control-group form-group">
                        <div class="controls">
                            <label>الاسم رباعي</label>
                            <input type="text" id="name" runat="server" class="form-control" required data-validation-required-message="">
                            <asp:RequiredFieldValidator ForeColor="White" ValidationGroup="v1" ID="RequiredFieldValidator1"
                                runat="server" ControlToValidate="name"
                                ErrorMessage="حقل مطلوب"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-4" data-aos="zoom-in" dir="rtl">
                    <div class="control-group form-group">
                        <div class="controls">
                            <label>التخصص</label>
                            <input type="text" id="spec" runat="server" class="form-control" required data-validation-required-message="">
                            <asp:RequiredFieldValidator ForeColor="White" ValidationGroup="v1" ID="RequiredFieldValidator2"
                                runat="server" ControlToValidate="spec"
                                ErrorMessage="حقل مطلوب"></asp:RequiredFieldValidator>
                            <%--                            <select type="select" class="form-control" id="select">
                                <option value="volvo">التخصص1</option>
                                <option value="volvo">التخصص2</option>
                                <option value="volvo">التخصص3</option>
                            </select>--%>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-4" data-aos="zoom-in" dir="rtl">
                    <div class="controls">
                        <label>الرقم القومي</label>
                        <input type="text" id="myid" runat="server" class="form-control" required data-validation-required-message="">
                        <asp:RequiredFieldValidator ForeColor="White" ValidationGroup="v1" ID="RequiredFieldValidator3"
                            runat="server" ControlToValidate="myid"
                            ErrorMessage="حقل مطلوب"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-4" data-aos="zoom-in" dir="rtl">
                    <div class="controls">
                        <label>المجموع الكلي</label>
                        <input type="text" id="total" runat="server" class="form-control" required data-validation-required-message="">
                        <asp:RequiredFieldValidator ForeColor="White" ValidationGroup="v1" ID="RequiredFieldValidator4"
                            runat="server" ControlToValidate="total" 
                            ErrorMessage="حقل مطلوب"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="clearfix"></div>
                <div class="col-lg-12" data-aos="zoom-in" dir="rtl">
                    <div class="control-group form-group">
                        <div class="controls">
                            <label>ملاحظات:</label>
                            <textarea rows="10" id="notes" runat="server" cols="100" class="form-control"  required data-validation-required-message="Please enter your message" maxlength="999" style="resize: none"></textarea>
                        </div>
                    </div>
                    <div id="success"></div>
                    <!-- For success/fail messages -->
                </div>
                <div class="col-lg-12" data-aos="zoom-in" dir="rtl">
                    <button type="submit" validationgroup="v1" class="btn btn-primary" runat="server" onserverclick="Unnamed_ServerClick">ارسل طلب الالتحاق</button>
                </div>
                <div class="clearfix"></div>
                <asp:Label ID="lblResult" runat="server" Text="Label"></asp:Label>
            </form>
        </div>
    </section>
    <!-- /contact section -->

</asp:Content>
