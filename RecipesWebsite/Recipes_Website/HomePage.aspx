<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="Recipes_Website.HomePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style14 {
            width: 100%;
        }
        .auto-style16 {
            text-align: center;
            font-weight: 700;
            font-size: large;
        }
        .auto-style15 {
            text-align: center;
        }
        .auto-style18 {
            text-align: left;
        }
        .auto-style20 {
            font-size: small;
        }
        .auto-style21 {
            text-align: left;
            text-decoration: underline;
        }
        .auto-style22 {
            text-align: left;
            text-decoration: underline;
            height: 27px;
        }
        .auto-style23 {
            text-align: justify;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <asp:DataList ID="DataList2" runat="server" OnSelectedIndexChanged="DataList2_SelectedIndexChanged">
            <ItemTemplate>
                <table class="auto-style14">
                    <tr>
                        <td class="auto-style16">
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("YemekAd") %>' CssClass="auto-style15"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style15">
                            <asp:Image ID="Image1" runat="server" CssClass="auto-style19" Height="161px" ImageUrl='<%# Eval("YemekResim") %>' Width="214px" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style15"><span class="auto-style20"><strong>Kategori:</strong>&nbsp;<asp:Label ID="Label7" runat="server" Text='<%# Eval("KategoriAd") %>'></asp:Label>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>Puan:</strong> </span>
                            <asp:Label ID="Label3" runat="server" CssClass="auto-style20" Text='<%# Eval("YemekPuan") %>'></asp:Label>
                            <span class="auto-style20"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Tarih:</strong> </span>
                            <asp:Label ID="Label4" runat="server" CssClass="auto-style20" Text='<%# Eval("YemekTarih") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style22"><strong>Malzemeler</strong></td>
                    </tr>
                    <tr>
                        <td class="auto-style23">
                            <asp:Label ID="Label5" runat="server" Text='<%# Eval("YemekMalzeme") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style21"><strong>Yapılışı</strong></td>
                    </tr>
                    <tr>
                        <td class="auto-style23">
                            <asp:Label ID="Label6" runat="server" Text='<%# Eval("YemekTarif") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style18">&nbsp;</td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </p>
</asp:Content>
