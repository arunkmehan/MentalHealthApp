using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MentalHealthApp3
{
    public partial class AnsweredQuestions : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        //when Submit is clicked
        protected void Submit_Click(object sender, EventArgs e)
        {
            {
                //connecting to the database using the connection string
                using (SqlConnection con = new SqlConnection("Data Source=DESKTOP-3DUNALL\\SQLEXPRESS;Initial Catalog=QuestionsDatabse; User Id=dbuser; Password=Password;"))
                {
                    //sql command that will be executed
                    SqlCommand cmd = new SqlCommand("SELECT Answer FROM QuestionTable1 WHERE StudentNumber =@ID", con);
                    //converts entered text to an integer
                    int v = Convert.ToInt32(IDNum.Text);
                    //passes the integer into the sql command
                    cmd.Parameters.AddWithValue("@ID", v);

                    try
                    {
                        //starts connection and executes the commands
                        con.Open();
                        cmd.ExecuteNonQuery();
                        con.Close();
                    }
                    catch (Exception exp)
                    {
                        throw exp;
                    }
                    try
                    {
                        //starts a new connection to now print the answer
                        con.Open();

                        using (SqlDataReader read = cmd.ExecuteReader())
                        {
                            while (read.Read())
                            {
                                //puts the answer (stored in database) in to Answertxt
                                Answertxt.Text = (read["Answer"].ToString());
                            }
                        }
                    }
                    finally
                    {
                        //closes the connection
                        con.Close();
                    }
                }
            }
        }
    }
}