<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="Blog.aspx.cs" Inherits="HebtnaCms.Blog" %>

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
                <div class="col-md-8">
                    <asp:ListView ID="ListView2" runat="server">
                        <ItemTemplate>
                            <!-- Blog Post -->
                            <div class="card mb-4">
                                <img class="card-img-top" style="height: 360px;" src="<%#Eval("Image") %>" alt="Card image cap" width="100%">
                                <div class="card-body">
                                    <h3 class="card-title no-padding"><%#Eval("EnTitle") %></h3>
                                    <p class="card-text"><%#Eval("EnDescription") %></p>
                                    <a href="/blog-details.aspx?id=<%#Eval("Id") %>" class="">Read More >></a>
                                </div>
                            </div>
                        </ItemTemplate>
                    </asp:ListView>
                    <!-- Pagination -->
                    <asp:DataPager ID="DataPagerProducts" runat="server" PagedControlID="ListView2"
                        PageSize="3" OnPreRender="DataPagerProducts_PreRender">
                        <Fields>
                            <asp:NextPreviousPagerField ShowFirstPageButton="False" ShowNextPageButton="False" />
                            <asp:NumericPagerField />
                            <asp:NextPreviousPagerField ShowLastPageButton="False" ShowPreviousPageButton="False" />
                        </Fields>
                    </asp:DataPager>
                    <%--<ul class="pagination justify-content-center mb-4">
                        <li class="page-item">
                            <a class="page-link" href="#">← Older</a>
                        </li>
                        <li class="page-item disabled">
                            <a class="page-link" href="#">Newer →</a>
                        </li>
                    </ul>--%>
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
