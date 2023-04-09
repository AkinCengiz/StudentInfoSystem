<%@ Page Title="" Language="C#" MasterPageFile="~/Teacher.master" AutoEventWireup="true" CodeFile="AddLesson.aspx.cs" Inherits="AddLesson" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
     <form ID="frmAddLesson" runat="server">
        <div class="form-group">
            <div>
                <asp:Label ID="lblAd" for="txtDersAd" runat="server" Text="Ders Ad"></asp:Label>
                <asp:TextBox ID="txtDersAd" runat="server" CssClass="form-control"></asp:TextBox>
            </div><br/>
            <asp:Button ID="btnKaydet" runat="server" Text="Kaydet" CssClass="btn btn-info" OnClick="btnKaydet_Click" />
        </div>
    </form>
</asp:Content>

