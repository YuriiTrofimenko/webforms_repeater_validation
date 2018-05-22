<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="GridViewASP.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>

        <asp:SqlDataSource ID="getArticlesSDS" runat="server"
                     ConnectionString="<%$ ConnectionStrings:SqlServerConnectionString %>"
                     SelectCommand="SELECT id, name, count, price FROM Test_table_2" />

        <asp:GridView ID="GridView2" runat="server"
                    DataSourceID="getArticlesSDS" AutoGenerateColumns="False" DataKeyNames="id"
                    HeaderStyle-ForeColor="Silver">
                    <Columns>
                        <asp:BoundField DataField="id" HeaderText="N" />
                        <asp:BoundField DataField="name" HeaderText="Название" />
                        <asp:BoundField DataField="count" HeaderText="Количество" />
                        <asp:BoundField DataField="price" HeaderText="Цена" DataFormatString="${0:F3}" />
                    </Columns>
        </asp:GridView>

    </div>
    </form>
</body>
</html>
