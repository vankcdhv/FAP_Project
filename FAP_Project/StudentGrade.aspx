<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentGrade.aspx.cs" Inherits="Fap_Project.StudentGrade" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Mark Report</title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="padding-bottom:20px">
            <asp:PlaceHolder ID="Header" runat="server"></asp:PlaceHolder>
        </div>

        <h1> Grade Report for <asp:Label ID="lbStudent" runat="server"></asp:Label> </h1>
        <div class="wrap-all">
            <div class="leftside">
                <div style="">
                    <asp:ListBox AutoPostBack="true" ID="lbSubject" runat="server" OnSelectedIndexChanged="lbSubject_SelectedIndexChanged1" ></asp:ListBox>
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
                    <p> COURSE TOTAL AVERAGE  <asp:Label ID="lbAverage" runat="server"> </asp:Label> </p>
                    <p> STATUS <asp:Label ID="lbStatus" runat="server"> </asp:Label> </p>
                </div>
            </div>
        </div>
        <div style="padding-top:20px">
            <asp:PlaceHolder ID="Footer" runat="server"></asp:PlaceHolder>
        </div>
    </form>
</body>
</html>
