<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WeeklyTimeTable.aspx.cs" Inherits="Fap_Project.WeeklyTimeTable" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="Public/CSS/Style.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div style="padding-bottom:20px">
            <asp:PlaceHolder ID="Header" runat="server"></asp:PlaceHolder>
        </div>
        <div class="wrap-all">
            <div class="leftside">
                <p>Left</p>
            </div>
            <div class="content">
                <p>Content</p>
            </div>
        </div>
        <div style="padding-top:20px">
            <asp:PlaceHolder ID="Footer" runat="server"></asp:PlaceHolder>
        </div>
    </form>
</body>
</html>
