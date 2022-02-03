<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PersonelVeriGirisi.aspx.cs" Inherits="IPT247.PersonelVeriGirisi" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            font-size: x-large;
            text-align: center;
        }
        .auto-style3 {
            height: 23px;
        }
        .auto-style4 {
            height: 25px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2" colspan="4"><strong>Personel Veri Giriş Formu</strong></td>
                </tr>
                <tr>
                    <td>Adı:</td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td>
                    <td>Soyadı:</td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Cinsiyeti:</td>
                    <td class="auto-style3">
                        <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True" RepeatDirection="Horizontal">
                            <asp:ListItem Value="1">Erkek</asp:ListItem>
                            <asp:ListItem Value="2">Kadın</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                    <td class="auto-style3">Doğum Tarihi:</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="TextBox3" runat="server" TextMode="Date"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Ünvan:</td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="Unvan" DataValueField="Kategori_ID">
                        </asp:DropDownList>
                    </td>
                    <td>Bölümü:</td>
                    <td>
                        <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource3" DataTextField="Bolum_Adi" DataValueField="Bolum_ID">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">İşe Giriş Tarihi:</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style4"></td>
                    <td class="auto-style4">
                        <asp:CheckBox ID="CheckBox1" runat="server" AutoPostBack="True" Checked="True" Text="Personel Aktif mi?" />
                    </td>
                </tr>
                <tr>
                    <td>Cep Tefefon No:</td>
                    <td>
                        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                    </td>
                    <td>E-Mail:</td>
                    <td>
                        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Adres:</td>
                    <td colspan="3">
                        <asp:TextBox ID="TextBox7" runat="server" Width="800px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>İlçe:</td>
                    <td>
                        <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlDataSource4" DataTextField="Kent_Adi" DataValueField="Kategori_ID">
                        </asp:DropDownList>
                    </td>
                    <td>İi:</td>
                    <td>
                        <asp:DropDownList ID="DropDownList4" runat="server" DataSourceID="SqlDataSource5" DataTextField="Il_Adi" DataValueField="Kategori_ID">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="Verileri Sakla" OnClick="Button1_Click" />
                    </td>
                    <td>
                        <asp:Button ID="Button2" runat="server" Text="Formu Kapat" OnClientClick="window.close()" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:con_Personeller %>" InsertCommand="INSERT INTO tbl_Personeller(Pers_Adi, Pers_Soyadi, Cinsiyet_ID, Unvan_ID, Pers_DTarihi, Pers_Ise_Giris_Tarihi, Pers_Cep, Bolum_ID, Pers_Email, Pers_Adresi, Pers_Kenti, Pers_Ili, Pers_Aktif_Mi) VALUES (@Pers_Adi, @Pers_Soyadi, @Cinsiyet_ID, @Unvan_ID, @Pers_DTarihi, @Pers_Ise_Giris_Tarihi, @Pers_Cep, @Bolum_ID, @Pers_Email, @Pers_Adresi, @Pers_Kenti, @Pers_Ili, @Pers_Aktif_Mi)" SelectCommand="SELECT tbl_Personeller.* FROM tbl_Personeller">
                            <InsertParameters>
                                <asp:Parameter Name="Pers_Adi" />
                                <asp:Parameter Name="Pers_Soyadi" />
                                <asp:Parameter Name="Cinsiyet_ID" />
                                <asp:Parameter Name="Unvan_ID" />
                                <asp:Parameter Name="Pers_DTarihi" />
                                <asp:Parameter Name="Pers_Ise_Giris_Tarihi" />
                                <asp:Parameter Name="Pers_Cep" />
                                <asp:Parameter Name="Bolum_ID" />
                                <asp:Parameter Name="Pers_Email" />
                                <asp:Parameter Name="Pers_Adresi" />
                                <asp:Parameter Name="Pers_Kenti" />
                                <asp:Parameter Name="Pers_Ili" />
                                <asp:Parameter Name="Pers_Aktif_Mi" />
                            </InsertParameters>
                        </asp:SqlDataSource>
                    </td>
                    <td>
                        <asp:Label ID="Label1" runat="server" ForeColor="#FF3300" Text="Sonuç Mesajı.." Visible="False"></asp:Label>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:con_Personeller %>" SelectCommand="SELECT [Kategori_ID], [Unvan] FROM [tbl_Kategoriler]"></asp:SqlDataSource>
                    </td>
                    <td>&nbsp;</td>
                    <td>
                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:con_Personeller %>" SelectCommand="SELECT [Bolum_ID], [Bolum_Adi] FROM [tbl_Bolumler]"></asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:con_Personeller %>" SelectCommand="SELECT [Kategori_ID], [Kent_Adi] FROM [tbl_Kategoriler]"></asp:SqlDataSource>
                    </td>
                    <td>
                        <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:con_Personeller %>" SelectCommand="SELECT [Kategori_ID], [Il_Adi] FROM [tbl_Kategoriler]"></asp:SqlDataSource>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
