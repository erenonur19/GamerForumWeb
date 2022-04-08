<%@ Page Language="C#" AutoEventWireup="true" CodeFile="forum.aspx.cs" Inherits="forum" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            margin-right: 0px;
            height: 165px;
        }
        .auto-style2 {
            text-align: right;
            width: 728px;
        }
        .auto-style3 {
            width: 728px;
        }
        .auto-style5 {
            text-align: left;
        }
        .auto-style6 {
            margin-right: 0px;
            margin-top: 2px;
        }
        </style>
    <style>
        body {
         background-image: url('https://wallpapercave.com/wp/wp5147454.jpg');
            }
        body{
            background-color:gray;
        }
        div{
        background-color: transparent;
        height: 50px auto;
        width: 50px auto;
        margin:5px auto;
}
        .auto-style7 {
            color: #FFFFFF;
        }
        .auto-style8 {
            text-align: left;
            width: 728px;
            color: #FFFFFF;
            height: 59px;
        }
        .auto-style10 {
            text-align: left;
            height: 59px;
        }
        .auto-style11 {
            width: 728px;
            color: #FFFFFF;
        }
        .test {                   
           margin: auto;
            width: 75%;
            
            padding: 10px;
        }
            
        .auto-style12 {
            margin-left: 0px;
        }
            
        </style>
</head>
<body>

    <form id="form1" runat="server">
        <div style="height: 60px; text-align: center; color: #000000; font-weight: 700">
            <br />
            <span class="auto-style7">Gaming Tartışma ve Paylaşım Formu</span></div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style8">
        <asp:TextBox ID="TextBox3" runat="server" Visible="False" CssClass="auto-style12" Height="21px" Width="156px">Konu İsmi</asp:TextBox>
        <asp:Button ID="Button2" runat="server" Text="Yeni Konu Aç" Visible="False" Width="116px" OnClick="Button2_Click1" Height="23px" />
                </td>
                <td class="auto-style10">
                    &nbsp;<span class="auto-style7">Konu:&nbsp;&nbsp; </span>&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="konu_adı" DataValueField="konu_adı" Width="211px" Font-Bold="True">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:GameForumConnection %>" ProviderName="<%$ ConnectionStrings:GameForumConnection.ProviderName %>" SelectCommand="SELECT DISTINCT [konu_adı] FROM [Konular]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="auto-style11">
                    <asp:Button ID="Button3" runat="server" OnClick="Button2_Click" Text="Profile" />
                </td>
                <td class="auto-style5">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2"><span class="auto-style7">Mesaj:</span>:<asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString3 %>" OnSelecting="SqlDataSource3_Selecting" ProviderName="<%$ ConnectionStrings:ConnectionString3.ProviderName %>" SelectCommand="SELECT [isAdmin] FROM [Users] WHERE ([isAdmin] = ?)">
                    <SelectParameters>
                        <asp:SessionParameter Name="isAdmin" SessionField="user" Type="Boolean" />
                    </SelectParameters>
                    </asp:SqlDataSource>
                </td>
                <td class="auto-style5">
                    <asp:TextBox ID="TextBox2" runat="server" OnTextChanged="TextBox2_TextChanged" BorderStyle="Inset" BorderWidth="2px" Height="159px" Width="284px" TextMode="MultiLine"></asp:TextBox>
                    <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="DataSetTableAdapters.forumTableAdapter" UpdateMethod="Update" OnSelecting="ObjectDataSource2_Selecting">
                        <DeleteParameters>
                            <asp:Parameter Name="Original_id" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:SessionParameter Name="name_surname" SessionField="user" Type="String" />
                            <asp:ControlParameter ControlID="DropDownList1" Name="subject" PropertyName="SelectedValue" Type="String" />
                            <asp:ControlParameter ControlID="TextBox2" Name="message" PropertyName="Text" Type="String" />
                            <asp:ControlParameter ControlID="Label1" Name="date" PropertyName="Text" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="name_surname" Type="String" />
                            <asp:Parameter Name="subject" Type="String" />
                            <asp:Parameter Name="message" Type="String" />
                            <asp:Parameter Name="date" Type="String" />
                            <asp:Parameter Name="Original_id" Type="Int32" />
                        </UpdateParameters>
                    </asp:ObjectDataSource>
                </td>
                <td class="auto-style5">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Gönder" BackColor="#FFFF99" BorderColor="Red" BorderStyle="Outset" BorderWidth="3px" Font-Bold="True" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" ForeColor="Black" />
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:ObjectDataSource ID="ObjectDataSource3" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="DataSetTableAdapters.forumTableAdapter" UpdateMethod="Update">
                        <DeleteParameters>
                            <asp:Parameter Name="Original_id" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="name_surname" Type="String" />
                            <asp:Parameter Name="subject" Type="String" />
                            <asp:Parameter Name="message" Type="String" />
                            <asp:Parameter Name="date" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="name_surname" Type="String" />
                            <asp:Parameter Name="subject" Type="String" />
                            <asp:Parameter Name="message" Type="String" />
                            <asp:Parameter Name="date" Type="String" />
                            <asp:Parameter Name="Original_id" Type="Int32" />
                        </UpdateParameters>
                    </asp:ObjectDataSource>
                </td>
            </tr>
        </table>
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [forum] WHERE ([subject] = ?) ORDER BY [id] DESC">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="subject2" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <div class="test">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="15" CssClass="auto-style6" DataKeyNames="id" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="1200px" AllowPaging="True" ForeColor="Black" GridLines="Vertical" PageSize="5">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <Columns>
                <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" Visible="False"></asp:BoundField>
                <asp:BoundField DataField="name_surname" HeaderText="user_name" SortExpression="name_surname">
                <ItemStyle Width="150px" />
                </asp:BoundField>
                <asp:BoundField DataField="subject" HeaderText="subject" SortExpression="subject" Visible="False" />
                <asp:BoundField DataField="message" HeaderText="message" SortExpression="message"></asp:BoundField>
                <asp:BoundField DataField="date" HeaderText="date" SortExpression="date">
                <ItemStyle Width="150px" />
                </asp:BoundField>
            </Columns>
            <EditRowStyle Height="40px" />
            <EmptyDataTemplate>
                <div>
                    <strong>Bu konu hakkında henüz bir gönderi bulunmuyor. İlk gönderiyi sen gönderebilirsin.</strong></div>
            </EmptyDataTemplate>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" Height="20px" />
            <PagerStyle ForeColor="Black" HorizontalAlign="Center" BackColor="#999999" />
            <RowStyle Height="40px" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="Gray" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
        </div>
        <br />
        <br />
        <asp:Button ID="exitButton" runat="server" OnClick="Button4_Click" Text="Çıkış" />
        <br />
        <br />
        <br />
    </form>
</body>
</html>
