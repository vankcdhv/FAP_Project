<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Attendance_Report.aspx.cs" Inherits="Fap_Project.Attendance_Report" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="padding-bottom:20px">
            <asp:PlaceHolder ID="Header" runat="server"></asp:PlaceHolder>
        </div>
        <div class="wrap-all">
            <div class="leftside">

                <asp:ListBox AutoPostBack="true" ID="lbSubject" runat="server" OnSelectedIndexChanged="lbSubject_SelectedIndexChanged"></asp:ListBox>
                 
            </div>

            <div class="content">
                
                <asp:GridView  AutoPostBack="true" ID="dgv" runat="server">
                    <Columns>
                        <asp:BoundField DataField="Day" HeaderText="DATE" />
                        <asp:BoundField DataField="Slot" HeaderText="SLOT" />
                        <asp:BoundField DataField="TeacherID" HeaderText="LECTURER" />
                        <asp:BoundField DataField="Attended" HeaderText="ATTEDANCE STATUS" />
                    </Columns>
                </asp:GridView>

            </div>
        </div>
        <div style="padding-top:20px">
            <asp:PlaceHolder ID="Footer" runat="server"></asp:PlaceHolder>
        </div>
    </form>
</body>
</html>
