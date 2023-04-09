<%@ Page Title="" Language="C#" MasterPageFile="~/Teacher.master" AutoEventWireup="true" CodeFile="Lessons.aspx.cs" Inherits="Dersler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table class="table table-bordered table-hover">
        <thead>
        <tr>
            <th>ID</th>
            <th>DERS ADI</th>
        </tr>
        </thead>
        <tbody>
        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                <tr>
                    <td><%#Eval("DersId") %></td>
                    <td><%#Eval("DersAd") %></td>
                    <td>
                        <asp:HyperLink NavigateUrl='<%#"DeleteLesson.aspx?DersId="+Eval("DersId") %>' runat="server" CssClass="btn btn-danger">Sil</asp:HyperLink>
                        <asp:HyperLink NavigateUrl='<%#"UpdateLesson.aspx?DersId="+Eval("DersId") %>' runat="server" CssClass="btn btn-success">Güncelle</asp:HyperLink>
                    </td>
                </tr>
            </ItemTemplate>
        </asp:Repeater>
        </tbody>
    </table>
    <asp:HyperLink ID="HyperLink1" NavigateUrl="AddLesson.aspx" runat="server" CssClass="btn btn-info">Ders Ekle</asp:HyperLink>
</asp:Content>

