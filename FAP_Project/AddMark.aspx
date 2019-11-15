<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddMark.aspx.cs" Inherits="Fap_Project.AddMark" %>

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
                <div>
                    <asp:ListBox AutoPostBack="true" ID="lbClass" runat="server" OnSelectedIndexChanged="lbClass_SelectedIndexChanged" ></asp:ListBox>
                </div>
                <div>
                    <asp:ListBox AutoPostBack="true" ID="lbSubject" runat="server" OnSelectedIndexChanged="lbSubject_SelectedIndexChanged" > </asp:ListBox>
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
                
            </div>
        </div>
        <div style="padding-top:20px">
            <asp:PlaceHolder ID="Footer" runat="server"></asp:PlaceHolder>
        </div>
    </form>
</body>
</html>
