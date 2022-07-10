<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="Menu.aspx.cs" Inherits="HebtnaCms.Menu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="p-t-0">
        <div class="parallax-head" style="background-image: url('assets/images/menu-container.jpg');">
            <h1>The Menu</h1>
        </div>
    </section>
    <section id="article__content" class="p-t-0">
        <div class="container">
            <div class="row">
                            <asp:ListView ID="ListView2" runat="server">
                <ItemTemplate>
                   
                       <div class="col-sm-12 col-md-6">
                    <p>
                        <%#Eval("EnDescription") %>
                    </p>
                </div>

                </ItemTemplate>
            </asp:ListView>
            </div>
            <br>
            <br>
            <div class="separator--flower">✻</div>
        </div>
    </section>
    <asp:ListView ID="ListView1" runat="server">
        <ItemTemplate>
            <section class="p-t-0">
                <div class="parallax" style="background-image: url('<%#Eval("Image") %>')">
                    <h1><%#Eval("EnTitle") %></h1>
                </div>
                <div class="container">
                    <div class="row">
                        <div class="col-sm-12 col-xs-12">
                            <h3><%#Eval("EnDescription") %></h3>
                            <img src="<%#Eval("Icon") %>" class="img img-responsive menu-image">
                        </div>
                    </div>
                </div>
            </section>
        </ItemTemplate>
    </asp:ListView>
</asp:Content>
