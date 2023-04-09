using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataSetTableAdapters;

public partial class DeleteAnnouncement : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        tbl_DuyurularTableAdapter duyurularTableAdapter = new tbl_DuyurularTableAdapter();
        int id = Convert.ToInt32(Request.QueryString["DuyuruId"].ToString());
        duyurularTableAdapter.DuyuruSil(id);
        Response.Redirect("Announcement.aspx");
    }
}