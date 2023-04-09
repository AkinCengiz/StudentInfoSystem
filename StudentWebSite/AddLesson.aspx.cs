using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataSetTableAdapters; 

public partial class AddLesson : System.Web.UI.Page
{
    private tbl_DerslerTableAdapter _derslerTableAdapter;
    protected void Page_Load(object sender, EventArgs e)
    {
        _derslerTableAdapter = new tbl_DerslerTableAdapter();
    }

    protected void btnKaydet_Click(object sender, EventArgs e)
    {
        _derslerTableAdapter.DersEkle(txtDersAd.Text);
        Response.Redirect("Lessons.aspx");

    }
}