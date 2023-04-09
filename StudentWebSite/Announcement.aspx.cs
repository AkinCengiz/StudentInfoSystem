using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataSetTableAdapters;

public partial class Duyurular : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        tbl_DuyurularTableAdapter duyurularTableAdapter = new tbl_DuyurularTableAdapter();
        Repeater1.DataSource = duyurularTableAdapter.DuyuruGetir();
        Repeater1.DataBind();
    }
}