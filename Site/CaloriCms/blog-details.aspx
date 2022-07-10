<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="blog-details.aspx.cs" Inherits="CaloriCms.blog_details" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <section class="p-t-0">
        <div class="parallax-head" style="background-image: url('/assets/images/blog.jpg');">
            <h1>Blog</h1>
        </div>
    </section>
        <section id="article__content" class="p-t-0">
            <div class="container">

                <div class="row">

                    <!-- Blog Entries Column -->
                    <div class="col-lg-8">

                        <!-- Title -->
                        <h3 class="mt-4" id="headDetails" runat="server">Post Title</h3>
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
                    <div class="card my-4">
                        <h5 class="card-header">Categories</h5>
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
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Side Widget -->
                    <div class="card my-4">
                        <h5 class="card-header" runat="server" id="blogHeader">Side Widget</h5>
                        <div class="card-body" runat="server" id="blogDesc">
                            You can put anything you want inside of these side widgets. They are easy to use, and feature the new Bootstrap 4 card containers!
                       
                        </div>
                    </div>

                    </div>

                </div>
                <!-- /.row -->

                </div>
        </section>

</asp:Content>
