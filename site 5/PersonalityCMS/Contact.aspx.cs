using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using EF;
using System.Net;
using System.Net.Mail;
using System.Text;

namespace Personality
{
    public partial class Contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                message.InnerHtml = "";
                phone.Value = "";
                name.Value = "";
                email.Value = "";
                LoadData();
            }
        }
        public void LoadData()
        {
            using (var db = new PersonalityDBEntities())
            {
                //get header Data

                var data = db.LayoutTBs.Where(i =>i.SectionId == 7).ToList();
                int x = 1;
                foreach (var item in data)
                {
                    if (x == 1)
                    {
                        lblPhone.InnerHtml = item.ArTitle;
                    }
                    if (x == 2)
                    {
                        lblEmail.InnerHtml = item.ArTitle;
                    }
                    if (x == 3)
                    {
                        lblAddress.InnerHtml = item.ArTitle;
                    }
                    x++;
                }
                //w3_contact_facebook.HRef = data.FirstOrDefault(x => x.SectionId == 1).Link;
                //w3_contact_twitter.HRef = data.FirstOrDefault(x => x.SectionId == 2).Link;
                //w3_contact_instagram.HRef = data.FirstOrDefault(x => x.SectionId == 4).Link;
                //w3_contact_google.HRef = data.FirstOrDefault(x => x.SectionId == 6).Link;
                ////inst.HRef = data.FirstOrDefault(x => x.SectionId == 1).Link;
                //w3_contact_rss.HRef = data.FirstOrDefault(x => x.SectionId == 5).Link;
            }
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
    }
}