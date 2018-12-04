<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AnsweredQuestions.aspx.cs" Inherits="MentalHealthApp3.AnsweredQuestions" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        .center-div
{
     margin: 0 auto;
     width: 550px; 
}

        .center-div-text
{
     margin: 0 auto;
     width: 150px; 
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
            <h1><center>Answered Questions</center></h1>
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
        <br />
        <br />
        <h3><center>Please enter your Student ID below:</center></h3>
        <div class="center-div-text">
         <asp:TextBox ID="IDNum" TextMode="Password" runat="server"></asp:TextBox>
        </div>
        <br />
        <br />
        <div align="center">
         <asp:Button ID="Submit" runat="server" OnClick="Submit_Click" Text="Submit"/>
            </div>
        <div>
            <h3><center>Answered Question:</center></h3>
        </div>
        <div class="center-div">
         <asp:TextBox ID="Answertxt" runat="server" TextMode="MultiLine" Height="74px" Width="524px"></asp:TextBox>
        </div>
    </form>
</body>
</html>
