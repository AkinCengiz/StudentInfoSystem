using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataSetTableAdapters;

public partial class DeleteLesson : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        byte id = Convert.ToByte(Request.QueryString["DersId"].ToString());
        tbl_DerslerTableAdapter derslerTableAdapter = new tbl_DerslerTableAdapter();
        derslerTableAdapter.DersSil(id);
        Response.Redirect("Lessons.aspx");
        
    }
}