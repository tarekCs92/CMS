<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Personality.Index1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="slider">
        <div class="container">
            <div class="row">
                <div class="col-md-8 col-sm-8 col-xs-8">
                    <div id="Carousel" class="carousel slide wow fadeInUp " style="overflow: hidden">
                        <ol class="carousel-indicators hidden-sm hidden-xs">
                            <asp:ListView ID="ListView1" runat="server">
                                <ItemTemplate>
                                    <li data-target="#Carousel" data-slide-to="<%# (Container.DataItemIndex )== 0? Container.DataItemIndex : Container.DataItemIndex %>" class="<%# (Container.DataItemIndex )== 0? "active" : "" %>"></li>
                                </ItemTemplate>
                            </asp:ListView>
                        </ol>
                        <!-- Carousel items -->
                        <div class="carousel-inner">
                            <asp:ListView ID="lstSlider" runat="server">
                                <ItemTemplate>
                                    <div class="item  <%# (Container.DataItemIndex )== 0? "active" : "" %>">
                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="slider-text">
                                                    <h3><%#Eval("EnTitle") %> </h3>
                                                    <p><%#Eval("EnDescription") %></p>
                                                    <ul>
                                                        <li>
                                                            <%--<a href="#" class="btn btn-default order">ORDER </a>--%>
                                                        </li>
                                                        <li>
                                                            <a href="#" class="btn btn-default more">MORE </a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                        <!--.row-->
                                    </div>
                                </ItemTemplate>
                            </asp:ListView>
                            <!--.item-->
                        </div>
                        <!--.carousel-inner-->

                    </div>
                    <!--.Carousel-->
                </div>
                <div class="col-md-4 col-sm-4 col-xs-4">
                    <img src="/img/mainBg.png" class="mainBg img-responsive wow animated fadeInUp">
                </div>
            </div>
        </div>
    </div>
    <div class="features">
        <div class="container">
            <div class="row">
                <div class="col-md-6 col-sm-5 col-xs-12 wow fadeInUp">
                    <div class="section-title">
                        <h3 runat="server" id="founderText">OUR FEATURES </h3>
                        <p runat="server" id="founderDesc">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam lacinia enim eu velit condimentum auctor. Nullam mi dui, tincidunt et sapien quis, consectetur rutrum ante.</p>
                    </div>
                </div>
                <div class="col-md-5 col-sm-7 col-md-offset-1 col-xs-12 wow fadeInUp ">
                    <div class="features-icon">
                        <img class="devider hidden-xs " src="img/featuresDevider.png">
                        <div class="row">
                            <div class="col-md-6 col-sm-6">
                                <div class="featureContent">
                                    <img src="img/f1.png">
                                    <h4>24 Hr SUPPORT  </h4>
                                </div>
                            </div>
                            <div class="col-md-6 col-sm-6">
                                <div class="featureContent">
                                    <img src="img/currency--1-.png">
                                    <h4>MONEY BACK  </h4>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6 col-sm-6">
                                <div class="featureContent">
                                    <img src="img/gift.png">
                                    <h4>SURPRICE GIFT  </h4>
                                </div>
                            </div>
                            <div class="col-md-6 col-sm-6">
                                <div class="featureContent">
                                    <img src="img/checked.png">
                                    <h4>UNIQUE DESIGN  </h4>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
