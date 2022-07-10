<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="Clients.aspx.cs" Inherits="Personality.Carrier" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="slide-clients">
        <div class="container">
            <div class="row">

                <div class="col-lg-12 text-center">
                    <h2 class="head">عملاء الشركة</h2>
                    <div class="line-white center-block"></div>
                </div>

            </div>
        </div>
    </div>
    <!--end slider-->
    <div class="contant clients">
        <div class="container">
            <div class="row">
                <div class="cleaner-h3"></div>
                <div class="cleaner-h3"></div>
                <asp:ListView ID="lstjobs" runat="server">
                    <ItemTemplate>
                        <div class="col-lg-3 col-xs-12">
                            <img src="<%#Eval("Image") %>" class="img-responsive" />
                            <p><%#Eval("ArTitle") %></p>
                        </div>
                    </ItemTemplate>
                </asp:ListView>
            </div>
            <!--end row-->
        </div>
        <!--end container-->
    </div>
    <!--end contant-->
</asp:Content>
