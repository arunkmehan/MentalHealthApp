using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MentalHealthApp3
{
    public partial class CouncillorQuestions : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void Submit_Click(object sender, EventArgs e)
        {
            {
                using (SqlConnection con = new SqlConnection("Data Source=DESKTOP-3DUNALL\\SQLEXPRESS;Initial Catalog=QuestionsDatabse; User Id=dbuser; Password=Password;")) //Creating connection object
                {
                    //sql command inserts the student number and question into database
                    SqlCommand cmd = new SqlCommand("INSERT INTO QuestionTable1 (StudentNumber, Question) VALUES (@ID, @Question)", con);
                    //adds the question and the student ID variables to sql command
                    int v = Convert.ToInt32(TextBox2.Text);
                    cmd.Parameters.AddWithValue("@ID", v);
                    cmd.Parameters.AddWithValue("@Question", Questiontxt.Text);
                    

                    try
                    {
                        //opens connection and executes sql command
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
            //takes you back to the home screen once done
            Server.Transfer("Default.aspx");
        }
    }
}