using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class profile_page : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {

        Label2.Text = (string)Session["user"];
        
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("forum.aspx");
    }

    protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }
}