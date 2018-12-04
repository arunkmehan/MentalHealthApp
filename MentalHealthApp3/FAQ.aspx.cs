using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MentalHealthApp3
{
    public partial class FAQ : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


        }
        public string getWhileLoopData()
        {
            string htmlStr = "";
            SqlConnection thisConnection = new SqlConnection("Data Source=DESKTOP-3DUNALL\\SQLEXPRESS;Initial Catalog=QuestionsDatabse; User Id=dbuser; Password=Password;");
            SqlCommand thisCommand = thisConnection.CreateCommand();
            thisCommand.CommandText = "SELECT * from FAQ";
            thisConnection.Open();
            SqlDataReader reader = thisCommand.ExecuteReader();

            while (reader.Read())
            {
                string Question = reader.GetString(1);
                string Answer = reader.GetString(2);
                htmlStr += "<tr align='center' class='spaceUnder'><td>" + Question + "</td><td>" + Answer + "</td></tr>";
                }

            thisConnection.Close();
            return htmlStr;
        }
    }
}