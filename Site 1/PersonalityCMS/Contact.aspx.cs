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
                subject.Value = "";
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
                var headerdata = db.LayoutTBs.Where(i => i.SectionId == 7).ToList();
                head1address.InnerHtml = headerdata.FirstOrDefault(x => x.Id == 29).ArTitle;
                head1phone.InnerHtml = headerdata.FirstOrDefault(x => x.Id == 7).ArTitle;
                head1fax.InnerHtml = headerdata.FirstOrDefault(x => x.Id == 8).ArTitle;
                var contactdata = db.ContactsTBs.Find(1);
                head1email.InnerHtml = contactdata.ArTitle;

                var data = db.LayoutTBs.Where(i => i.SectionId >= 1 && i.SectionId <= 5).ToList();
                facebookmaster.HRef = data.FirstOrDefault(x => x.SectionId == 1).Link;
                twittermaster.HRef = data.FirstOrDefault(x => x.SectionId == 2).Link;
                vkmaster.HRef = data.FirstOrDefault(x => x.SectionId == 3).Link;
                //imgcareer.Src = data.Image;
                var datax = db.JobsTBs.Where(x => x.SectionId == 1).ToList();
                lstjobs.DataSource = datax;
                lstjobs.DataBind();

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
                    body += "Subject:FUNWAY \n";
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
                    msg.From = new MailAddress("sowadenasmtp@gmail.com", "ثامر البراك");
                    msg.To.Add(new MailAddress(toAddress));
                    msg.Subject = "FUNWAY";
                    msg.IsBodyHtml = true;
                    msg.Body = body;
                    try
                    {
                        client.Send(msg);
                        //return true;
                    }
                    catch (Exception ex)
                    {
                        //return false;
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