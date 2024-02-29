using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Web.UI.WebControls;

namespace Site_de_Cinema
{
    public partial class index_2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["form2"] == null && Session["form1"] == null) //show login hide signup
            {
                form1.Visible = true;
                form2.Visible = false;

            }


            if (Session["form2"] != null && Session["form1"] == null) //show signup hide login
            {
                form1.Visible = false;
                form2.Visible = true;
                Session["form2"] = null;
            }
            if (Session["form1"] != null && Session["form2"] == null)     //show login hide signup
            {
                form1.Visible = true;
                form2.Visible = false;
                Session["form1"] = null;
            }
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString);
            conn.Open();

            SqlCommand command = new SqlCommand("Select * from filmes", conn);
            SqlDataReader reader = command.ExecuteReader();
            {
                filmesdiogo.InnerHtml = "";
                sliderdebaixo.InnerHtml = "";
                //partedascompras.InnerHtml = "";
                while (reader.Read())
                {
                    filmesdiogo.InnerHtml += "<div class='movie-item'>";
                    filmesdiogo.InnerHtml += "<div class='mv-img>";

                    filmesdiogo.InnerHtml += "<a href='#'><img src='images/uploads/" + reader["Foto"] + "' alt='" + reader["titulo"] + "' width='285' height='437' /></a>";
                    filmesdiogo.InnerHtml += "</div>";
                    filmesdiogo.InnerHtml += "<div class='title-in'>";

                    filmesdiogo.InnerHtml += "<div class='cate'>";

                    filmesdiogo.InnerHtml += "<span class='blue'><a href='#'> " + reader["categoria"] + "</a></span>";

                    filmesdiogo.InnerHtml += "</div>";

                    filmesdiogo.InnerHtml += "<h6><a href='#'>" + reader["titulo"] + "</a></h6>";
                    filmesdiogo.InnerHtml += "<p><i class='ion-android-star'></i><span>" + reader["Classificação"] + "</span></p>";


                    filmesdiogo.InnerHtml += "</div>";
                    filmesdiogo.InnerHtml += "</div>";


                    sliderdebaixo.InnerHtml += "<div class='slide-it'>";
                    sliderdebaixo.InnerHtml += "<div class='movie-item'>";
                    sliderdebaixo.InnerHtml += "<div class='mv-img'>";
                    sliderdebaixo.InnerHtml += "<img src='images/uploads/" + reader["FotosPequenas"] + "' alt='' width='185' height='284'>";
                    sliderdebaixo.InnerHtml += "</div>";
                    sliderdebaixo.InnerHtml += "<div class='hvr-inner'>";
                    sliderdebaixo.InnerHtml += "<a href='moviesingle.html'>Read more<i class='ion-android-arrow-dropright'></i></a>";
                    sliderdebaixo.InnerHtml += "</div>";
                    sliderdebaixo.InnerHtml += "<div class='title-in'>";
                    sliderdebaixo.InnerHtml += "<h6><a href='#'>Interstellar</a></h6>";
                    sliderdebaixo.InnerHtml += "<p><i class='ion-android-star'></i><span>7.4</span>/10</p>";
                    sliderdebaixo.InnerHtml += "</div>";
                    sliderdebaixo.InnerHtml += "</div>";
                    sliderdebaixo.InnerHtml += "</div>";
                }
                reader.Close();




                using (conn)
                {
                    using (SqlCommand cmd = new SqlCommand("PSI16", conn))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        using (SqlDataReader dr = command.ExecuteReader())
                        {
                            escolherfilmes.Items.Clear();
                            if (dr.HasRows)
                            {
                                escolherfilmes.DataSource = dr;
                                escolherfilmes.DataTextField = "Titulo";
                                escolherfilmes.DataValueField = "ID_filme";
                                escolherfilmes.DataBind();
                                escolherfilmes.Items.Insert(0, new ListItem("-Select-", "0"));
                            }
                        }
                        conn.Close();
                    }
                }


            }
            conn.Close();
        }




        protected void escolherfilmes_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        public class userinfo

        {

            public int userId { get; set; }

            public string userName { get; set; }

            public string password { get; set; }

            public string role { get; set; }

        }

        protected void botao_Click(object sender, EventArgs e)
        {
            SqlConnection conne = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString);
            SqlCommand cmd = new SqlCommand(String.Format("Select * from Users where userName ='{0}' and password='{1}'", txtUserID.Text.Trim(), txtPassword.Text.Trim()), conne);
            conne.Open();

            SqlDataReader reader = cmd.ExecuteReader();
            userinfo user = new userinfo();
         
            while (reader.Read())

            {
                Session["UserId"] = reader[0].ToString();
                Session["UserName"] = reader[1].ToString();
                string userx = reader[0].ToString();
                string passx = reader[1].ToString();
                if (txtUserID.Text== userx && txtPassword.Text== passx)
                {
                    Response.Redirect("index-2.aspx");
                }
                else
                {
                lblerror.Text = "Erro: Username ou Password Errados!";
                }
            }

            
        }
    }
}




