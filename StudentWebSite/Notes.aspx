<%@ Page Title="" Language="C#" MasterPageFile="~/Teacher.master" AutoEventWireup="true" CodeFile="Notes.aspx.cs" Inherits="Notes" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table class="table table-bordered table-hover">
        <thead>
        <tr>
            <th>ID</th>
            <th>DERS</th>
            <th>ÖĞRENCİ</th>
            <th>SINAV 1</th>
            <th>SINAV 2</th>
            <th>SINAV 3</th>
            <th>PROJE</th>
            <th>ORTALAMA</th>
            <th>DURUM</th>
            <th>İŞLEMLER</th>
        </tr>
        </thead>
        <tbody>
        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                <tr>
                    <td><%#Eval("NotId") %></td>
                    <td><%#Eval("DersAd") %></td>
                    <td><%#Eval("Ogrenci") %></td>
                    <td><%#Eval("Sinav1") %></td>
                    <td><%#Eval("Sinav2") %></td>
                    <td><%#Eval("Sinav3") %></td>
                    <td><%#Eval("Proje") %></td>
                    <td><%#Eval("Ortalama") %></td>
                    <td><%#Eval("Durum") %></td>
                    <td>
                        <asp:HyperLink NavigateUrl='<%#"DeleteNote.aspx?NotId="+Eval("NotId") %>' runat="server" CssClass="btn btn-danger">Sil</asp:HyperLink>
                        <asp:HyperLink NavigateUrl='<%#"UpdateNote.aspx?NotId="+Eval("NotId") %>' runat="server" CssClass="btn btn-success">Güncelle</asp:HyperLink>
                    </td>
                </tr>
            </ItemTemplate>
        </asp:Repeater>
        </tbody>
    </table>
</asp:Content>

