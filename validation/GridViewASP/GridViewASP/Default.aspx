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

        <asp:SqlDataSource ID="getEmployeesSDS" runat="server"
                     ConnectionString="<%$ ConnectionStrings:SqlServerConnectionString %>"
                     SelectCommand="SELECT id, first_name, last_name FROM Test_table_3" />

        <asp:GridView ID="GridView1" runat="server"
                    DataSourceID="getEmployeesSDS" AutoGenerateColumns="False" DataKeyNames="id">
                    <Columns>
                        <asp:BoundField DataField="id" HeaderText="N" />
                        <asp:BoundField DataField="first_name" HeaderText="Имя" />
                        <asp:BoundField DataField="last_name" HeaderText="Фамилия" />
                    </Columns>
        </asp:GridView>

    </div>
    </form>
</body>
</html>
