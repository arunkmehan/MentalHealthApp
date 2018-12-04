<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Councillor Answers.aspx.cs" Inherits="MentalHealthApp3.Councillor_Answers" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Councillor Answers</title>
    <style>
        .center-div
{
     margin: 0 auto;
     width: 550px; 
}

       .center-div-menu
{
     margin: 0 auto;
     width: 31.5%; 
}
    </style>
</head>

<body>

    <form id="form1" runat="server">
         <div>
            <h1><center>Councillor Answers</center></h1>
        </div>
        <div>
            <h3><center>Here is the users question</center></h3>
        </div>
        <div class="center-div">
         <asp:TextBox ID="Questiontxt" runat="server" TextMode="MultiLine" Height="74px" Width="524px"></asp:TextBox>
        </div>
        <br />
        <div>
            <h3><center>Submit your answer here:</center></h3>
        </div>
        <div class="center-div">
         <asp:TextBox ID="Answertxt" runat="server" TextMode="MultiLine" Height="74px" Width="524px"></asp:TextBox>
        </div>
        <div align="center">
         <asp:Button ID="Submit" runat="server" OnClick="Submit_Click" Text="Submit"/>
            </div>
    </form>
</body>
</html>
