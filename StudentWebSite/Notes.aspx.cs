using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataSetTableAdapters;

public partial class Notes : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        tbl_NotlarTableAdapter notlarTableAdapter = new tbl_NotlarTableAdapter();
        Repeater1.DataSource = notlarTableAdapter.NotlariGetir();
        Repeater1.DataBind();
    }
}