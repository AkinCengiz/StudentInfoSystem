<%@ Page Title="" Language="C#" MasterPageFile="~/Teacher.master" AutoEventWireup="true" CodeFile="AddAnnouncement.aspx.cs" Inherits="AddAnnouncement" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <form id="frmAddAnnouncement" runat="server">
        <div class="form-group">
            <div>
                <asp:Label ID="lblDuyuruID" For="txtDuyuruId" runat="server" Text="Duyuru ID"></asp:Label>
                <asp:TextBox ID="txtDuyuruId" runat="server" CssClass="form-control" Enabled="False"></asp:TextBox>
            </div><br/>
            <div>
                <asp:Label ID="lblBaslik" For="txtBaslik" runat="server" Text="Başlık"></asp:Label>
                <asp:TextBox ID="txtBaslik" runat="server" CssClass="form-control"></asp:TextBox>
            </div><br/>
            <div>
                <asp:Label ID="Label2" For="txtIcerik" runat="server" Text="İçerik"></asp:Label>
                <asp:TextBox ID="txtIcerik" TextMode="MultiLine" Rows="5" runat="server" CssClass="form-control"></asp:TextBox>
            </div><br/>
            <%--<div>
                <asp:Label ID="lblDuyuran" for="ddlOgretmen" runat="server" Text="Öğretmen"></asp:Label>
                <asp:DropDownList ID="ddlOgretmen" DataValueField="OgrtId" DataSourceID="OgretmenlerCombo" runat="server" CssClass="form-control" DataTextField="OgrtAd"></asp:DropDownList><asp:SqlDataSource runat="server" ID="OgretmenlerCombo" ConnectionString="<%$ ConnectionStrings:BilSisOkulConnectionString %>" SelectCommand="SELECT [OgrtId], [OgrtAd] + ' ' + [OgrtSoyad] as OgrtAd FROM [tbl_Ogretmenler]"></asp:SqlDataSource>
            </div><br/>--%>
            <div>
                <asp:Label ID="lblDuyuran" for="ddlOgretmenler" runat="server" Text="Öğretmen"></asp:Label>
                <asp:DropDownList ID="ddlOgretmenler" runat="server" CssClass="form-control"></asp:DropDownList>
            </div>
            <br />
            <asp:Button ID="btnKaydet" runat="server" Text="Kaydet" CssClass="btn btn-info" OnClick="btnKaydet_Click" />
        </div>
    </form>
</asp:Content>

