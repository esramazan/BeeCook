<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="TarifPaylas.aspx.cs" Inherits="Recipes_Website.TarifPaylas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style7 {
        width: 100%;
    }
    .auto-style9 {
        width: 131px;
    }
    .auto-style10 {
        width: 131px;
        text-align: right;
    }
    .auto-style13 {
        width: 120px;
        text-align: right;
        height: 32px;
    }
    .auto-style14 {
        height: 32px;
    }
        .auto-style15 {
            width: auto;
            text-align: center;
        }
        .auto-style16 {
            width: 120px;
            float: left;
            height: auto;
        }
        .auto-style17 {
            width: 150px;
            text-align: right;
            color: #000000;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style15">
    <tr>
        <td class="auto-style16">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style17">Yemek Adı</td>
        <td>
            <asp:TextBox ID="txtYemekAdi" runat="server" Width="300px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style17">Malzemeler</td>
        <td>
            <asp:TextBox ID="txtMalzemeler" runat="server" Height="120px" TextMode="MultiLine" Width="300px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style17">Yapılışı</td>
        <td>
            <asp:TextBox ID="txtYapilis" runat="server" Height="150px" TextMode="MultiLine" Width="300px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style13">Resim</td>
        <td class="auto-style14">
            <asp:FileUpload ID="FileUpload1" runat="server" EnableTheming="True" Font-Names="Times New Roman" Font-Size="17px" Width="300px" />
        </td>
    </tr>
    <tr>
        <td class="auto-style17">Ad Soyad</td>
        <td>
            <asp:TextBox ID="txtAdSoyad" runat="server" Width="300px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style17">Mail</td>
        <td>
            <asp:TextBox ID="txtMail" runat="server" Width="300px" TextMode="Email"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style3" colspan="2">
            <asp:Button ID="Button1" runat="server" BackColor="Black" BorderStyle="Solid" Font-Bold="True" Font-Names="Times New Roman" Font-Size="22px" ForeColor="#FFCC00" Height="40px" Text="Gönder" Width="295px" OnClick="Button1_Click" />
        </td>
    </tr>
</table>
</asp:Content>
