<%@ Page Language="C#" AutoEventWireup="true" CodeFile="profile_page.aspx.cs" Inherits="profile_page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        body {
         background-image: url('https://wallpapercave.com/wp/wp5147454.jpg');
            }
        body{
            background-color:gray;
        }
        div{
     background-color: transparent;
     height: 120px;
     width: 120px;
     margin:50px auto;
}
        .auto-style1 {
            color: #FFFFFF;
        }
        .auto-style2 {
            text-align: center;
            width: 550px;
            height: 81px;
        }
        .test {                   
           margin: auto;
            width: 75%;
            
            padding: 10px;
        }
        .auto-style3 {
            color: #FFFFFF;
            margin-top: 0px;
        }
        .auto-style4 {
            margin: auto auto auto 0px;
            width: 56%;
            padding: 10px;
            height: 192px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style2">
            <strong>
        <asp:Label ID="Label1" runat="server" Text="Welcome " CssClass="auto-style1" Font-Size="30pt"></asp:Label>
        <asp:Label ID="Label2" runat="server" Text="Label" CssClass="auto-style1" Font-Size="30pt"></asp:Label>
            </strong>
        <br class="auto-style1" />
        <br class="auto-style1" />
            <strong>
        <br class="auto-style1" />
            </strong><span class="auto-style1"><strong>Here is your comments:</strong></span><strong><br class="auto-style1" />
            </strong>
        </div>
        <div class="auto-style4">    
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="5" CssClass="auto-style3" ForeColor="Black" GridLines="Vertical" HorizontalAlign="Justify" PageSize="3" Font-Size="15pt" Width="878px">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <Columns>
                <asp:BoundField DataField="subject" HeaderText="Subject" SortExpression="subject" >
                </asp:BoundField>
                <asp:BoundField DataField="message" HeaderText="Commit" SortExpression="message" >
                </asp:BoundField>
                <asp:BoundField DataField="date" HeaderText="Date" SortExpression="date" >
                </asp:BoundField>
            </Columns>
            <EmptyDataTemplate>
                Henüz hiç gönderiniz yok<br />
            </EmptyDataTemplate>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="Gray" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>     
             </div>
        <br class="auto-style1" />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:GameForumConnection %>" ProviderName="<%$ ConnectionStrings:GameForumConnection.ProviderName %>" SelectCommand="SELECT * FROM [forum] WHERE ([name_surname] = ?) ORDER BY [id] DESC">
            <SelectParameters>
                <asp:SessionParameter Name="name_surname" SessionField="user" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br class="auto-style1" />
        <br class="auto-style1" />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Go to Forum Page" />
        <br class="auto-style1" />
    </form>
</body>
</html>
