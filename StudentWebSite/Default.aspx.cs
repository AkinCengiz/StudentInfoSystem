using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataSetTableAdapters;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        tbl_Ogrenciler1TableAdapter ogrenciler1TableAdapter = new tbl_Ogrenciler1TableAdapter();
        Repeater1.DataSource = ogrenciler1TableAdapter.OgrencileriGetir();
        //tbl_OgrencilerTableAdapter ogrencilerTableAdapter = new tbl_OgrencilerTableAdapter();
        //Repeater1.DataSource = ogrencilerTableAdapter.OgrencileriGetir();
        Repeater1.DataBind();
    }
}