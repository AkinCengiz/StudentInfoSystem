using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataSetTableAdapters;

public partial class AddNote : System.Web.UI.Page
{
    private tbl_NotlarTableAdapter _notlarTableAdapter;
    protected void Page_Load(object sender, EventArgs e)
    {
        _notlarTableAdapter = new tbl_NotlarTableAdapter();
        if (!IsPostBack)
        {
            tbl_DerslerTableAdapter derslerTableAdapter = new tbl_DerslerTableAdapter();
            tbl_Ogrenciler1TableAdapter ogrencilerTableAdapter = new tbl_Ogrenciler1TableAdapter();
            ddlDersler.DataSource = derslerTableAdapter.DersleriGetir();
            ddlDersler.DataTextField = "DersAd";
            ddlDersler.DataValueField = "DersId";
            ddlDersler.DataBind();
            ddlOgrenciler.DataSource = ogrencilerTableAdapter.OgrencileriGetir();
            ddlOgrenciler.DataTextField = "Ogrenci";
            ddlOgrenciler.DataValueField = "OgrID";
            ddlOgrenciler.DataBind();
        }
    }

    protected void btnKaydet_Click(object sender, EventArgs e)
    {
        decimal ortalama = (decimal.Parse(txtSinav1.Text) + decimal.Parse(txtSinav2.Text) +
                            decimal.Parse(txtSinav3.Text) + decimal.Parse(txtProje.Text)) / 4;
        txtOrtalama.Text = ortalama.ToString("0.00");
        bool durum;
        if (ortalama > 55)
        {
            durum = true;
        }
        else
        {
            durum = false;
        }
        txtDurum.Text = durum.ToString();
        byte ders = byte.Parse(ddlDersler.SelectedValue);
        int ogrenci = int.Parse(ddlOgrenciler.SelectedValue);
        
        if (_notlarTableAdapter.OgrenciNotGetir(ders, ogrenci).Count>0)
        {
            _notlarTableAdapter.OgrenciDersGuncelle(byte.Parse(txtSinav1.Text), byte.Parse(txtSinav2.Text),
                byte.Parse(txtSinav3.Text),
                byte.Parse(txtProje.Text), decimal.Parse(txtOrtalama.Text), bool.Parse(txtDurum.Text),
                Byte.Parse(ddlDersler.SelectedValue), int.Parse(ddlOgrenciler.SelectedValue));
        }
        else
        {
            _notlarTableAdapter.NotEkle(Byte.Parse(ddlDersler.SelectedValue), int.Parse(ddlOgrenciler.SelectedValue),
                byte.Parse(txtSinav1.Text), byte.Parse(txtSinav2.Text), byte.Parse(txtSinav3.Text),
                byte.Parse(txtProje.Text), decimal.Parse(txtOrtalama.Text), bool.Parse(txtDurum.Text));
        }
        Response.Redirect("Notes.aspx");

    }
}