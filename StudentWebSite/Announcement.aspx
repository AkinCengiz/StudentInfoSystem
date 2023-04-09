<%@ Page Title="" Language="C#" MasterPageFile="~/Teacher.master" AutoEventWireup="true" CodeFile="Announcement.aspx.cs" Inherits="Duyurular" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table class="table table-bordered table-hover">
        <thead>
        <tr>
            <th>ID</th>
            <th>BAŞLIK</th>
            <th>İÇERİK</th>
            <th>DUYURU YAPAN</th>
            <th>İŞLEMLER</th>
        </tr>
        </thead>
        <tbody>
        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                <tr>
                    <td><%#Eval("DuyuruID") %></td>
                    <td><%#Eval("DuyuruBaslik") %></td>
                    <td><%#Eval("DuyuruIcerik") %></td>
                    <td><%#Eval("Duyuran") %></td>
                    <td>
                        <asp:HyperLink NavigateUrl='<%#"DeleteAnnouncement.aspx?DuyuruID="+Eval("DuyuruID") %>' runat="server" CssClass="btn btn-danger">Sil</asp:HyperLink>
                        <asp:HyperLink NavigateUrl='<%#"UpdateAnnouncement.aspx?DuyuruID="+Eval("DuyuruID") %>' runat="server" CssClass="btn btn-success">Güncelle</asp:HyperLink>
                    </td>
                </tr>
            </ItemTemplate>
        </asp:Repeater>
        </tbody>
    </table>

</asp:Content>

