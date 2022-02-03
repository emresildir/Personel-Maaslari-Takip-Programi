<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MaasVeriGirisi.aspx.cs" Inherits="IPT247.MaasVeriGirisi" %>

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
            text-align: center;
            height: 23px;
            font-size: x-large;
        }
        .auto-style3 {
            height: 23px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <table class="auto-style1">
                <tr>
                    <td class="auto-style2" colspan="2"><strong>Maaş Veri Girişi Formu</strong></td>
                </tr>
                <tr>
                    <td>Personel Adı:</td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Pers_Isim" DataValueField="Pers_ID">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Tarihi:</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Maaş:</td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Komiisyon:</td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="Veriyi Kaydet" OnClick="Button1_Click" />
                    </td>
                    <td>
                        <asp:Button ID="Button2" runat="server" Text="Sayfayı Kapat" OnClientClick="window.close()" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:con_Personeller %>" SelectCommand="SELECT [Pers_ID], [Pers_Isim] FROM [tbl_Personeller]"></asp:SqlDataSource>
                        <asp:Label ID="Label1" runat="server" BackColor="White" ForeColor="#FF3300" Text="Label" Visible="False"></asp:Label>
                    </td>
                    <td>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:con_Personeller %>" 
                            InsertCommand="INSERT INTO tbl_PersonelMaaslari(Pers_ID, Maas_Odeme_Tarihi, Maas_Tutari, Maas_Komisyon) VALUES (@Pers_ID, @Maas_Odeme_Tarihi, @Maas_Tutari, @Maas_Komisyon)" 
                            SelectCommand="SELECT tbl_PersonelMaaslari.* FROM tbl_PersonelMaaslari">
                            <InsertParameters>
                                <asp:Parameter Name="Pers_ID" />
                                <asp:Parameter Name="Maas_Odeme_Tarihi" />
                                <asp:Parameter Name="Maas_Tutari" />
                                <asp:Parameter Name="Maas_Komisyon" />
                            </InsertParameters>
                        </asp:SqlDataSource>
                    </td>
                </tr>
            </table>

        </div>
    </form>
</body>
</html>
