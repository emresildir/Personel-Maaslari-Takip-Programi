<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MaasVeriGuncelleme.aspx.cs" Inherits="IPT247.MaasVeriGuncelleme" %>

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
                    <td class="auto-style2" colspan="2"><strong>Maaş Veri Güncelleme</strong></td>
                </tr>
                <tr>
                    <td>Personel Seçiniz:</td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="Pers_Isim" DataValueField="Pers_ID">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Maas_ID,Pers_ID" DataSourceID="SqlDataSource3">
                            <Columns>
                                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                                <asp:BoundField DataField="Maas_ID" HeaderText="Maas_ID" InsertVisible="False" ReadOnly="True" SortExpression="Maas_ID" />
                                <asp:BoundField DataField="Pers_ID" HeaderText="Pers_ID" InsertVisible="False" ReadOnly="True" SortExpression="Pers_ID" />
                                <asp:BoundField DataField="Maas_Odeme_Tarihi" HeaderText="Maas_Odeme_Tarihi" SortExpression="Maas_Odeme_Tarihi" />
                                <asp:BoundField DataField="Maas_Tutari" HeaderText="Maas_Tutari" SortExpression="Maas_Tutari" />
                                <asp:BoundField DataField="Maas_Komisyon" HeaderText="Maas_Komisyon" SortExpression="Maas_Komisyon" />
                            </Columns>
                        </asp:GridView>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3"></td>
                    <td class="auto-style3">
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:con_Personeller %>" DeleteCommand="DELETE FROM tbl_PersonelMaaslari WHERE (Maas_ID = @Maas_ID)" SelectCommand="SELECT * FROM [tbl_PersonelMaaslari] WHERE (Pers_ID=@Pers_ID)">
                            <DeleteParameters>
                                <asp:Parameter Name="Maas_ID" />
                            </DeleteParameters>
                            <SelectParameters>
                                <asp:ControlParameter ControlID="DropDownList1" Name="Pers_ID" PropertyName="SelectedValue" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                        <asp:Button ID="Button1" runat="server" OnClientClick="window.close()" Text="Formu Kapat" />
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:con_Personeller %>" SelectCommand="SELECT [Pers_ID], [Pers_Isim] FROM [tbl_Personeller]"></asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:con_Personeller %>" SelectCommand="SELECT tbl_PersonelMaaslari.Maas_ID, tbl_Personeller.Pers_ID, tbl_PersonelMaaslari.Maas_Odeme_Tarihi, tbl_PersonelMaaslari.Maas_Tutari, tbl_PersonelMaaslari.Maas_Komisyon FROM tbl_PersonelMaaslari INNER JOIN tbl_Personeller ON tbl_PersonelMaaslari.Pers_ID = tbl_Personeller.Pers_ID WHERE (tbl_Personeller.Pers_ID = @Pers_ID)" DeleteCommand="DELETE FROM tbl_PersonelMaaslari WHERE Pers_ID=@Pers_ID" UpdateCommand="UPDATE tbl_PersonelMaaslari SET Pers_ID =@Pers_ID, Maas_Odeme_Tarihi =@Maas_Odeme_Tarihi, Maas_Tutari =@Maas_Tutari, Maas_Komisyon =@Maas_Komisyon WHERE (Maas_ID =@Maas_ID)">
                            <DeleteParameters>
                                <asp:Parameter Name="Pers_ID" />
                            </DeleteParameters>
                            <SelectParameters>
                                <asp:ControlParameter ControlID="DropDownList1" Name="Pers_ID" PropertyName="SelectedValue" />
                            </SelectParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="Pers_ID" />
                                <asp:Parameter Name="Maas_Odeme_Tarihi" Type="DateTime" />
                                <asp:Parameter Name="Maas_Tutari" Type="Decimal" />
                                <asp:Parameter Name="Maas_Komisyon" Type="Decimal" />
                                <asp:Parameter Name="Maas_ID" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>

        </div>
    </form>
</body>
</html>
