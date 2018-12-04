<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Grades.aspx.cs" Inherits="MentalHealthApp3.Grades" %>

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

       .center-div-menu
{
     margin: 0 auto;
     width: 27%;  
}

               tr.TableOrganise>td {
  padding-bottom: 1em;
}

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1><center>Grades</center></h1>
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
    </form>
    <form>
        <br />
        <br />
    <table class="center-div" width="60%">
        <tr align="left" class="spaceUnder" >
            <td align="center"><b>Module Name</b></td>                        
            <td align="center"><b> Percentage </b></td>            
                                    
        </tr>

        <%=getData()%>

    </table>
    </form>
</body>
</html>
