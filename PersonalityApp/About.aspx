<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="Personality.About" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- /banner -->
    <div class="banner1">
        <div class="wthree_banner1_info">
            <h3><span>نبذة </span>عن الشركة</h3>
        </div>
    </div>
    <!-- //banner -->
    <!-- courses -->
    <div class="team">
        <div class="container">
            <div class="w3_agile_team_grid">
                <div class="w3_agile_team_grid_left">
                    <h3 class="w3l_header w3_agileits_header">لمحة عن الشركة</h3>
                    <p class="sub_para_agile"></p>
                </div>
            </div>
            <div class="agile_team_grids_top">
                <div class="col-md-6 w3ls_banner_bottom_left w3ls_courses_left">
                    <div class="w3ls_courses_left_grids">
                        <div class="w3ls_courses_left_grid">
                            <h3></h3>
                            <p>يقع مقر الشركة الرئيسي في قلب أوروبا Dixion هي شركة تابعة واسم علامتها التجارية الخاصة Stormoff المجموعة، التي تعمل في جميع أنحاء العالم لأكثر من 25 عاما بنجاح في السوق الطبية. كشركة مصنعة الألمانية وشركة دولية تقدم Dixion مجموعة واسعة من الأجهزة الطبية لمختلف التطبيقات مثل الجراحة، العناية المركزة وأمراض النساء وحديثي الولادة. والشركة لديها خبرة طويلة في إدارة المشاريع كل مستوى من مستويات الصعوبة - من مرافق المراكز الطبية الصغيرة لتصميم وبناء وتركيب المستشفيات الكبيرة. نحن توريد المعدات العلامات التجارية الخاصة، فضلا عن إنتاج من الشركات الرائدة في العالم لعملائنا وشركاء في أكثر من 50 بلدا.</p>
                        </div>
                        <div class="w3ls_courses_left_grid">
                            <h3></h3>
                            <p></p>
                        </div>
                        <div class="w3ls_courses_left_grid">
                            <h3></h3>
                            <p></p>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 agileits_courses_right">
                    <img src="images/2.jpg" alt=" " class="img-responsive" />
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
    </div>
    <!-- //courses -->

    <!-- bootstrap-pop-up -->
    <div class="modal video-modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModal">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    Funding
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                </div>
                <section>
                    <div class="modal-body">
                        <img src="images/10.jpg" alt=" " class="img-responsive" />
                        <p>
                            Ut enim ad minima veniam, quis nostrum 
							exercitationem ullam corporis suscipit laboriosam, 
							nisi ut aliquid ex ea commodi consequatur? Quis autem 
							vel eum iure reprehenderit qui in ea voluptate velit 
							esse quam nihil molestiae consequatur, vel illum qui 
							dolorem eum fugiat quo voluptas nulla pariatur.
							<i>" Quis autem vel eum iure reprehenderit qui in ea voluptate velit 
								esse quam nihil molestiae consequatur.</i>
                        </p>
                    </div>
                </section>
            </div>
        </div>
    </div>
    <!-- //bootstrap-pop-up -->

    <!-- stats-bottom-banner -->
    <div class="stats-bottom-banner">
        <div class="container">
            <h3>14 عاما من وجودها فى السوق</h3>
            <p>
                في السنوات ال 14 الماضية فاز Dixion كلاعب سوق نشط وموثوق بها مصنعي التكنولوجيا الطبية في شعبية.<br />
                Dixion تبيع منتجاتها في أكثر من 54 بلدا. أظهرت مبيعات تحت اسم العلامة التجارية Dixion النمو المستمر في مسيرته.
            </p>
        </div>
    </div>
    <!-- //stats-bottom-banner -->
    <!-- bootstrap-pop-up -->
    <div class="modal video-modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModal">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                </div>
                <div class="signin-form profile">

                    <div class="modal-body">
                        <img src="images/g1.jpg" alt=" " class="img-responsive" />
                        <p>
                            Ut enim ad minima veniam, quis nostrum 
							exercitationem ullam corporis suscipit laboriosam, 
							nisi ut aliquid ex ea commodi consequatur? Quis autem 
							vel eum iure reprehenderit qui in ea voluptate velit 
							esse quam nihil molestiae consequatur, vel illum qui 
							dolorem eum fugiat quo voluptas nulla pariatur.
							<i>" Quis autem vel eum iure reprehenderit qui in ea voluptate velit 
								esse quam nihil molestiae consequatur.</i>
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- //bootstrap-pop-up -->
</asp:Content>
