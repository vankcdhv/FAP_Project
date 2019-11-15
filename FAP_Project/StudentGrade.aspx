<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentGrade.aspx.cs" Inherits="Fap_Project.StudentGrade" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Mark Report</title>
    <link rel="stylesheet" href="Public/CSS/Style.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div style="padding-bottom: 20px">
            <asp:PlaceHolder ID="Header" runat="server"></asp:PlaceHolder>
        </div>

        <h1 style="width:80%; margin:10px auto 10px auto">Grade Report for
                <asp:Label ID="lbStudent" runat="server"></asp:Label>
            </h1>
        
        <div class="wrap-all">
            <div class="leftside">
                <div>
                    <asp:ListBox Width="80%" Rows="20" AutoPostBack="true" ID="lbSubject" runat="server" OnSelectedIndexChanged="lbSubject_SelectedIndexChanged1"></asp:ListBox>
                </div>
            </div>
            <div class="content">
                <div>
                    <asp:GridView ID="dgvListMark" runat="server" AutoGenerateColumns="false">
                        <Columns>
                            <asp:BoundField HeaderText="Grade Category" DataField="key" />
                            <asp:BoundField HeaderText="Value" DataField="value" />
                        </Columns>
                    </asp:GridView>
                </div>
                <div>
                    <p><b>COURSE TOTAL AVERAGE </b>
                        <asp:Label ID="lbAverage" runat="server" Font-Bold="true"> </asp:Label>
                    </p>
                    <p><b>STATUS </b>
                        <asp:Label ID="lbStatus" runat="server" ForeColor="Red"> </asp:Label>
                    </p>
                </div>
            </div>
        </div>
        <div style="padding-top: 20px">
            <asp:PlaceHolder ID="Footer" runat="server"></asp:PlaceHolder>
        </div>
    </form>
</body>
</html>
