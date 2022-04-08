<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title><style>
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
    </style>
    
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label3" runat="server" BorderStyle="None" ForeColor="White" Height="29px" style="margin-left: 0px" Text="WELCOME TO THE GAMER FORUM!" Width="550px" Font-Bold="True" Font-Italic="True" Font-Size="X-Large"></asp:Label>
            <table style="border-style: solid; border-width: 0px; border-color: white; margin: auto;">
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Username:" ForeColor="White" Width="160px" Height="29px" Font-Size="XX-Large"></asp:Label></td>
                <td>
                    <asp:TextBox ID="UserNameBox" runat="server" MaxLength="15"></asp:TextBox></td>
            </tr>    
                <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Password:" ForeColor="White" Font-Size="XX-Large"></asp:Label></td>
                <td>
                    <asp:TextBox ID="PasswordBox" runat="server" MaxLength="15" TextMode="Password"></asp:TextBox></td>
            </tr>   
                <tr>
                <td>
                    <asp:Button ID="Button1" runat="server" Height="27px" OnClick="Button1_Click" Text="Register" BackColor="White" Font-Bold="True" Font-Size="Large" Width="159px" />
                    </td>
                <td>
                    <asp:Button ID="btnLogin" runat="server" Text="Log In" OnClick="btnLogin_Click" Height="27px" Width="177px" BackColor="White" Font-Bold="True" Font-Size="Large" />
                    </td>
            </tr> 
                <tr>
                    <td></td>
                    <td>
                        <asp:Label ID="lblErrorMsg" runat="server" Text="Incorrect LogIn!" ForeColor="Red" Font-Size="X-Large"></asp:Label></td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
