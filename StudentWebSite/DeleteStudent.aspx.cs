using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataSetTableAdapters;

public partial class DeleteStudent : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int id = Convert.ToInt32(Request.QueryString["OgrID"].ToString());
        tbl_OgrencilerTableAdapter ogrencilerTableAdapter = new tbl_OgrencilerTableAdapter();
        ogrencilerTableAdapter.OgrenciSil(id);
        Response.Redirect("Default.aspx");
    }
}