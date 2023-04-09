using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;
using DataSetTableAdapters;

public partial class AddStudent : System.Web.UI.Page
{
    private tbl_OgrencilerTableAdapter _ogrencilerTableAdapter;
    protected void Page_Load(object sender, EventArgs e)
    {
        _ogrencilerTableAdapter = new tbl_OgrencilerTableAdapter();
    }

    protected void btnKaydet_Click(object sender, EventArgs e)
    {

        _ogrencilerTableAdapter.OgrenciEkle(txtOgrenciAd.Text, txtOgrenciSoyad.Text, Convert.ToInt32(ddlKulup.SelectedValue),
            txtCinsiyet.Text, txtTelefon.Text, txtMail.Text, txtFotograf.Text, txtSifre.Text);
        Response.Redirect("Default.aspx");
    }
}