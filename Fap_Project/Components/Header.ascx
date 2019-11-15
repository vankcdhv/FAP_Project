<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Header.ascx.cs" Inherits="FAP_Project.Components.Header1" %>

<div class="Header">
    <h1>
        <span>FPT University Academic Portal</span>
    </h1>

    <div class="Navigation">
        <div class="menu" id="DivMenu" runat="server">
            <div style="padding-left: 5px">
                <div class="BoxAccount">
                    <asp:HyperLink ID="HomeLink" runat="server"></asp:HyperLink>
                </div>
            </div>
        </div>
        <div class="Account" id="DivAccount" runat="server">
            <div style="padding-left: 5px">
                <div class="BoxAccount">
                    <asp:HyperLink ID="AccountLink" runat="server"></asp:HyperLink>
                </div>
            </div>
            <div style="padding-left: 5px">
                <div class="BoxAccount">
                    <asp:HyperLink ID="logoutLink" Text="Logout" NavigateUrl="~/Login.aspx" runat="server"></asp:HyperLink>
                </div>
            </div>
        </div>
        
    </div>
</div>
