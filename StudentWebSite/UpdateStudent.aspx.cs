using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;
using DataSetTableAdapters;

public partial class UpdateStudent : System.Web.UI.Page
{
    private tbl_OgrencilerTableAdapter _ogrencilerTableAdapter;
    int _id;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            try
            {
                _ogrencilerTableAdapter = new tbl_OgrencilerTableAdapter();
                _id = Convert.ToInt32(Request.QueryString["OgrID"].ToString());
                txtOgrenciID.Text = _id.ToString();
                txtOgrenciAd.Text = _ogrencilerTableAdapter.OgrenciGetir(_id)[0].OgrAd;
                txtOgrenciSoyad.Text = _ogrencilerTableAdapter.OgrenciGetir(_id)[0].OgrSoyad;
                ddlKulup.SelectedValue = _ogrencilerTableAdapter.OgrenciGetir(_id)[0].OgrKulup.ToString();
                txtCinsiyet.Text = _ogrencilerTableAdapter.OgrenciGetir(_id)[0].OgrCinsiyet;
                txtTelefon.Text = _ogrencilerTableAdapter.OgrenciGetir(_id)[0].OgrTelefon;
                txtMail.Text = _ogrencilerTableAdapter.OgrenciGetir(_id)[0].OgrMail;
                txtFotograf.Text = _ogrencilerTableAdapter.OgrenciGetir(_id)[0].OgrFotograf;
                txtSifre.Text = _ogrencilerTableAdapter.OgrenciGetir(_id)[0].OgrSifre;
            }
            catch 
            {
                
            }
        }
        
    }

    protected void btnGuncelle_Click(object sender, EventArgs e)
    {
        _ogrencilerTableAdapter = new tbl_OgrencilerTableAdapter();
        _ogrencilerTableAdapter.OgrenciGuncelle(txtOgrenciAd.Text,txtOgrenciSoyad.Text,Convert.ToInt32(ddlKulup.SelectedValue),txtCinsiyet.Text,txtTelefon.Text,txtMail.Text,txtFotograf.Text,txtSifre.Text,Convert.ToInt32(txtOgrenciID.Text));
        Response.Redirect("Default.aspx");
    }
}