using System;
using System.Collections.Generic;
using System.Data.OleDb;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class forum : System.Web.UI.Page
{
    OleDbConnection con = new OleDbConnection(@"Provider = Microsoft.ACE.OLEDB.12.0; Data Source = C:\Users\BatuBoy\Desktop\Gamer Forum Web\GamerForumWeb\GameForumWeb\App_Data\Database.accdb");

    protected void Page_Load(object sender, EventArgs e)
    {
        Button3.Text = (string)Session["user"];

        if ((string)Session["user"] == "erenonur" || (string)Session["user"] == "batuboy" || (string)Session["user"] == "admin")
        {
            TextBox3.Visible = true;
            Button2.Visible = true;
        }
        else
        {
            TextBox3.Visible = false;
            Button2.Visible = false;
        }

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Label1.Text = DateTime.Today.ToShortDateString() + " " + DateTime.Now.ToShortTimeString();
        ObjectDataSource2.Insert();
        GridView1.DataBind();     
        TextBox2.Text = "";
    }

    protected void ObjectDataSource1_Selecting(object sender, ObjectDataSourceSelectingEventArgs e)
    {

    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }

    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {
        
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("profile_page.aspx");
    }

    protected void ObjectDataSource2_Selecting(object sender, ObjectDataSourceSelectingEventArgs e)
    {

    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("Login.aspx");
    }

    protected void SqlDataSource3_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }

    protected void Button2_Click1(object sender, EventArgs e)
    {
        if(TextBox3.Text != null)
        {
            con.Open();
            OleDbCommand cmd = new OleDbCommand("INSERT INTO Konular (konu_adı) VALUES ('"+TextBox3.Text+"')", con);      
            cmd.ExecuteNonQuery();
        }      
    }
}