<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Fap_Project.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Authentication</title>
    <link rel="stylesheet" href="Public/CSS/Style.css" />
    <link rel="stylesheet" href="Public/CSS/Login.css" />

</head>
<body>
    <form id="form1" runat="server">

        <div>
            <asp:PlaceHolder ID="Header" runat="server"></asp:PlaceHolder>
        </div>
        <div class="wrap-all">
            <div style="margin-left:auto; margin-right:auto;margin-top:100px">
                <fieldset style="width:500px; height:">
                    <legend><b>Sinh viên, Giảng viên, Cán bộ ĐH-FPT</b></legend>
                    <table>
                        <tr>
                            <td>Username</td>
                            <td>
                                <asp:TextBox ID="tbusername" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>Password</td>
                            <td>
                                <asp:TextBox ID="tbpassword" runat="server" TextMode="Password"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td></td>
                            <td>
                                <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click"/>
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
