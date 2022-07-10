<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="Gallary.aspx.cs" Inherits="PersonalityCMS.Gallary" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="contact-wthree jarallax" id="contact">
        <div class="container">
            <h3 class="text-center"><font color="#fea523">معرض الصور</font></h3>
        </div>
    </section>

    <section class="portfolio-agileinfo" id="portfolio">
        <h3 class="text-center">جاليري شركة المجد</h3>
        <div class="gallery-grids">
            <div class="bs-example bs-example-tabs" role="tabpanel" data-example-id="togglable-tabs">
                <ul id="myTab" class="nav nav-tabs" role="tablist" data-aos="zoom-in">
                </ul>
                <div class="clearfix"></div>
            </div>
            <div class="teach-tab">
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
                <div class="clearfix"></div>
            </div>
        </div>
    </section>
</asp:Content>
