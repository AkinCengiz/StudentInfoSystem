using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataSetTableAdapters;

public partial class Dersler : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        tbl_DerslerTableAdapter derslerTableAdapter = new tbl_DerslerTableAdapter();
        Repeater1.DataSource = derslerTableAdapter.DersleriGetir();
        Repeater1.DataBind();
    }
}