<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="Personality.Products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="slide-project">
        <div class="container">
            <div class="row">

                <div class="col-lg-12 text-center">

                    <h2 class="head">مشروعتنا</h2>
                    <div class="line-white center-block"></div>
                </div>

            </div>
        </div>
    </div>
    <!--end slider-->

    <div class="contant">
        <div class="container">
            <div class="row">
                <div class="cleaner-h3"></div>
                <asp:ListView ID="ListView1" runat="server">
                    <ItemTemplate>
                        <div class="col-lg-6">
                            <div class="block-1">
                                <a href="/Details.aspx?id=<%#Eval("Id") %>">
                                    <img src="<%#Eval("Image") %>" class="img-responsive" />
                                    <h4><%#Eval("ArTitle") %></h4>
                                    <p>
                                        <%#Eval("ArDescription") %>
                                    </p>
                                </a>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:ListView>
                <!--end col-6-->
                <!--end col-6-->
                <div class="cleaner-h4"></div>
            </div>
            <!--end row-->
        </div>
        <!--end container-->
    </div>
    <!--end contant-->





    <div class="our-clients">
        <div class="container">
            <div class="row">

                <div class="cleaner-h4"></div>
                <div class="cleaner-h4"></div>

                <div class="col-lg-12">
                    <h3>عملائنا</h3>
                    <div class="line center-block"></div>
                </div>
                <!--end col-12-->

                <div class="col-lg-12">
                    <div id="logos">
                        <ul>
                            <asp:ListView ID="lstjobs" runat="server">
                                <ItemTemplate>
                                    <li>
                                        <img class="img-responsive" src="<%#Eval("Image") %>" />
                                    </li>
                                </ItemTemplate>
                            </asp:ListView>
                        </ul>
                    </div>
                </div>
                <!--end col-12-->

                <div class="cleaner-h4"></div>

            </div>
            <!--end row-->
        </div>
        <!--end container-->
    </div>
    <!--end our-clients-->

</asp:Content>
