<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="Gallary.aspx.cs" Inherits="HebtnaCms.Gallary" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="p-t-0">
                <div class="parallax-head" style="background-image: url('/assets/images/Sands%20Place%20LowReggs-11.jpg');">
            <h1>PHOTO GALLERY</h1>
        </div>
    </section>

    <section id="article__content" class="p-t-0">
        <div class="container gal-container">
            <asp:ListView ID="lstgallary" runat="server">
                <ItemTemplate>
                    <!--8col-->
         
                    <div class="col-md-8 col-sm-12 co-xs-12 gal-item" style="display:<%# Container.DisplayIndex ==0 ? "block" : "none" %>">
                        <div class="box">
                            <a href="#" data-toggle="modal" data-target="#2">
                                <img src="<%#Eval("Image") %>">
                            </a>
                            <div class="modal fade" id="2" tabindex="-1" role="dialog">
                                <div class="modal-dialog" role="document">
                                    <div class="modal-content">
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                                        <div class="modal-body">
                                            <img src="<%#Eval("Image") %>">
                                        </div>
                                        <div class="col-md-12 description">
                                            <h4><%#Eval("EnTitle") %></h4>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                  
                    <!--4col-->
                    <div class="col-md-4 col-sm-6 co-xs-12 gal-item" style="display:<%# Container.DisplayIndex!=0? "block" : "none" %>">
                        <div class="box">
                            <a href="#" data-toggle="modal" data-target="#2">
                                <img src="<%#Eval("Image") %>">
                            </a>
                            <div class="modal fade" id="2" tabindex="-1" role="dialog">
                                <div class="modal-dialog" role="document">
                                    <div class="modal-content">
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                                        <div class="modal-body">
                                            <img src="<%#Eval("Image") %>">
                                        </div>
                                        <div class="col-md-12 description">
                                            <h4><%#Eval("EnTitle") %></h4>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:ListView>
        </div>
    </section>


</asp:Content>
