<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Header.ascx.cs" Inherits="FAP_Project.Components.Header1" %>

<div class="Header">
    <h1>
        <span>FPT University Academic Portal</span>
    </h1>

    <div class="Navigation">
        <div class="Account" id="DivAccount" runat="server">
            <div style="padding-left: 5px">
                <asp:HyperLink ID="AccountLink" runat="server"></asp:HyperLink>
            </div>
            <div style="padding-left: 5px">
                <a href="Login.aspx">
                    <div class="BoxAccount">
                        <p>Logout</p>
                    </div>
                </a>
            </div>

        </div>
    </div>
</div>
