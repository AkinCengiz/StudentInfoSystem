using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataSetTableAdapters;

public partial class UpdateLesson : System.Web.UI.Page
{
    private tbl_DerslerTableAdapter _derslerTableAdapter;
    private byte _id;
    protected void Page_Load(object sender, EventArgs e)
    {
        _derslerTableAdapter = new tbl_DerslerTableAdapter();
        if (!IsPostBack)
        {
            _id = Convert.ToByte(Request.QueryString["DersId"].ToString());
            txtDersId.Text = _id.ToString();
            txtDersAd.Text = _derslerTableAdapter.DersGetir(_id)[0].DersAd;
        }
    }

    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        _derslerTableAdapter = new tbl_DerslerTableAdapter();
        _derslerTableAdapter.DersGuncelle(txtDersAd.Text,Byte.Parse(txtDersId.Text));
        Response.Redirect("Lessons.aspx");
    }
}