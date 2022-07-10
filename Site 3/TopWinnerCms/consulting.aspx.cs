using EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TopWinnerCms
{
    public partial class consulting : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                lblresult.Text = "";
                LoadData();
            }
        }
        public void LoadData()
        {
            using (var db = new PersonalityDBEntities())
            {
                List<EF.ConsultantTB> consult = db.ConsultantTBs.Where(x => x.SectionId == 1).ToList();
                lstConsult.DataSource = consult;
                lstConsult.DataBind();

                List<EF.AdvertismentTB> adv = db.AdvertismentTBs.Where(x => x.SectionId == 1).ToList();
                lstAdvertise.DataSource = adv;
                lstAdvertise.DataBind();

                List<EF.LayoutTB> social = db.LayoutTBs.Where(x => x.SectionId == 1).ToList();
                lstSocial.DataSource = social;
                lstSocial.DataBind();


            }
        }

        protected void Unnamed_ServerClick(object sender, EventArgs e)
        {
            using (var db = new PersonalityDBEntities())
            {
                var data = db.ContactsTBs.FirstOrDefault(x => x.SectionId == 1);
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
                msg.From = new MailAddress("sowadenasmtp@gmail.com", "Top Winner");
                msg.To.Add(new MailAddress(data.ArTitle));
               // msg.To.Add(new MailAddress("tarek_nadal@yahoo.com"));
                msg.Subject = "طلب استشارة";
                msg.IsBodyHtml = true;
                msg.Body += "Email: " + Email.Value + "<br />";
                msg.Body += "Phone: " + Phone.Value + "<br />";
                msg.Body += "Message: <br />" + consultant.InnerHtml + "<br />";
                try
                {
                    client.Send(msg);
                    lblresult.ForeColor = System.Drawing.Color.Green;
                    lblresult.Text = "Message Sent";
                }
                catch (Exception ex)
                {
                    lblresult.ForeColor = System.Drawing.Color.Red;
                    lblresult.Text = "Error";
                }
            }
        }
    }
}