using EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PersonalityCMS
{
    public partial class Signup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Unnamed_ServerClick(object sender, EventArgs e)
        {
            using (var db = new PersonalityDBEntities())
            {
                int id = int.Parse(Session["id"].ToString());
                var uni = db.UnivTBs.Find(id);
                try
                {
                    string fromAddress = email.Value;
                    string toAddress = db.ContactsTBs.FirstOrDefault(x => x.SectionId == 1).ArTitle;
                    //string subject = "سبب اخر";
                    string body = "From: " + name.Value + "<br />";
                    body += "Email: " + email.Value + "<br />";
                    body += "Phone: " + phone.Value + "<br />";
                    body += "Total: " + total.Value + "<br />";
                    body += "Specialization: " + spec.Value + "<br />";
                    body += "Id: " + myid.Value + "<br />";
                    body += "University: " + uni.ArTitle + "<br />";
                    
                    body += "Notes: <br />" + notes.InnerHtml + "<br />";
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
                    msg.Subject = "طلب التحاق";
                    msg.IsBodyHtml = true;
                    msg.Body = body;
                    try
                    {
                        client.Send(msg);
                    }
                    catch (Exception ex)
                    {
                    }
                    notes.InnerHtml = "";
                    //subject.Value = "";
                    name.Value = "";
                    email.Value = "";
                    phone.Value = "";
                    total.Value = "";
                    spec.Value = "";
                    myid.Value = "";
                    lblResult.Text = "تم الارسال";
                }
                catch (Exception)
                {

                    lblResult.Text = "الرجاء ملئ جميع الحقول";
                }
            }
        }
    }
}