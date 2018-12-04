<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LUUStaff.aspx.cs" Inherits="MentalHealthApp3.LUUStaff" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>LUU Staff</title>
    <style>
        .center-div
{
     margin: 0 auto;
     width: 550px; 
}

       .center-div-menu
{
     margin: 0 auto;
     width: 25%;  
}

    </style>
</head>

<body>

    <form id="form1" runat="server">
         <div>
            <h1><center>LUU Staff</center></h1>
        </div>
        <div>
            <h3><center>FAQ Question</center></h3>
        </div>
        <div class="center-div">
         <asp:TextBox ID="Questiontxt" runat="server" TextMode="MultiLine" Height="74px" Width="524px"></asp:TextBox>
        </div>
        <br />
        <div>
            <h3><center>FAQ Answer</center></h3>
        </div>
        <div class="center-div">
         <asp:TextBox ID="Answertxt" runat="server" TextMode="MultiLine" Height="74px" Width="524px"></asp:TextBox>
        </div>
        <div align="center">
         <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit"/>
            </div>
    </form>
</body>
</html>