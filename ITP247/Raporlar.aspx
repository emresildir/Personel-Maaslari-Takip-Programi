<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Raporlar.aspx.cs" Inherits="IPT247.Raporlar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <table class="nav-justified">
        <tr>
            <td class="text-center" colspan="2" style="font-size: x-large"><strong>Raporlar</strong></td>
        </tr>
        <tr>
            <td class="text-center">
                <asp:Button ID="Button1" runat="server" OnClientClick="target='_blank';" PostBackUrl="~/BolumlereGorePersonellerListesi.aspx" Text="Bölümlere Göre Personeller Listesi" />
            </td>
            <td class="text-center">
                <asp:Button ID="Button2" runat="server" OnClientClick="target='_blank';" PostBackUrl="~/PersonellerIletisimRaporu.aspx" Text="Personeller İletişim Raporu" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="text-center">
                <asp:Button ID="Button3" runat="server" OnClientClick="target='_blank';" PostBackUrl="~/PersonelGrafigi.aspx" Text="Yıllara Göre Personel Maaş Grafiği" />
            </td>
            <td class="text-center">
                <asp:Button ID="Button4" runat="server" OnClientClick="target='_blank';" PostBackUrl="~/PersoneleGoreMaaslar.aspx" Text="Personele Göre Maaşlar" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
