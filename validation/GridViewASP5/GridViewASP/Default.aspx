<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="GridViewASP.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>GridViewASP4</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>

        <asp:SqlDataSource ID="getPersonsSDS" runat="server"
                     ConnectionString="<%$ ConnectionStrings:SqlServerConnectionString %>"
                     SelectCommand="SELECT id, first_name, last_name, birth_date FROM Test_table_3" />

        <asp:GridView ID="GridView4" runat="server"
                    DataSourceID="getPersonsSDS" AutoGenerateColumns="False" DataKeyNames="id" OnRowDataBound="GridView4_RowDataBound" OnSelectedIndexChanged="GridView4_SelectedIndexChanged"
            AutoGenerateSelectButton="false">

                    <Columns>
                        <asp:CommandField ShowSelectButton="true" ButtonType="Link" />
                        <asp:BoundField DataField="id" HeaderText="N" />
                        <asp:BoundField DataField="first_name" HeaderText="Имя" />
                        <asp:BoundField DataField="last_name" HeaderText="Фамилия" />
                        <asp:BoundField DataField="birth_date" HeaderText="Дата рождения" />
                    </Columns>
        </asp:GridView>
        <br/>
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    </div>
        
    </form>
</body>
</html>
