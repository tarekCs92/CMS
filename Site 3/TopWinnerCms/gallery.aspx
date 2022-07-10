<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Index.Master" CodeBehind="gallery.aspx.cs" Inherits="TopWinnerCms.gallery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- header_internal_page -->
    <section class="header_internal_page">
        <div class="overlay">
            <h2>الصور</h2>
        </div>
    </section>
    <!--start wrapper-->
    <div class="wrapper padding-70">
        <div class="container">
            <div class="row">
                <div class="col-md-8 ">
                    <div class="text-center">
                        <asp:Label ID="lblresult" CssClass="text-center" runat="server" Text="Label"></asp:Label>
                    </div>
                    <br />
                    <!--start service-->
                    <div class="gallary_page internal_page">
                        <ul class="demo_navigation">
                            <asp:ListView ID="lstGallary" runat="server">
                                <ItemTemplate>
                                    <%--<li class="col-md-4 col-xs-12">
                                        <a href="<%#Eval("Image") %>" data-imagelightbox="e">
                                            <img src="<%#Eval("Image") %>" class="img-responsive img-thumbnail"></a>
                                    </li>--%>
                                    <li class="col-md-4 col-sm-6 col-xs-6 ">
                                        <div class="pic_h">
                                            <img src="<%#Eval("Image") %>" alt="Avatar" class="image_ho img-responsive" style="width: 100%" />
                                            <div class="middle_ho">
                                                <div class="text_ho">
                                                    <a href="#" title="" class="open-modaldata" data-img="<%#Eval("Image") %>" data-id="<%#Eval("TypeId") %>" data-name="<%#Eval("ArTitle") %>" data-link="<%#Eval("Link") %>" data-price="<%#Eval("Icon") %>" style="display: <%# displayImg(Eval("TypeId")) %>>">تحـميل</a>
                                                    <a href="#" title="" class="open-modaldata" data-img="<%#Eval("Image") %>" data-id="<%#Eval("TypeId") %>" data-name="<%#Eval("ArTitle") %>" data-link="<%#Eval("Link") %>" data-price="<%#Eval("Icon") %>" style="display: <%# displayVideo(Eval("TypeId")) %>>">مشـاهدة الفيديو</a>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                </ItemTemplate>
                            </asp:ListView>

                        </ul>
                    </div>
                    <!--end service-->
                </div>
                <div class="col-md-4">
                    <div class="advertisement">
                        <div class="advertis">
                            <h4><i class="fa fa-television" aria-hidden="true"></i>أعلانات</h4>
                        </div>
                        <asp:ListView ID="lstAdvertise" runat="server">
                            <ItemTemplate>
                                <div class="img">
                                    <img src="<%#Eval("Image") %>">
                                </div>
                            </ItemTemplate>
                        </asp:ListView>

                        <div class="social-media">
                            <asp:ListView ID="lstSocial" runat="server">
                                <ItemTemplate>
                                    <a href="<%#Eval("Link") %>">
                                        <div class="fa <%#Eval("Icon") %>"></div>
                                    </a>
                                </ItemTemplate>
                            </asp:ListView>
                        </div>

                    </div>

                </div>
            </div>
        </div>

    </div>
    <div id="" class="modal myModal fade" role="dialog">
        <div class="modal-dialog">
            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">طلب تحميل</h4>
                </div>
                <div class="modal-body">
                    <div class="form-group">
                        <label for="name">الكتاب</label>
                        <input type="text" class="form-control" id="book" runat="server" readonly="readonly">
                    </div>
                    <div class="form-group">
                        <label for="name">السعر</label>
                        <input type="text" class="form-control" id="price" runat="server" readonly="readonly">
                    </div>
                    <div class="form-group">
                        <label for="name">الأسـم</label>
                        <input type="text" class="form-control" runat="server" id="name">
                    </div>
                    <div class="form-group">
                        <label for="email">البريد الإلكترونى</label>
                        <input type="email" class="form-control" runat="server" id="email">
                        <asp:RegularExpressionValidator ValidationGroup="LocationInfoGroup" ID="expEmail" runat="server" ControlToValidate="email" ErrorMessage="valid email address required" ValidationExpression="^([0-9a-zA-Z]([-.\w]*[0-9a-zA-Z])*@([0-9a-zA-Z][-\w]*[0-9a-zA-Z]\.)+[a-zA-Z]{2,9})$"></asp:RegularExpressionValidator>
                    </div>
                    <div class="form-group">
                        <label for="number">رقم الجوال</label>
                        <input type="number" class="form-control" runat="server" id="number">
                        <asp:RequiredFieldValidator ValidationGroup="LocationInfoGroup" ID="RequiredFieldValidator3Ar"
                            runat="server" ControlToValidate="number"
                            ErrorMessage="حقل مطلوب"></asp:RequiredFieldValidator>
                    </div>
                    <button type="submit" validationgroup="LocationInfoGroup" class="btn btn btn-warning" runat="server" onserverclick="Unnamed_ServerClick">ارسال الطلب</button>
                </div>
            </div>
        </div>
    </div>
    <div id="" class="modal myModal_v fade" role="dialog">
        <div class="modal-dialog">
            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title" id="ttlvideo">عنوان الفيديو</h4>
                </div>
                <div class="modal-body">
                    <iframe id="iframx" width="100%" height="290" src="" frameborder="0" gesture="media" allow="encrypted-media" allowfullscreen=""></iframe>
                </div>
            </div>
        </div>
    </div>
    <!--end wrapper-->
    <!-- //bootstrap-pop-up -->
</asp:Content>

 