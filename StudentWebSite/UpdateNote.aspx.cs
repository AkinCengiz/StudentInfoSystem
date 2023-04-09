using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;
using DataSetTableAdapters;

public partial class UpdateNote : System.Web.UI.Page
{
    private int _id;
    private tbl_NotlarTableAdapter _noteTableAdapter;
    protected void Page_Load(object sender, EventArgs e)
    {
        tbl_Ogrenciler1TableAdapter ogrencilerTableAdapter = new tbl_Ogrenciler1TableAdapter();
        tbl_DerslerTableAdapter derslerTableAdapter = new tbl_DerslerTableAdapter();
        
        if (!IsPostBack)
        {
            ddlDersler.DataSource = derslerTableAdapter.DersleriGetir();
            ddlDersler.DataValueField = "DersId";
            ddlDersler.DataTextField = "DersAd";
            ddlDersler.DataBind();
            ddlOgrenciler.DataSource = ogrencilerTableAdapter.OgrencileriGetir();
            ddlOgrenciler.DataTextField = "Ogrenci";
            ddlOgrenciler.DataValueField = "OgrID";
            ddlOgrenciler.DataBind();
            try
            {
                _noteTableAdapter = new tbl_NotlarTableAdapter();
                _id = Convert.ToInt32(Request.QueryString["NotId"].ToString());
                var not = _noteTableAdapter.NotBul(_id)[0];
                txtNotId.Text = _id.ToString();
                ddlDersler.SelectedValue = not.DersId.ToString();
                ddlOgrenciler.Text = not.OgrId.ToString();
                txtSinav1.Text = _noteTableAdapter.NotBul(_id)[0].Sinav1.ToString();
                txtSinav2.Text = not.Sinav2.ToString();
                txtSinav3.Text = not.Sinav3.ToString();
                txtProje.Text = not.Proje.ToString();
                txtOrtalama.Text = not.Ortalama.ToString();
                txtDurum.Text = not.Durum.ToString();
            }
            catch 
            {
                
            }
        }
    }

    protected void btnGuncelle_Click(object sender, EventArgs e)
    {
        _noteTableAdapter = new tbl_NotlarTableAdapter();
        _noteTableAdapter.NotGuncelle(Byte.Parse(ddlDersler.SelectedValue), int.Parse(ddlOgrenciler.SelectedValue),
            byte.Parse(txtSinav1.Text), byte.Parse(txtSinav2.Text), byte.Parse(txtSinav3.Text),
            byte.Parse(txtProje.Text), decimal.Parse(txtOrtalama.Text), bool.Parse(txtDurum.Text),
            int.Parse(txtNotId.Text));
        Response.Redirect("Notes.aspx");
    }

    protected void btnHesapla_Click(object sender, EventArgs e)
    {
        decimal ortalama = (decimal.Parse(txtSinav1.Text) + decimal.Parse(txtSinav2.Text) +
                            decimal.Parse(txtSinav3.Text) + decimal.Parse(txtProje.Text)) / 4;
        bool durum;
        if (ortalama < 55)
        {
            durum = false;
        }
        else
        {
            durum = true;
        }

        txtOrtalama.Text = ortalama.ToString("0.00");
        txtDurum.Text = durum.ToString();
    }
}