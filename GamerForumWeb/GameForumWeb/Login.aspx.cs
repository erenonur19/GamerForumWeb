using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Data;


public partial class Login : System.Web.UI.Page
{
    OleDbConnection con = new OleDbConnection(@"Provider = Microsoft.ACE.OLEDB.12.0; Data Source = C:\Users\ERONKA\Desktop\Gamer_Forum_Web\Gamer Forum Web\GamerForumWeb\GameForumWeb\App_Data\LoginDatabase.accdb");

    OleDbCommand cmd = new OleDbCommand();
    OleDbDataReader rd;

    protected void Page_Load(object sender, EventArgs e) 
    {
        lblErrorMsg.Visible = false;
    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        con.Open();
        cmd.Connection = con;
        cmd.CommandText = "select * from Users WHERE UserName='" + UserNameBox.Text + "'and Password='" + PasswordBox.Text + "'";
        rd = cmd.ExecuteReader();
        int count = 0;
        
        while (rd.Read())
        {
            count = count + 1;
        }

        if (count == 1)
        {                  
            Session.Add("user", UserNameBox.Text);
            Response.Redirect("forum.aspx");
        }
        if (count > 1)
        {
            lblErrorMsg.Visible = true;
            lblErrorMsg.Text = "Duplicate username and password!";
        }
        if (count != 1)
        {
            lblErrorMsg.Visible = true;
            lblErrorMsg.Text = "Incorrect username and password!";
        }
        con.Close();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Register.aspx");
    }
}