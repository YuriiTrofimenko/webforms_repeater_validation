<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="RepeaterASP_3.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Repeater ID="Repeater1" runat="server">

            <HeaderTemplate>
                <h1>Customer's list</h1>
            </HeaderTemplate>

            <AlternatingItemTemplate>
                <div style="background-color:#00FFCC">
                    <%# Eval("mFirstName") %>&nbsp;<%# Eval("mLastName") %>
                    <br/>
                    Phone: <%# Eval("mPhone") %>
                    <br/>
                    Email: <%# Eval("mEmail") %>
                    <br/>
                </div>
            </AlternatingItemTemplate>

            <SeparatorTemplate>
                <hr/>
            </SeparatorTemplate>

            <ItemTemplate>
                <div>
                    <%# Eval("mFirstName") %>&nbsp;<%# Eval("mLastName") %>
                    <br/>
                    Phone: <%# Eval("mPhone") %>
                    <br/>
                    Email: <%# Eval("mEmail") %>
                    <br/>
                </div>
            </ItemTemplate>

            <FooterTemplate>
                <br/><br/><br/>
                <small><a href="mailto:test@test.test">Feedback</a></small>
            </FooterTemplate>
        </asp:Repeater>
    </div>
    </form>
</body>
</html>
