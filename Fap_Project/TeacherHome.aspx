<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TeacherHome.aspx.cs" Inherits="Fap_Project.TeacherHome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>FPT University Academic Portal</title>
    <link rel="stylesheet" href="Public/CSS/Style.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div style="padding-bottom:20px">
            <asp:PlaceHolder ID="Header" runat="server"></asp:PlaceHolder>
        </div>
        <div class="wrap-all">
            <div class="leftdiv">
                <fieldset>
                    <legend>Nghiệp vụ</legend>
                    <table>
                        <tr>
                            <td>
                                <a href="#">Add mark</a>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <a href="#">Take attended</a>
                            </td>
                        </tr>
                    </table>
                </fieldset>
            </div>
        </div>
        <div style="padding-top:20px">
            <asp:PlaceHolder ID="Footer" runat="server"></asp:PlaceHolder>
        </div>
    </form>
</body>
</html>
