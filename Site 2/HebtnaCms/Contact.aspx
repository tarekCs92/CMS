<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Personality.Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section class="p-t-0">
        <div class="parallax-head" style="background-image: url('assets/images/contact.jpg');">
            <h1>CONTACT US</h1>
        </div>
    </section>

    <section id="article__content" class="p-t-0">
        <div class="container">
            <div class="row">
                <div class="col-sm-12 col-md-6" id="contactText" runat="server">
                    <p>Don’t waste any more time, simply drop us a line! There’s no better time than right now to begin your healthy transformation.</p>
                    <h3 class="p-t-16">Main Restaurant & Office</h3>
                    <p>
                        61, Thimbirigasyaya Road,<br>
                        Colombo 05, Sri Lanka.<br>
                        +94 11 2 580 980<br>
                        info@caloriecounter.lk<br>
                        Weekdays 7:00 AM to 10:00 PM<br>
                        Saturday,Sunday &amp; Public Holidays 8:00 AM to 10:00 PM
					
                    </p>
                    <h3 class="p-t-16">BATTARAMULLA OUTLET</h3>
                    <p>
                        No 410, Pannipitiya Road, Pelawatta,<br>
                        Battaramulla, Sri Lanka.<br>
                        +94 11 2 78 54 54<br>
                        info@caloriecounter.lk<br>
                        Weekdays 11:00 AM to 10:00 PM<br>
                        Saturday,Sunday &amp; Public Holidays 8:00 AM to 10:00 PM
					
                    </p>

                </div>
                <div class="col-sm-12 col-md-6 p-t-16">

                    <!-- Form start -->
                    <div class="row">
                        <div class="p-l-16 col-md-6">
                            <div class="form-group">
                                <input id="fname" runat="server" name="fname" type="text" placeholder="First Name" class="form-control input-md">
                            </div>
                        </div>
                        <div class="p-r-16  col-md-6">
                            <div class="form-group">
                                <input id="lname" runat="server" name="lname" type="text" placeholder="Last Name" class="form-control input-md">
                            </div>
                        </div>
                        <div class="col-sm-12 col-md-12">
                            <div class="form-group">
                                <input id="email" runat="server" name="email" type="email" placeholder="Email" class="form-control input-md">
                            </div>
                            <div>
                                <asp:RegularExpressionValidator ID="expEmail" runat="server" ControlToValidate="email" ErrorMessage="valid email address required" ValidationExpression="^([0-9a-zA-Z]([-.\w]*[0-9a-zA-Z])*@([0-9a-zA-Z][-\w]*[0-9a-zA-Z]\.)+[a-zA-Z]{2,9})$"></asp:RegularExpressionValidator>
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="form-group">
                                <input id="phone" runat="server" name="lname" type="text" placeholder="Telephone Number" class="form-control input-md">
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="form-group">
                                <textarea id="msg" runat="server" name="msg" placeholder="Message" class="form-control input-md"></textarea>
                            </div>
                            <div>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3"
                                    runat="server" ControlToValidate="msg"
                                    ErrorMessage="حقل مطلوب"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <div class="col-md-12 no-margin">
                            <div class="form-group">
                                <a  href="#" runat="server" onserverclick="contactbtn_ServerClick" class="btn btn-submit">Send Message</a>
                            </div>
                        <br />
                            <asp:Label runat="server" id="lblsuccess" ></asp:Label>
                        </div>
                    </div>

                </div>

                <div class="col-sm-12 col-md-6">
                </div>
            </div>
        </div>
    </section>


</asp:Content>
