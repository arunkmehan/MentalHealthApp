<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="MentalHealthApp3.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        .center-div
{
     margin: 0 auto;
     width: 800px; 
}
        .used-div {
    padding-right: 15%;
    padding-left: 15%;
}

       .center-div-menu
{
     margin: 0 auto;
     width: 27%; 
}

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1><center>Home</center></h1>
        </div>
                <div class="center-div-menu">
            <asp:Menu ID="Menu1" runat="server" Orientation="Horizontal">
                <StaticMenuItemStyle HorizontalPadding="7px" VerticalPadding="2px" />
            <Items>
                <asp:MenuItem NavigateUrl="~/Default.aspx" Text="Home" Value="Home"></asp:MenuItem>
                <asp:MenuItem NavigateUrl="~/FAQ.aspx" Text="FAQ's" Value="New Item"></asp:MenuItem>
                <asp:MenuItem NavigateUrl="~/Grades.aspx" Text="Grades" Value="New Item"></asp:MenuItem>
                <asp:MenuItem NavigateUrl="~/CouncillorQuestions.aspx" Text="Councillor Questions" Value="Councillor Questions"></asp:MenuItem>
                <asp:MenuItem NavigateUrl="~/AnsweredQuestions.aspx" Text="Answered Questions" Value="Answered Questions"></asp:MenuItem>
            </Items>
        </asp:Menu>
        </div>
        <div class="used-div">
            <h2>About the app</h2>
            <p>This app is designed for the use of all University of Leeds students. It will have
                many uses that will not only cater for those with poor mental health but will also help
                other students who just want to find out basic information such as their grades and attendance.
                For those who do want to be able to access the mental health section this can be anonomously
                so that you do not have to open up publicly about private matters. If there any problems 
                then please report them using the information available in the contact us section.
            </p>
            <br />
            <h2>Contact us</h2>
            <p><b>Email:</b> uniservices@leeds.ac.uk</p>

            <p>Phone: 0113 243 1751</p>

            <p>Address: Woodhouse Lane, Leeds LS2 9JT</p>

            <p>Twitter: @UniversityLeeds</p>

            <p>Facebook: universityofleeds</p>

            <p>Instagram: universityofleeds</p>

        </div>
    </form>
</body>
</html>
