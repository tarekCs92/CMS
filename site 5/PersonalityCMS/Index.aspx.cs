using EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Personality
{
    public partial class Index1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CallDefaultLang();
                LoadData();
            }
        }
        protected void CallDefaultLang()
        {
            if (Session["lang"] == "" || Session["lang"] == null)
            {
                Session["lang"] = "ar";
                //Label lblMasterLAng = (Label)Master.FindControl("lnklang");
                //lblMasterLAng.Text = "English";
            }
            else
            {
                if (Session["lang"] == "en")
                {
                    Label lblMasterLAng = (Label)Master.FindControl("lnklang");
                    lblMasterLAng.Text = "عربي";
                }
                else
                {
                    //Label lblMasterLAng = (Label)Master.FindControl("lnklang");
                    //lblMasterLAng.Text = "English";

                }
            }
            // ChangeLang();
        }
        protected void contactbtn_ServerClick(object sender, EventArgs e)
        {
            using (var db = new PersonalityDBEntities())
            {
                try
                {
                    string fromAddress = email.Value;
                    string toAddress = db.ContactsTBs.FirstOrDefault(x => x.SectionId == 1).ArTitle;
                    //string subject = "سبب اخر";
                    string body = "From: " + name.Value + "\n";
                    body += "Email: " + email.Value + "\n";
                    body += "Phone: " + phone.Value + "\n";
                    body += "Message: \n" + message.InnerHtml + "\n";
                    // smtp settings

                    SmtpClient client = new SmtpClient();
                    client.UseDefaultCredentials = false;
                    client.DeliveryMethod = SmtpDeliveryMethod.Network;
                    client.EnableSsl = true;
                    client.Host = "smtp.gmail.com";
                    client.Port = 587;
                    System.Net.NetworkCredential credentials =
                    new System.Net.NetworkCredential("sowadenasmtp@gmail.com", "123456789Ss");
                    client.UseDefaultCredentials = false;
                    client.Credentials = credentials;
                    MailMessage msg = new MailMessage();
                    msg.BodyEncoding = Encoding.UTF8;
                    msg.SubjectEncoding = Encoding.UTF8;
                    msg.From = new MailAddress("sowadenasmtp@gmail.com", "موقع المجد");
                    msg.To.Add(new MailAddress(toAddress));
                    msg.Subject = "موقع المجد";
                    msg.IsBodyHtml = true;
                    msg.Body = body;
                    try
                    {
                        client.Send(msg);
                    }
                    catch (Exception ex)
                    {
                    }
                    message.InnerHtml = "";
                    //subject.Value = "";
                    name.Value = "";
                    email.Value = "";
                    lblResult.Text = "تم الارسال";
                }
                catch (Exception)
                {

                    lblResult.Text = "الرجاء ملئ جميع الحقول";
                }
            }
        }
        public void LoadData()
        {
            using (var db = new PersonalityDBEntities())
            {
                if (Session["lang"] == "ar")
                {

                    var collection = db.AboutTBs.Where(x => x.SectionId == 1);
                    int y = 1;
                    foreach (var item in collection)
                    {
                        if (y == 1)
                        {
                            htitle.InnerHtml = item.ArTitle;
                            ptext.InnerHtml = item.ArDescription;
                            ptextSpecial.InnerHtml = item.ArDescription;
                            ptextSpecial2.InnerHtml = item.ArDescription;
                        }
                        if (y == 2)
                        {
                            htitle2.InnerHtml = item.ArTitle;
                            ptext2.InnerHtml = item.ArDescription;
                        }
                        if (y == 3)
                        {
                            htitle3.InnerHtml = item.ArTitle;
                            ptext3.InnerHtml = item.ArDescription;
                        }
                        if (y == 4)
                        {
                            htitle4.InnerHtml = item.ArTitle;
                            ptext4.InnerHtml = item.ArDescription;
                        }
                        if (y == 5)
                        {
                            htitle5.InnerHtml = item.ArTitle;
                            ptext5.InnerHtml = item.ArDescription;
                        }
                        y++;
                    }
                    var data = db.LayoutTBs.Where(i => i.SectionId == 7).ToList();
                    int z = 1;
                    foreach (var item in data)
                    {
                        if (z == 1)
                        {
                            lblPhone.InnerHtml = item.ArTitle;
                        }
                        if (z == 2)
                        {
                            lblEmail.InnerHtml = item.ArTitle;
                        }
                        if (z == 3)
                        {
                            lblAddress.InnerHtml = item.ArTitle;
                        }
                        z++;
                    }
                    List<EF.LayoutTB> products = db.LayoutTBs.Where(i => i.SectionId >= 1 && i.SectionId <= 5).ToList();
                    lstIcons.DataSource = products;
                    lstIcons.DataBind();

                    //List<EF.IndexTB> lastest = db.IndexTBs.Where(x => x.SectionId == 2).ToList();
                    //lstlstest.DataSource = lastest;
                    //lstlstest.DataBind();

                    var datax = db.NewsTBs.OrderByDescending(x=> x.Id).Skip(0).Take(8).ToList();
                    lstgallary.DataSource = datax;
                    lstgallary.DataBind();


                }
                else
                {
                }

            }
        }
    }

}