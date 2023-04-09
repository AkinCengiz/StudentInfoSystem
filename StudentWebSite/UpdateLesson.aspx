<%@ Page Title="" Language="C#" MasterPageFile="~/Teacher.master" AutoEventWireup="true" CodeFile="UpdateLesson.aspx.cs" Inherits="UpdateLesson" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <form ID="frmAddLesson" runat="server">
        <div class="form-group">
            <div>
                <asp:Label ID="lblId" for="txtDersId" runat="server" Text="Ders Id"></asp:Label>
                <asp:TextBox ID="txtDersId" runat="server" CssClass="form-control"></asp:TextBox>
            </div><br/>
            <div>
                <asp:Label ID="lblAd" for="txtDersAd" runat="server" Text="Ders Ad"></asp:Label>
                <asp:TextBox ID="txtDersAd" runat="server" CssClass="form-control"></asp:TextBox>
            </div><br/>
            <asp:Button ID="btnUpdate" runat="server" Text="Güncelle" CssClass="btn btn-success" OnClick="btnUpdate_Click" />
        </div>
    </form>
</asp:Content>

