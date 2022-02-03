<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BolumVeriGiris.aspx.cs" Inherits="IPT247.BolumVeriGiris" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 72%;
        }
        .auto-style2 {
            text-align: center;
        }
        .auto-style3 {
            height: 37px;
            width: 949px;
        }
        .auto-style4 {
            width: 130px;
        }
        .auto-style5 {
            height: 37px;
            width: 130px;
        }
        .auto-style6 {
            width: 130px;
            height: 23px;
        }
        .auto-style7 {
            width: 1176px;
        }
        .auto-style8 {
            width: 1176px;
            height: 23px;
        }
        .auto-style9 {
            height: 37px;
            width: 1176px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td colspan="2">
                        <table class="auto-style3" style="color: rgb(0, 0, 0); font-family: quot;  font-size: medium; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px;  text-decoration-style: initial; text-decoration-color: initial;">
                            <tr>
                                <td class="auto-style2" colspan="4" style="font-size: x-large;"><strong>Bölümler Veri Giriş Formu</strong></td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" AllowSorting="True" DataKeyNames="Bolum_ID" DataSourceID="SqlDataSource1" Width="426px">
                            <Columns>
                                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                                <asp:BoundField DataField="Bolum_ID" HeaderText="Bolum_ID" InsertVisible="False" ReadOnly="True" SortExpression="Bolum_ID" />
                                <asp:BoundField DataField="Bolum_Adi" HeaderText="Bolum_Adi" SortExpression="Bolum_Adi" />
                                <asp:BoundField DataField="Bolum_Tel" HeaderText="Bolum_Tel" SortExpression="Bolum_Tel" />
                                <asp:BoundField DataField="Pers_Isim" HeaderText="Pers_Isim" ReadOnly="True" SortExpression="Pers_Isim" />
                            </Columns>
                        </asp:GridView>
                    </td>
                    <td class="auto-style7">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6">
                        <asp:Button ID="Button1" runat="server" Text="Yeni Bölüm Veri Girişi Aç" Width="271px" OnClick="Button1_Click" />
                    </td>
                    <td class="auto-style8">
                        <asp:Button ID="Button2" runat="server" Text="Sayfayı Kapat" Width="164px" OnClientClick="window.close()" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="Label2" runat="server" Text="Bölüm Adı:" Visible="False"></asp:Label>
                    </td>
                    <td class="auto-style7">
                        <asp:TextBox ID="TextBox1" runat="server" Visible="False" Width="180px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="Label3" runat="server" Text="Bölüm Tel:" Visible="False"></asp:Label>
                    </td>
                    <td class="auto-style7">
                        <asp:TextBox ID="TextBox2" runat="server" Visible="False" Width="180px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="Label4" runat="server" Text="Müdür:" Visible="False"></asp:Label>
                    </td>
                    <td class="auto-style7">
                        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="Pers_Isim" DataValueField="Pers_ID" Visible="False">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="Label1" runat="server" ForeColor="Red" Text="Label" Visible="False"></asp:Label>
                    </td>
                    <td class="auto-style7">
                        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Veriyi Kaydet" Visible="False" Width="161px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:con_Personeller %>" DeleteCommand="DELETE FROM tbl_Bolumler WHERE Bolum_ID=@Bolum_ID" SelectCommand="SELECT tbl_Bolumler.Bolum_ID, tbl_Bolumler.Bolum_Adi, tbl_Bolumler.Bolum_Tel, tbl_Personeller.Pers_Isim FROM tbl_Bolumler INNER JOIN tbl_Personeller ON tbl_Bolumler.Mudur_ID = tbl_Personeller.Pers_ID" UpdateCommand="UPDATE tbl_Bolumler
SET Bolum_Adi=@Bolum_Adi, Bolum_Tel=@Bolum_Tel
WHERE Bolum_ID=@Bolum_ID" InsertCommand="INSERT INTO tbl_Bolumler (Bolum_Adi, Bolum_Tel, Mudur_ID)
VALUES (@Bolum_Adi, @Bolum_Tel, @Mudur_ID)">
                            <DeleteParameters>
                                <asp:Parameter Name="Bolum_ID" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="Bolum_Adi" />
                                <asp:Parameter Name="Bolum_Tel" />
                                <asp:Parameter Name="Mudur_ID" />
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="Bolum_Adi" />
                                <asp:Parameter Name="Bolum_Tel" />
                                <asp:Parameter Name="Bolum_ID" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                    </td>
                    <td class="auto-style9">
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:con_Personeller %>" SelectCommand="SELECT [Pers_ID], [Pers_Isim] FROM [tbl_Personeller]"></asp:SqlDataSource>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
