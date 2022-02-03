<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Formlar.aspx.cs" Inherits="IPT247.Formlar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <table class="nav-justified">
        <tr>
            <td class="text-center" colspan="2" style="height: 20px; font-size: x-large">Formlar</td>
        </tr>
        <tr>
            <td class="text-center">
                <asp:Button ID="Button1" runat="server" Text="Peronel Veri Giriş Formu" Width="230px" OnClientClick="target='_blank';" PostBackUrl="~/PersonelVeriGirisi.aspx" />
            </td>
            <td class="text-center">
                <asp:Button ID="Button2" runat="server" Text="Maaş Veri Giriş Formu" Width="230px" OnClientClick="target='_blank';" PostBackUrl="~/MaasVeriGirisi.aspx" />
            </td>
        </tr>
        <tr>
            <td style="height: 20px"></td>
            <td style="height: 20px"></td>
        </tr>
        <tr>
            <td class="text-center">
                <asp:Button ID="Button3" runat="server" Text="Personel Veri Güncelleme Formu" Width="230px" OnClientClick="target='_blank';" PostBackUrl="~/PersonelVeriGuncellemeFormu.aspx" />
            </td>
            <td class="text-center">
                <asp:Button ID="Button4" runat="server" Text="Maaş Veri Güncelleme Formu" Width="230px" OnClientClick="target='_blank';" PostBackUrl="~/MaasVeriGuncelleme.aspx" />
            </td>
        </tr>
        <tr>
            <td style="height: 20px"></td>
            <td style="height: 20px"></td>
        </tr>
        <tr>
            <td class="text-center">
                <asp:Button ID="Button5" runat="server" Text="Personel Wizard Formu" Width="230px" OnClientClick="target='_blank';" PostBackUrl="~/PersonelVeriGirisWizard.aspx" />
            </td>
            <td class="text-center">
                <asp:Button ID="Button6" runat="server" Text="Bölüm Veri Giriş Formu" Width="230px" OnClientClick="target='_blank';" PostBackUrl="~/BolumVeriGiris.aspx" />
            </td>
        </tr>
    </table>
</asp:Content>
