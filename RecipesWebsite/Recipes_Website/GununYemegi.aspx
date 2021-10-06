<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="GununYemegi.aspx.cs" Inherits="Recipes_Website.GununYemegi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style6 {
        width: 100%;
    }
        .auto-style14 {
            width: 100%;
        }
        .auto-style15 {
            text-align: center;
        }
        .auto-style16 {
            text-align: center;
            font-weight: 700;
            font-size: large;
        }
        .auto-style18 {
            text-align: left;
        }
        .auto-style19 {}
        .auto-style20 {
            font-size: small;
        }
        .auto-style21 {
            text-align: left;
            text-decoration: underline;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style6">
    <tr>
        <td>
            <asp:DataList ID="DataList2" runat="server" CssClass="auto-style12 auto-style13" OnSelectedIndexChanged="DataList2_SelectedIndexChanged">
                <ItemTemplate>
                    <table class="auto-style14">
                        <tr>
                            <td class="auto-style16">
                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("GununYemegiAd") %>' CssClass="auto-style15"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style15">
                                <asp:Image ID="Image1" runat="server" CssClass="auto-style19" Height="161px" ImageUrl='<%# Eval("GununYemegiResim") %>' Width="214px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style18">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style20">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>Puan:</strong> </span>
                                <asp:Label ID="Label3" runat="server" CssClass="auto-style20" Text='<%# Eval("GununYemegiPuan") %>'></asp:Label>
                                <span class="auto-style20">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>Tarih:</strong> </span>
                                <asp:Label ID="Label4" runat="server" CssClass="auto-style20" Text='<%# Eval("GununYemegiTarih") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style21"><strong>Malzemeler</strong></td>
                        </tr>
                        <tr>
                            <td class="auto-style18">
                                <asp:Label ID="Label5" runat="server" Text='<%# Eval("GununYemegiMalzeme") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style21"><strong>Yapılışı</strong></td>
                        </tr>
                        <tr>
                            <td class="auto-style18">
                                <asp:Label ID="Label6" runat="server" Text='<%# Eval("GununYemegiTarif") %>'></asp:Label>
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
        </td>
    </tr>
    </table>
</asp:Content>
