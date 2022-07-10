using EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Text;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TopWinnerCms
{
    public partial class books : System.Web.UI.Page
    {
        private const string YoutubeLinkRegex = "(?:.+?)?(?:\\/v\\/|watch\\/|\\?v=|\\&v=|youtu\\.be\\/|\\/v=|^youtu\\.be\\/)([a-zA-Z0-9_-]{11})+";
        private static Regex regexExtractId = new Regex(YoutubeLinkRegex, RegexOptions.Compiled);


        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                lblresult.Text = "";
            }
            LoadData();
        }
        public string ExtractVideoIdFromUrl(string url)
        {
            //extract the id
            var regRes = regexExtractId.Match(url);
            if (regRes.Success)
            {
                return "https://www.youtube.com/embed/" + regRes.Groups[1].Value;
            }
            return null;
        }
        public void LoadData()
        {
            using (var db = new PersonalityDBEntities())
            {
                List<EF.IndexTB> collection = db.IndexTBs.Where(i => i.SectionId == 3 && i.TypeId == 1).ToList(); ;
                lstGallary.DataSource = collection;
                lstGallary.DataBind();

                List<EF.AdvertismentTB> adv = db.AdvertismentTBs.Where(x => x.SectionId == 1).ToList();
                lstAdvertise.DataSource = adv;
                lstAdvertise.DataBind();

                List<EF.LayoutTB> social = db.LayoutTBs.Where(x => x.SectionId == 1).ToList();
                lstSocial.DataSource = social;
                lstSocial.DataBind();


            }
        }
        public string displayVideo(object myvalue)
        {
            int val = int.Parse(myvalue.ToString());
            if (val == 1 || val == 3)
            {
                return "none;";
            }
            else
            {
                return "grid;";
            }
        }
        public string displayImg(object myvalue)
        {
            int val = int.Parse(myvalue.ToString());
            if (val == 1 || val == 3)
            {
                return "grid;";
            }
            else
            {
                return "none;";
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
                //msg.To.Add(new MailAddress("tarek_nadal@yahoo.com"));
                msg.Subject = "طلب كتاب  ";
                msg.IsBodyHtml = true;
                msg.Body += "الكتاب:<h3> " + book.Value + "</h3><br />";
                msg.Body += "الاسم: " + name.Value + "<br />";
                msg.Body += "البريد: " + email.Value + "<br />";
                msg.Body += "الجوال: " + number.Value + "<br />";
                //msg.Body += "المسمي الوظيفي: " + job.Value + "<br />";
                //msg.Body += "شركة او فرد: " + ReturnName(type.SelectedIndex) + "<br />";
                //msg.Body += "عدد المشتركين: <br />" + peoplenuber.Value + "<br />";
                try
                {
                    client.Send(msg);
                    lblresult.ForeColor = System.Drawing.Color.Green;
                    lblresult.Text = "تم ارسال  ";
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