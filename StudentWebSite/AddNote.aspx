<%@ Page Title="" Language="C#" MasterPageFile="~/Teacher.master" AutoEventWireup="true" CodeFile="AddNote.aspx.cs" Inherits="AddNote" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <form id="frmAddAnnouncement" runat="server">
        <div class="form-group">
            <div>
                <asp:Label ID="lblOgrenci" for="ddlOgrenciler" runat="server" Text="Öğrenci"></asp:Label>
                <asp:DropDownList ID="ddlOgrenciler" runat="server" CssClass="form-control"></asp:DropDownList>
            </div><br/>
            <div>
                <asp:Label ID="lblDers" for="ddlDersler" runat="server" Text="Ders"></asp:Label>
                <asp:DropDownList ID="ddlDersler" runat="server" CssClass="form-control"></asp:DropDownList>
            </div><br />
            <div>
                <asp:Label ID="lblSinav1" For="txtSinav1" runat="server" Text="1. Sınav"></asp:Label>
                <asp:TextBox ID="txtSinav1" runat="server" CssClass="form-control" ></asp:TextBox>
            </div><br/>
            <div>
                <asp:Label ID="lblSinav2" For="txtSinav2" runat="server" Text="2. Sınav"></asp:Label>
                <asp:TextBox ID="txtSinav2" runat="server" CssClass="form-control" ></asp:TextBox>
            </div><br/>
            <div>
                <asp:Label ID="lblSinav3" For="txtSinav3" runat="server" Text="3. Sınav"></asp:Label>
                <asp:TextBox ID="txtSinav3" runat="server" CssClass="form-control" ></asp:TextBox>
            </div><br/>
            <div>
                <asp:Label ID="lblProje" For="txtProje" runat="server" Text="Proje Notu"></asp:Label>
                <asp:TextBox ID="txtProje" runat="server" CssClass="form-control"></asp:TextBox>
            </div><br/>
            <div>
                <asp:Label ID="lblOrtalama" For="txtOrtalama" runat="server" Text="Ortalama"></asp:Label>
                <asp:TextBox ID="txtOrtalama" runat="server" CssClass="form-control" Enabled="False"></asp:TextBox>
            </div><br/>
            <div>
                <asp:Label ID="lblDurum" For="txtDurum" runat="server" Text="Durum"></asp:Label>
                <asp:TextBox ID="txtDurum" runat="server" CssClass="form-control" Enabled="False"></asp:TextBox>
            </div><br/>
            <asp:Button ID="btnKaydet" runat="server" Text="Kaydet" CssClass="btn btn-info" OnClick="btnKaydet_Click" />
        </div>
    </form>
</asp:Content>

