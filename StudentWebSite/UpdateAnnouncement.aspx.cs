using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataSetTableAdapters;

public partial class UpdateAnnouncement : System.Web.UI.Page
{
    private tbl_DuyurularTableAdapter _duyurularTableAdapter;
    private int _id;
    protected void Page_Load(object sender, EventArgs e)
    {
        tbl_OgretmenlerTableAdapter ogretmenlerTableAdapter = new tbl_OgretmenlerTableAdapter();

        if (!IsPostBack)
        {
            ddlOgretmenler.DataSource = ogretmenlerTableAdapter.GetOgretmenler();
            ddlOgretmenler.DataTextField = "Ogretmen";
            ddlOgretmenler.DataValueField = "OgrtId";
            ddlOgretmenler.DataBind();
            try
            {
                _duyurularTableAdapter = new tbl_DuyurularTableAdapter();
                _id = Convert.ToInt32(Request.QueryString["DuyuruID"].ToString());
                _duyurularTableAdapter.DuyuruBulGetir(_id);
                txtDuyuruId.Text = _id.ToString();
                txtBaslik.Text = _duyurularTableAdapter.DuyuruBulGetir(_id)[0].DuyuruBaslik;
                txtIcerik.Text = _duyurularTableAdapter.DuyuruBulGetir(_id)[0].DuyuruIcerik;
                ddlOgretmenler.SelectedValue = _duyurularTableAdapter.DuyuruBulGetir(_id)[0].DuyuruyuYapan.ToString();

            }
            catch 
            {
                
            }
        }
    }

    protected void btnGuncelle_Click(object sender, EventArgs e)
    {
        _duyurularTableAdapter = new tbl_DuyurularTableAdapter();
        _duyurularTableAdapter.DuyuruGuncelle(txtBaslik.Text,txtIcerik.Text,Convert.ToByte(ddlOgretmenler.SelectedValue),Convert.ToInt32(txtDuyuruId.Text));
        Response.Redirect("Announcement.aspx");
    }
}