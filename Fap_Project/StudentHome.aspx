﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentHome.aspx.cs" Inherits="Fap_Project.StudentHome" %>

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
                    <legend>Information Access(Tra cứu thông tin)</legend>
                    <table>
                        <tr>
                            <td>
                                <a href="#">Weekly timetable(Thời khoá từng tuần)</a>
                            </td>
                        </tr>
                    </table>
                </fieldset>
            </div>
            <div class="rightdiv">
                <fieldset>
                    <legend>Reports(Báo cáo)</legend>
                    <table>
                        <tr>
                            <td>
                                <a href="Attendance_Report.aspx">Attendance report (Báo cáo điểm danh)</a>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <a href="StudentGrade.aspx">Mark Report (Báo cáo điểm)</a>
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
