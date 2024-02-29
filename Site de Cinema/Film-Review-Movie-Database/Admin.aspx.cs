using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Site_de_Cinema.Film_Review_Movie_Database
{
    public partial class Admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString);
            conn.Open();

            SqlCommand command = new SqlCommand("Select * from filmes", conn);
           
            using (conn)
            {
                    using (SqlDataReader dr = command.ExecuteReader())
                    {
                        dropDown.Items.Clear();
                        if (dr.HasRows)
                        {
                            dropDown.DataSource = dr;
                            dropDown.DataTextField = "Titulo";
                            dropDown.DataValueField = "ID_filme";
                            dropDown.DataBind();
                            dropDown.Items.Insert(0, new ListItem("-Select-", "0"));
                            DropDownApagar.DataSource = dr;
                            DropDownApagar.DataTextField = "Titulo";
                            DropDownApagar.DataValueField = "ID_filme";
                            DropDownApagar.DataBind();
                            DropDownApagar.Items.Insert(0, new ListItem("-Select-", "0"));

                    }
                    }
                    conn.Close();
            }
        }

        protected void Mudar_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString);
            conn.Open();
            SqlCommand MudarNome = new SqlCommand("UPDATE Filmes Set Titulo='" + NovoNome.Text.ToString() + "' WHERE Titulo ='" + dropDown.SelectedItem.Text + "'", conn);
            MudarNome.ExecuteNonQuery();
            conn.Close();
        }

        protected void Eliminar_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString);
            conn.Open();
            //mudarnome
            SqlCommand MudarNome = new SqlCommand("DELETE FROM Filmes Where Titulo='" + dropDown.SelectedItem.Text);
            MudarNome.ExecuteNonQuery();
            conn.Close();
        }
    }
}