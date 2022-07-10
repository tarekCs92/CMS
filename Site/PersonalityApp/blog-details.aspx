<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="blog-details.aspx.cs" Inherits="CaloriCms.blog_details" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <section class="p-t-0">
        <div class="parallax-head" style="background-image: url('/assets/images/blog.jpg');">
            <h1 id="blogEn1" runat="server">Blog</h1>
            <h1 id="blogAr1" runat="server" style="display:none">مدونه</h1>
        </div>
    </section>
        <section id="article__content" class="p-t-0">
            <div class="container">

                <div class="row">

                    <!-- Blog Entries Column -->
                    <div class="col-lg-8">

                        <!-- Title -->
                        <h3 class="mt-4" id="headDetails" runat="server">Post Title</h3>
                         <h3 class="mt-4" id="headDetailsAr" runat="server" style="display:none">عنوان الموضوع</h3>
                        <hr>
                        <!-- Date/Time -->
                        <p id="dateDetails" runat="server"></p>
                        <hr>
                        <!-- Preview Image -->
                        <img id="imgDetails" runat="server" class="img-fluid rounded" src="assets/images/menu-3.jpg" alt="" style="width:100%">
                        <hr>
                        <!-- Post Content -->
                        <div id="divDetails" runat="server"></div>

                        <!-- Comments Form -->
                        
                    </div>
                        

                    <!-- Sidebar Widgets Column -->
                    <div class="col-md-4">


                      <!-- Categories Widget -->
                    <div class="card my-4" id="menudetcat" runat="server">
                        <h5 id="categorisEn" runat="server" class="card-header">Categories</h5>
                        <h5 id="categorisAr" style="display:none" runat="server" class="card-header">الاقسام</h5>
                        <div class="card-body">
                            <div class="row">
                                <div class="col-lg-6">
                                    <ul class="list-unstyled mb-0">
                                        <asp:ListView ID="ListView1" runat="server">
                                            <ItemTemplate>

                                                <li>
                                                    <a href="#"><%#Eval("EnTitle") %></a>
                                                </li>

                                            </ItemTemplate>
                                        </asp:ListView>
                                   <%--     ////////////////////////////--%>
                                        <asp:ListView ID="ListView1Ar" runat="server" style="text-align:right">
                                            <ItemTemplate>

                                                <li>
                                                    <a href="#"><%#Eval("ArTitle") %></a>
                                                </li>

                                            </ItemTemplate>
                                        </asp:ListView>

                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Side Widget -->
                    <div class="card my-4" id="sidewidgetdetEn" runat="server">
                        <h5 class="card-header" runat="server" id="blogHeader">Side Widget</h5>
                        <h5 class="card-header" runat="server" id="blogHeaderAr" style="display:none">القطعة الجانبية</h5>
                        <div class="card-body" runat="server" id="blogDesc">
                            You can put anything you want inside of these side widgets. They are easy to use, and feature the new Bootstrap 4 card containers!
                       
                        </div>
                         <div class="card-body" runat="server" id="blogDescAr" style="display:none">
يمكنك وضع أي شيء تريد داخل هذه الحاجيات الجانب. فهي سهلة الاستخدام، وتتميز حاويات بطاقة بوتستراب 4 الجديدة !                       
                        </div>
                    </div>

                    </div>

                </div>
                <!-- /.row -->

                </div>
        </section>

</asp:Content>
