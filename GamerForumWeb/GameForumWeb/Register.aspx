<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

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
            height: 318px;
        }
        div{
     background-color: transparent;
     height: 120px;
     width: 248px;
     margin:50px auto;
}
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table style="border-style: solid; border-width: 0px; border-color: white; margin: auto;">
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Username:" ForeColor="White" Font-Bold="False" Font-Size="XX-Large"></asp:Label></td>
                <td>
                    <asp:TextBox ID="UserName" runat="server" MaxLength="15"></asp:TextBox></td>
            </tr>    
                <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Password:" ForeColor="White" Font-Bold="False" Font-Size="XX-Large"></asp:Label></td>
                <td>
                    <asp:TextBox ID="Password" runat="server" MaxLength="15" TextMode="Password"></asp:TextBox></td>
            </tr>   
                <tr>
                <td>
                    <asp:Button ID="Button1" runat="server" Height="27px" OnClick="Button1_Click" Text="Back to Homepage" BackColor="White" Font-Bold="True" Font-Size="Large" />
                    </td>
                <td>
                    <asp:Button ID="btnRegister" runat="server" Text="Register" OnClick="btnRegister_Click" Height="27px" Width="177px" BackColor="White" Font-Bold="True" Font-Size="Large" />
                    </td>
            </tr> 
                <tr>
                    <td>
                        <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#FF3300" Text="Label" Visible="False"></asp:Label>
                    </td>
                    
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
