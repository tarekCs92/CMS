<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Personality.Index1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section id="home" class="home">
        <div class="overlay">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12 ">
                        <div class="main_home_slider">
                            <asp:ListView ID="lstSlider" runat="server">
                                <ItemTemplate>
                                    <div class="single_home_slider">
                                        <div class="main_home wow fadeInUp" data-wow-duration="700ms">
                                            <h1><%#Eval("EnTitle") %></h1>
                                            <div class="subtitle"><%#Eval("EnDescription") %></div>
                                            <div class="home_btn">
                                                <%--<a href="" class="btn btn-primary slide-btn">MORE</a>--%>
                                            </div>
                                        </div>
                                    </div>
                                </ItemTemplate>
                            </asp:ListView>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section id="article__content" class="article__content">
        <div class="zigzag"></div>
        <div class="container">
            <div class="row">
                <div class="col-sm-12 col-md-6">
                    <h1 class="headline__primary" id="founderText" runat="server"></h1>
                    <div class="separator--flower">✻</div>
                    <p id="founderDesc" runat="server"></p>
                    <center>
                            <a class="find-out" href="/Founder.aspx" id="foundLink" runat="server">Find Out!</a>
                    </center>
                </div>
                <div class="col-sm-6 col-md-3">
                    <img src="" id="founderImg1" runat="server" width="600" height="800" class="img img-responsive p-b-16" />
                </div>
                <div class="col-sm-6 col-md-3">
                    <img src="" id="founderIcon" runat="server" width="600" height="800" class="img img-responsive p-b-16" />
                </div>
            </div>
        </div>
    </section>

    <section>
        <div class="zigzag-down"></div>
        <div class="parallax" id="greatImg" runat="server" style="background-image: url('assets/images/s2.jpg');">
            <h1 id="greatHeader" runat="server"></h1>
        </div>
        <div class="zigzag-top"></div>
    </section>

    <section id="article__content" class="article__content">
        <div class="container">
            <div class="row">
                <div class="col-sm-12 col-md-6">
                    <img id="menuImg" style="width:600px;height:300px;" width="600" height="300"  runat="server" src="" class="img img-responsive p-b-16" />
                </div>
                <div class="col-sm-12 col-md-6">
                    <h1 class="headline__primary" id="menuheader" runat="server">Menu</h1>
                    <div class="separator--flower">✻</div>
                    <p id="menudesc"  runat="server">We offer a wide range of healthier and convenient alternatives for fast food, ranging from salads to wraps, from breakfast options to mains, from protein shakes to mouthwatering desserts.</p>
                    <center>
                            <a class="find-out" href="/Menu.aspx" id="menuLink" runat="server">Here’s to the foodie in you!</a>
                    </center>
                </div>
            </div>
        </div>
    </section>

    <section>
        <div class="zigzag-down"></div>
        <div class="parallax" id="consImg" runat="server" style="background-image: url('assets/images/s4.jpg');">
            <h1 id="condHeader" runat="server">Consciously Evolving with Our Customers</h1>
        </div>
        <div class="zigzag-top"></div>
    </section>

    <section id="article__content" class="article__content">
        <div class="container">
            <div class="row">
                <div class="col-sm-12 col-md-6">
                    <h1 class="headline__primary" id="weheader" runat="server">Culinary Delight</h1>
                    <div class="separator--flower">✻</div>
                    <p id="wedesc" runat="server">We are growing fast to meet the needs of a majority of health conscious, trendsetting individuals, and are expanding to offer greater convenience to our customers.</p>
                    <center>
                            <a class="find-out" href="/Contact.aspx" id="weLink" runat="server">Visit Our Restaurants!</a>
                     </center>
                </div>
                <div class="col-sm-6 col-md-3">
                    <img src="/assets/images/s52.jpg" width="600" height="800" id="weimg" runat="server" class="img img-responsive p-b-16" />
                </div>
                <div class="col-sm-6 col-md-3">
                    <img src="/assets/images/s51.jpg" width="600" height="800" id="weicon" runat="server" class="img img-responsive p-b-16" />
                </div>
            </div>
        </div>
    </section>










</asp:Content>
