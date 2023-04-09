<%@ Page Title="" Language="C#" MasterPageFile="~/Teacher.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table class="table table-bordered table-hover">
        <thead>
        <tr>
            <th>ID</th>
            <th>AD</th>
            <th>SOYAD</th>
            <th>KULÜP</th>
            <th>CİNSİYET</th>
            <th>TELEFON</th>
            <th>MAİL</th>
            <th>FOTOĞRAF</th>
            <th>ŞİFRE</th>
        </tr>
        </thead>
        <tbody>
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <tr>
                        <td><%#Eval("OgrID") %></td>
                        <td><%#Eval("OgrAd") %></td>
                        <td><%#Eval("OgrSoyad") %></td>
                        <td><%#Eval("OgrKulup") %></td>
                        <td><%#Eval("OgrCinsiyet") %></td>
                        <td><%#Eval("OgrTelefon") %></td>
                        <td><%#Eval("OgrMail") %></td>
                        <td><%#Eval("OgrSifre") %></td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
        </tbody>
    </table>
</asp:Content>

