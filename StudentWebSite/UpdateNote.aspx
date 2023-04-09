<%@ Page Title="" Language="C#" MasterPageFile="~/Teacher.master" AutoEventWireup="true" CodeFile="UpdateNote.aspx.cs" Inherits="UpdateNote" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <form ID="frmAddStudent" runat="server">
        <div class="form-group">
            <div>
                <asp:Label ID="lblId" for="txtNotId" runat="server" Text="ID"></asp:Label>
                <asp:TextBox ID="txtNotId" runat="server" CssClass="form-control"></asp:TextBox>
            </div><br/>
            <div>
                <asp:Label ID="lblDersler" for="ddlDersler" runat="server" Text="Ders"></asp:Label>
                <asp:DropDownList ID="ddlDersler" runat="server" CssClass="form-control"></asp:DropDownList>
            </div><br/>
            <div>
                <asp:Label ID="lblOgrenci" for="ddlOgrenciler" runat="server" Text="Öğrenci"></asp:Label>
                <asp:DropDownList ID="ddlOgrenciler" runat="server" CssClass="form-control"></asp:DropDownList>
            </div><br/>
            <div>
                <asp:Label ID="lblSinav1" for="txtSinav1" runat="server" Text="Sınav 1"></asp:Label>
                <asp:TextBox ID="txtSinav1" runat="server" CssClass="form-control"></asp:TextBox>
            </div><br/>
            <div>
                <asp:Label ID="lblSinav2" for="txtSinav2" runat="server" Text="Sınav 2"></asp:Label>
                <asp:TextBox ID="txtSinav2" runat="server" CssClass="form-control"></asp:TextBox>
            </div><br/>
            <div>
                <asp:Label ID="lblSinav3" for="txtSinav3" runat="server" Text="Sınav 3"></asp:Label>
                <asp:TextBox ID="txtSinav3" runat="server" CssClass="form-control"></asp:TextBox>
            </div><br/>
            <div>
                <asp:Label ID="lblProje" for="txtProje" runat="server" Text="Proje"></asp:Label>
                <asp:TextBox ID="txtProje" runat="server" CssClass="form-control"></asp:TextBox>
            </div><br/>
            <div>
                <asp:Label ID="lblOrtalama" for="txtOrtalama" runat="server" Text="Ortalama"></asp:Label>
                <asp:TextBox ID="txtOrtalama" runat="server" CssClass="form-control"></asp:TextBox>
            </div><br/>
            <div>
                <asp:Label ID="lblDurum" for="txtDurum" runat="server" Text="Durum"></asp:Label>
                <asp:TextBox ID="txtDurum" runat="server" CssClass="form-control"></asp:TextBox>
            </div><br/>
            <asp:Button ID="btnHesapla" runat="server" Text="Hesapla" CssClass="btn btn-warning" OnClick="btnHesapla_Click" />
            <asp:Button ID="btnGuncelle" runat="server" Text="Güncelle" CssClass="btn btn-info" OnClick="btnGuncelle_Click" />
        </div>
    </form>
</asp:Content>

