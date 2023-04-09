using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataSetTableAdapters;

public partial class AddAnnouncement : System.Web.UI.Page
{
    private tbl_DuyurularTableAdapter _duyurularTableAdapter;
    protected void Page_Load(object sender, EventArgs e)
    {
        _duyurularTableAdapter = new tbl_DuyurularTableAdapter();
        if (!IsPostBack)
        {
            tbl_OgretmenlerTableAdapter ogretmenlerTableAdapter = new tbl_OgretmenlerTableAdapter();
            ddlOgretmenler.DataSource = ogretmenlerTableAdapter.GetOgretmenler();
            ddlOgretmenler.DataTextField = "Ogretmen";
            ddlOgretmenler.DataValueField = "OgrtId";
            ddlOgretmenler.DataBind();
        }
        
    }

    protected void btnKaydet_Click(object sender, EventArgs e)
    {
        _duyurularTableAdapter.DuyuruEkle(txtBaslik.Text, txtIcerik.Text, Convert.ToByte(ddlOgretmenler.SelectedValue));
        Response.Redirect("Announcement.aspx");
    }
}