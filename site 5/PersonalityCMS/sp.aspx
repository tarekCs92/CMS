<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="sp.aspx.cs" Inherits="PersonalityCMS.sp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="contact-wthree jarallax" id="contact">
        <div class="container">
            <h3 class="text-center"><font color="#fea523"><span id="spcNames2" runat="server"></span></font></h3>
        </div>
    </section>
    <section class="about-agileits" id="about">
        <div class="container">
            <div class="col-lg-6 col-md-6 col-sm-12 about-w3ls1" data-aos="zoom-in">
                <div class="hover01 column">
                    <div>
                        <figure>
                            <img src="/images/about-img2.jpg" alt="" class="img-responsive">
                        </figure>
                    </div>
                </div>
            </div>
            <div class="col-lg-6 col-md-6 col-sm-12 about-w3ls2" data-aos="zoom-in">
                <div class="about-w3l" dir="rtl">
                    <h3><span class="fa fa-diamond" aria-hidden="true"></span><span id="spcNames" runat="server"></span></h3>
                    <asp:ListView ID="lstSpec" runat="server">
                        <ItemTemplate>
                                <p>
                                    <font size="3" color="#000"><%#Eval("ArTitle") %>
				                    </font>
                                </p>
                        </ItemTemplate>
                    </asp:ListView>
                    <ul class="about-links">
                        <li><a href="signup.aspx" class="about-link1">التحق الآن</a></li>
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
</asp:Content>
