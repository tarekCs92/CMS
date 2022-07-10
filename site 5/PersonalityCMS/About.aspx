<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="Personality.About" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="contact-wthree jarallax" id="contact">
        <div class="container">
            <h3 class="text-center"><font color="#fea523">نبذة عنا</font></h3>
        </div>
    </section>
    <section class="about-agileits" id="about">
        <div class="container">
            <div class="col-lg-6 col-md-6 col-sm-12 about-w3ls1" data-aos="zoom-in">
                <div class="hover01 column">
                    <div>
                        <figure>
                            <img src="/images/about-img1.png" alt="" class="img-responsive">
                        </figure>
                    </div>
                </div>
            </div>
            <div class="col-lg-6 col-md-6 col-sm-12 about-w3ls2" data-aos="zoom-in">
                <div class="about-w3l" dir="rtl">
                    <h3><span class="fa fa-diamond" aria-hidden="true"></span><span runat="server" id="htitle"></span></h3>

                    <p>
                        <font size="3" color="#000">
                            <span runat="server" id="ptext"></span>
				</font>
                    </p>
                    <h3><span class="fa fa-diamond" aria-hidden="true"></span><span runat="server" id="htitle2"></span></h3>
                    <p><font size="3" color="#000"><span runat="server" id="ptext2"></span></font></p>
                    <h3><span class="fa fa-diamond" aria-hidden="true"></span><span runat="server" id="htitle3"></span></h3>
                    <p><font size="3" color="#000"><span runat="server" id="ptext3"></span></font></p>
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
                            <img src="/images/about-img.jpg" alt="" class="img-responsive">
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
