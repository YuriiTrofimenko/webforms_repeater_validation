<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="BindingASP.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Literal Text="<%# mFirstName %>" runat="server" />
        <asp:Label Text="<%# mLastName %>" runat="server" Font-Size="<%# mSize %>" Font-Bold="true" />

        <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem Text="text1" />
            <asp:ListItem Text="text2" />
        </asp:DropDownList>
    </div>
    </form>
</body>
</html>
