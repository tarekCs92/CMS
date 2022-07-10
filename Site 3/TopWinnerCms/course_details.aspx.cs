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
    public partial class course_details : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                lblresult.Text = "";
                if (Request.QueryString["id"] != null)
                {
                    try
                    {
                        int i = int.Parse(Request.QueryString["id"].ToString());
                        LoadData(i);
                    }
                    catch (Exception)
                    {
                        Response.Redirect("~/Default.aspx");
                        return;
                    }
                }
                else
                {
                    Response.Redirect("~/index.aspx");
                    return;
                }
            }


        }
        private const string YoutubeLinkRegex = "(?:.+?)?(?:\\/v\\/|watch\\/|\\?v=|\\&v=|youtu\\.be\\/|\\/v=|^youtu\\.be\\/)([a-zA-Z0-9_-]{11})+";
        private static Regex regexExtractId = new Regex(YoutubeLinkRegex, RegexOptions.Compiled);

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
        public string ReturnName(int url)
        {
            return type.SelectedIndex == 0 ? "شركة" : "فرد";
            //extract the id

        }
        private void LoadData(int id)
        {
            using (var db = new PersonalityDBEntities())
            {
                // var data = db.Services.FirstOrDefault(x => x.Id == id);
                EF.ProductsTB data = db.ProductsTBs.FirstOrDefault(x => x.Id == id);
                coursename.Value = data.ArTitle;
                title.InnerHtml = data.ArTitle;
                descriptin.InnerHtml = data.ArDescription;
                date.InnerHtml = data.Date != null ? data.Date.Value.ToString("dd/MM/yyyy") : "";
                carouseldiv.Style["display"] = "block";
                if (data.Link == "" || data.Link == null)
                {
                    video.Style["display"] = "none";
                }
                else
                {
                    string html = "";
                    string vid = ExtractVideoIdFromUrl(data.Link);
                    html += "<iframe width=\"100% \" height=\"290\"   src=\"" + vid + "\" frameborder=\"0\" gesture=\"media\" allow=\"encrypted-media\" allowfullscreen></iframe>";
                    video.InnerHtml = html;
                }
                if (data.Image == "" || data.Image == null)
                {
                    carouseldiv.Style["display"] = "none";
                }
                else
                {
                    string html = "";
                    if (data.Image != "" && data.Image != null)
                    {
                        html += "<div class=\"item active\"><img src=\"" + data.Image + "\" class=\"pic_slider\" alt=\"\"></div>";
                    }
                    if (data.Image1 != "" && data.Image1 != null)
                    {
                        html += "<div class=\"item \"><img src=\"" + data.Image1 + "\" class=\"pic_slider\" alt=\"\"></div>";
                    }
                    if (data.Image2 != "" && data.Image2 != null)
                    {
                        html += "<div class=\"item \"><img src=\"" + data.Image2 + "\" class=\"pic_slider\" alt=\"\"></div>";
                    }
                    if (data.Image3 != "" && data.Image3 != null)
                    {
                        html += "<div class=\"item \"><img src=\"" + data.Image3 + "\" class=\"pic_slider\" alt=\"\"></div>";
                    }
                    slider.InnerHtml = html;
                }

                //ListView1.DataSource = collection;
                //ListView1.DataBind();

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
                //msg.To.Add(new MailAddress("tarek_nadal@yahoo.com"));
                msg.Subject = "حجز دورة ";
                msg.IsBodyHtml = true;
                msg.Body += "الدورة:<h3> " + coursename.Value + "</h3><br />";
                msg.Body += "الاسم: " + name.Value + "<br />";
                msg.Body += "البريد: " + email.Value + "<br />";
                msg.Body += "الجوال: " + phone.Value + "<br />";
                msg.Body += "المسمي الوظيفي: " + job.Value + "<br />";
                msg.Body += "شركة او فرد: " + ReturnName(type.SelectedIndex) + "<br />";
                msg.Body += "عدد المشتركين: <br />" + peoplenuber.Value + "<br />";
                try
                {
                    client.Send(msg);
                    lblresult.ForeColor = System.Drawing.Color.Green;
                    lblresult.Text = "تم ارسال طلب الاشتراك";
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