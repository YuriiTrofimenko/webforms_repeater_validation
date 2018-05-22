<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="GridViewASP.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>GridViewASP3</title>
    <style>
        .Header th, .Row td {
            padding: 10px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>

        <asp:SqlDataSource ID="getArticlesSDS" runat="server"
                     ConnectionString="<%$ ConnectionStrings:SqlServerConnectionString %>"
                     SelectCommand="SELECT id, name, count, price FROM Test_table_2" />

        <asp:GridView ID="GridView2" runat="server"
                    DataSourceID="getArticlesSDS" AutoGenerateColumns="False" DataKeyNames="id"
                    Font-Names="Trebuchet MS" Font-Size="30px" ForeColor="#333333" GridLines="None"
                    RowStyle-CssClass="Row">

                    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                    <HeaderStyle BackColor="#28a4fb" Font-Bold="True" ForeColor="White" CssClass="Header" />
                    <AlternatingRowStyle BackColor="White" />

                    <Columns>
                        <asp:BoundField DataField="id" HeaderText="N"
                            InsertVisible="False"
                            ReadOnly="True">
                            <ItemStyle Font-Bold="True" BorderWidth="1" />
                        </asp:BoundField>
                        <asp:BoundField DataField="name" HeaderText="Название" />
                        <asp:BoundField DataField="count" HeaderText="Количество" />
                        <asp:BoundField DataField="price" HeaderText="Цена" DataFormatString="{0:c}" />
                    </Columns>
        </asp:GridView>

    </div>
    </form>
</body>
</html>
