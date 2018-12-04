using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MentalHealthApp3
{
    public partial class Grades : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //metnod gets data and returns it in a html string
        public string getData()
        {
            //opens connection and logs into database
            SqlConnection con = new SqlConnection("Data Source=DESKTOP-3DUNALL\\SQLEXPRESS;Initial Catalog=QuestionsDatabse; User Id=dbuser; Password=Password;");
            //sql command selects all data in grades table
            SqlCommand cmd = new SqlCommand("SELECT * from Grades", con);
            //opens the connection and starts reading
            con.Open();
            SqlDataReader reader = cmd.ExecuteReader();

            //Str is where the string will be stored
            string Str = "";

            while (reader.Read())
            {
                //appends each line to the database to the below string
                string ModuleName = reader.GetString(0);
                int ModulePercentage = reader.GetInt32(1);
                //this string is in html format
                Str += "<tr align='center' class='TableOrganise'><td>" + ModuleName + "</td><td>" + ModulePercentage + "</td></tr>";
            }

            con.Close();
            //returns the html
            return Str;
        }
    }
}