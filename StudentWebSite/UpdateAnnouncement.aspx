<%@ Page Title="" Language="C#" MasterPageFile="~/Teacher.master" AutoEventWireup="true" CodeFile="UpdateAnnouncement.aspx.cs" Inherits="UpdateAnnouncement" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <form ID="frmUpdateAnnouncement" runat="server">
        <div class="form-group">
            <div>
                <asp:Label ID="lblID" for="txtDuyuruId" runat="server" Text="Duyuru ID"></asp:Label>
                <asp:TextBox ID="txtDuyuruId" runat="server" CssClass="form-control"></asp:TextBox>
            </div><br/>
            <div>
                <asp:Label ID="lblBaslik" for="txtBaslik" runat="server" Text="Başlık"></asp:Label>
                <asp:TextBox ID="txtBaslik" runat="server" CssClass="form-control"></asp:TextBox>
            </div><br/>
            <div>
                <asp:Label ID="lblIcerik" for="txtIcerik" runat="server" Text="İçerik"></asp:Label>
                <asp:TextBox ID="txtIcerik" TextMode="MultiLine" Rows="5" runat="server" CssClass="form-control"></asp:TextBox>
            </div><br/>
            <div>
                <asp:Label ID="lblDuyuran" for="ddlOgretmenler" runat="server" Text="Öğretmen"></asp:Label>
                <asp:DropDownList ID="ddlOgretmenler" runat="server" CssClass="form-control"></asp:DropDownList>
            </div><br/>
            <asp:Button ID="btnGuncelle" runat="server" Text="Güncelle" CssClass="btn btn-success" OnClick="btnGuncelle_Click" />
        </div>
    </form>
</asp:Content>

