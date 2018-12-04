using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MentalHealthApp3
{
    public partial class LUUStaff : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            {
                using (SqlConnection con = new SqlConnection("Data Source=DESKTOP-3DUNALL\\SQLEXPRESS;Initial Catalog=QuestionsDatabse; User Id=dbuser; Password=Password;")) //Creating connection object
                {
                    //sql command inserts a new question and answer to FAQ page
                    SqlCommand cmd = new SqlCommand("INSERT INTO FAQ (Question, Answer) VALUES (@question, @answer); ", con);
                    //adds parameters to sql command
                    cmd.Parameters.AddWithValue("@question", Questiontxt.Text);
                    cmd.Parameters.AddWithValue("@answer", Answertxt.Text);

                    try
                    {
                        //opens connection and runs sql command in database
                        con.Open();
                        cmd.ExecuteNonQuery();
                        con.Close();
                    }
                    catch (Exception exp)
                    {
                        throw exp;
                    }
                }
            }
            //once everything is done reutrns you to home page
            Server.Transfer("Default.aspx");
        }
   
    }
}