<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="Details.aspx.cs" Inherits="PersonalityCMS.Details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div class="container">
        <div class="row">
            <div class="cleaner-h3"></div>
            <div class="col-lg-6">
                <img src="" runat="server" id="imgD" class="img-responsive" />
            </div>
            <!--end col-6-->
            <div class="col-lg-6">
                <div id="carousel-example-generic-1" class="carousel slide" data-ride="carousel">

                    <!-- Wrapper for slides -->
                    <div class="carousel-inner" role="listbox">
                        <div class="item active">
                            <asp:ListView ID="ListView2" runat="server">
                                <ItemTemplate>
                                    <li>
                                        <img class="img-responsive" src="<%#Eval("Image") %>" />
                                    </li>
                                </ItemTemplate>
                            </asp:ListView>
                        </div>
                    </div>

                    <!-- Controls -->
                    <a class="left carousel-control" href="#carousel-example-generic-1" role="button" data-slide="prev">
                        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                        <span class="sr-only">Previous</span>
                    </a>
                    <a class="right carousel-control" href="#carousel-example-generic-1" role="button" data-slide="next">
                        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                        <span class="sr-only">Next</span>
                    </a>
                </div>

            </div>
            <!--end col-6-->

            <div class="cleaner-h3"></div>

        </div>
    </div>

    <div class="contant servicces">
        <div class="container">
            <div class="row">

                <div class="cleaner-h3"></div>

                <div class="col-lg-12">


                    <h3 runat="server" id="h3D"></h3>
                    <div class="line"></div>



                    <p runat="server" id="pD">
                    </p>





                </div>
                <!--end col-12-->


                <div class="cleaner-h4"></div>

            </div>
            <!--end row-->
        </div>
        <!--end container-->
    </div>


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
