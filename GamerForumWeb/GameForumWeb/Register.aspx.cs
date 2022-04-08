using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

public partial class Register : System.Web.UI.Page
{
    OleDbConnection con = new OleDbConnection(@"Provider = Microsoft.ACE.OLEDB.12.0; Data Source = C:\Users\ERONKA\Desktop\Gamer_Forum_Web\Gamer Forum Web\GamerForumWeb\GameForumWeb\App_Data\LoginDatabase.accdb");

    //OleDbConnection con = new OleDbConnection(@"Provider = Microsoft.ACE.OLEDB.12.0; Data Source = C:\Users\BatuBoy\Desktop\Gamer Forum Web\GamerForumWeb\GameForumWeb\App_Data\LoginDatabase.accdb");

    OleDbCommand cmd = new OleDbCommand();
    OleDbDataReader rd;
    
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnRegister_Click(object sender, EventArgs e)
    {
        con.Open();
        OleDbCommand cmd = new OleDbCommand("INSERT INTO Users (UserName, [Password], isAdmin) VALUES (?, ?, ?)", con);
        cmd.Parameters.AddWithValue("@UserName", UserName.Text);
        cmd.Parameters.AddWithValue("@Password", Password.Text);
        cmd.Parameters.AddWithValue("@isAdmin", false);
        if (!(UserName.Text == "erenonur" || UserName.Text == "batuboy" || UserName.Text == "admin" || UserName.Text == "")) {
            if (cmd.ExecuteNonQuery() == 1)
            {
                
                Label3.Visible = true;
                Label3.Text = "Your Registiration is Succesfull! You can go back to homepage and Log In.";
            }
            else
            {
                Label3.Visible = true;
                Label3.Text = "Incorrect registration! Please try again.";
            }
        }
        else
        {
            Label3.Visible = true;
            Label3.Text = "Incorrect registration! Please try again.";
        }
        con.Close();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Login.aspx");
    }
}