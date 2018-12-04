using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MentalHealthApp3
{
    public partial class Councillor_Answers : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //when page is opened start the connection straight away
            using (SqlConnection con = new SqlConnection("Data Source=DESKTOP-3DUNALL\\SQLEXPRESS;Initial Catalog=QuestionsDatabse; User Id=dbuser; Password=Password;")) //Creating connection object
            {
                //sql command that finds the first question inputted that hasnt yet been answered.
                SqlCommand cmd = new SqlCommand("SELECT Question FROM QuestionTable1 WHERE QuestionID = (SELECT MIN(QuestionID) FROM QuestionTable1 WHERE Answer IS NULL)", con);

                try
                {
                    con.Open();

                    using (SqlDataReader read = cmd.ExecuteReader())
                    {
                        while (read.Read())
                        {
                            //execute the command and put the correct question into the text box.
                            Questiontxt.Text = (read["Question"].ToString());
                        }
                    }
                }
                finally
                {
                    con.Close();
                }
            }
        }

            protected void Submit_Click(object sender, EventArgs e)
            {
            using (SqlConnection con = new SqlConnection("Data Source=DESKTOP-3DUNALL\\SQLEXPRESS;Initial Catalog=QuestionsDatabse; User Id=dbuser; Password=Password;")) //Creating connection object
            {
                //sql command puts the answer with the question
                SqlCommand cmd = new SqlCommand("UPDATE QuestionTable1 SET Answer=(@Answer) WHERE QuestionID = (SELECT MIN(QuestionID) FROM QuestionTable1 WHERE Answer IS NULL)", con);
                //adding variable answer to the sql command
                cmd.Parameters.AddWithValue("@Answer", Answertxt.Text);

                try
                {
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                }
                catch (Exception exp)
                {
                    throw exp;
                }
            }
            //refreshes the page (bringing up a new question)
            Server.Transfer("Councillor Answers.aspx");
        }
       
    }
}