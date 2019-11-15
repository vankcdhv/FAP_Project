<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Header.ascx.cs" Inherits="FAP_Project.Components.Header1" %>

<div class="Header">
    <h1>
        <span>FPT University Academic Portal</span>
    </h1>

    <div class="Navigation">
        <div class="Account">
            <div style="padding-left: 5px">
                <a href="ViewAccount?id=<%=(String)Session["Account"]%>">
                    <div class="BoxAccount">
                        <p><%=Session["Account"]%></p>
                    </div>
                </a>
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
