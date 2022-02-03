<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PersonelVeriGuncellemeFormu.aspx.cs" Inherits="IPT247.PersonelVeriGuncellemeFormu" %>

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
            height: 37px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2" colspan="2"><strong>Personel Veri Güncelleme</strong></td>
                </tr>
                <tr>
                    <td class="auto-style3">Personel Adı:</td>
                    <td class="auto-style3">
                        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Pers_Isim" DataValueField="Pers_ID">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="Pers_ID" DataSourceID="SqlDataSource2" Height="50px" Width="125px">
                            <Fields>
                                <asp:BoundField DataField="Pers_ID" HeaderText="Pers_ID" InsertVisible="False" ReadOnly="True" SortExpression="Pers_ID" />
                                <asp:BoundField DataField="Pers_Adi" HeaderText="Pers_Adi" SortExpression="Pers_Adi" />
                                <asp:BoundField DataField="Pers_Soyadi" HeaderText="Pers_Soyadi" SortExpression="Pers_Soyadi" />
                                <asp:BoundField DataField="Pers_Isim" HeaderText="Pers_Isim" ReadOnly="True" SortExpression="Pers_Isim" />
                                <asp:BoundField DataField="Pers_DTarihi" HeaderText="Pers_DTarihi" SortExpression="Pers_DTarihi" />
                                <asp:BoundField DataField="Pers_Ise_Giris_Tarihi" HeaderText="Pers_Ise_Giris_Tarihi" SortExpression="Pers_Ise_Giris_Tarihi" />
                                <asp:BoundField DataField="Pers_Isten_Cikis_Tarihi" HeaderText="Pers_Isten_Cikis_Tarihi" SortExpression="Pers_Isten_Cikis_Tarihi" />
                                <asp:BoundField DataField="Bolum_ID" HeaderText="Bolum_ID" SortExpression="Bolum_ID" />
                                <asp:BoundField DataField="Pers_Email" HeaderText="Pers_Email" SortExpression="Pers_Email" />
                                <asp:BoundField DataField="Pers_Cep" HeaderText="Pers_Cep" SortExpression="Pers_Cep" />
                                <asp:BoundField DataField="Pers_Tel" HeaderText="Pers_Tel" SortExpression="Pers_Tel" />
                                <asp:BoundField DataField="Pers_Il_Kodu" HeaderText="Pers_Il_Kodu" SortExpression="Pers_Il_Kodu" />
                                <asp:BoundField DataField="Pers_Ili" HeaderText="Pers_Ili" SortExpression="Pers_Ili" />
                                <asp:BoundField DataField="Pers_Adresi" HeaderText="Pers_Adresi" SortExpression="Pers_Adresi" />
                                <asp:CheckBoxField DataField="Pers_Aktif_Mi" HeaderText="Pers_Aktif_Mi" SortExpression="Pers_Aktif_Mi" />
                                <asp:BoundField DataField="Pers_TC_No" HeaderText="Pers_TC_No" SortExpression="Pers_TC_No" />
                                <asp:BoundField DataField="Pers_SGK_No" HeaderText="Pers_SGK_No" SortExpression="Pers_SGK_No" />
                                <asp:BoundField DataField="Unvan_ID" HeaderText="Unvan_ID" SortExpression="Unvan_ID" />
                                <asp:BoundField DataField="Cinsiyet_ID" HeaderText="Cinsiyet_ID" SortExpression="Cinsiyet_ID" />
                                <asp:BoundField DataField="Pers_Komisyon_Yuzdesi" HeaderText="Pers_Komisyon_Yuzdesi" SortExpression="Pers_Komisyon_Yuzdesi" />
                                <asp:BoundField DataField="Pers_Maas" HeaderText="Pers_Maas" SortExpression="Pers_Maas" />
                                <asp:BoundField DataField="Kayit_Tarihi" HeaderText="Kayit_Tarihi" SortExpression="Kayit_Tarihi" />
                                <asp:BoundField DataField="Kaydeden" HeaderText="Kaydeden" SortExpression="Kaydeden" />
                                <asp:BoundField DataField="Pers_CV_Web" HeaderText="Pers_CV_Web" SortExpression="Pers_CV_Web" />
                                <asp:BoundField DataField="Pers_CV_File" HeaderText="Pers_CV_File" SortExpression="Pers_CV_File" />
                                <asp:BoundField DataField="Pers_CV" HeaderText="Pers_CV" SortExpression="Pers_CV" />
                                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                            </Fields>
                        </asp:DetailsView>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:con_Personeller %>" SelectCommand="SELECT [Pers_ID], [Pers_Isim] FROM [tbl_Personeller]"></asp:SqlDataSource>
                    </td>
                    <td class="auto-style4">
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:con_Personeller %>" 
                            SelectCommand="SELECT [Pers_ID], [Pers_Adi], [Pers_Soyadi], [Pers_Isim], [Pers_DTarihi], [Pers_Ise_Giris_Tarihi], [Pers_Isten_Cikis_Tarihi], [Bolum_ID], [Pers_Email], [Pers_Cep], [Pers_Tel], [Pers_Il_Kodu], [Pers_Ili], [Pers_Adresi], [Pers_Aktif_Mi], [Pers_TC_No], [Pers_SGK_No], [Unvan_ID], [Cinsiyet_ID], [Pers_Komisyon_Yuzdesi], [Pers_Maas], [Kayit_Tarihi], [Kaydeden], [Pers_CV_Web], [Pers_CV_File], [Pers_CV] FROM [tbl_Personeller] WHERE ([Pers_ID] = @Pers_ID)" 
                            UpdateCommand="UPDATE tbl_Personeller SET  Pers_Adi=@Pers_Adi, Pers_Soyadi=@Pers_Soyadi, Pers_DTarihi=@Pers_DTarihi, Pers_Ise_Giris_Tarihi=@Pers_Ise_Giris_Tarihi, Pers_Isten_Cikis_Tarihi=@Pers_Isten_Cikis_Tarihi, Bolum_ID=@Bolum_ID, Pers_Email=@Pers_Email, Pers_Cep=@Pers_Cep, Pers_Tel=@Pers_Tel, Pers_Il_Kodu=@Pers_Il_Kodu, Pers_Ili=@Pers_Ili, Pers_Adresi=@Pers_Adresi, Pers_Aktif_Mi=@Pers_Aktif_Mi, Pers_TC_No=@Pers_TC_No, Pers_SGK_No=@Pers_SGK_No, Unvan_ID=@Unvan_ID, Cinsiyet_ID=@Cinsiyet_ID, Pers_Komisyon_Yuzdesi=@Pers_Komisyon_Yuzdesi, Pers_Maas=@Pers_Maas, Kayit_Tarihi=@Kayit_Tarihi, Kaydeden=@Kaydeden, Pers_CV_Web=@Pers_CV_Web, Pers_CV_File=@Pers_CV_File, Pers_CV=@Pers_CV WHERE (Pers_ID =@Pers_ID)" 
                            DeleteCommand="DELETE FROM tbl_personeller WHERE Pers_ID=@Pers_ID" 
                            InsertCommand="INSERT INTO tbl_Personeller( Pers_Adi, Pers_Soyadi, Pers_DTarihi, Pers_Ise_Giris_Tarihi, Pers_Isten_Cikis_Tarihi, Bolum_ID, Pers_Email, Pers_Cep, Pers_Tel, Pers_Il_Kodu, Pers_Ili, Pers_Adresi, Pers_Aktif_Mi, Pers_TC_No, Pers_SGK_No, Unvan_ID, Cinsiyet_ID, Pers_Komisyon_Yuzdesi, Pers_Maas, Kayit_Tarihi, Kaydeden, Pers_CV_Web, Pers_CV_File, Pers_CV) VALUES (@Pers_Adi, @Pers_Soyadi, @Pers_DTarihi, @Pers_Ise_Giris_Tarihi, @Pers_Isten_Cikis_Tarihi, @Bolum_ID, @Pers_Email, @Pers_Cep, @Pers_Tel, @Pers_Il_Kodu, @Pers_Ili, @Pers_Adresi, @Pers_Aktif_Mi, @Pers_TC_No, @Pers_SGK_No, @Unvan_ID, @Cinsiyet_ID, @Pers_Komisyon_Yuzdesi, @Pers_Maas, @Kayit_Tarihi, @Kaydeden, @Pers_CV_Web, @Pers_CV_File, @Pers_CV)">
                            <DeleteParameters>
                                <asp:Parameter Name="Pers_ID" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="Pers_Adi" />
                                <asp:Parameter Name="Pers_Soyadi" />
                                <asp:Parameter Name="Pers_DTarihi" />
                                <asp:Parameter Name="Pers_Ise_Giris_Tarihi" />
                                <asp:Parameter Name="Pers_Isten_Cikis_Tarihi" />
                                <asp:Parameter Name="Bolum_ID" />
                                <asp:Parameter Name="Pers_Email" />
                                <asp:Parameter Name="Pers_Cep" />
                                <asp:Parameter Name="Pers_Tel" />
                                <asp:Parameter Name="Pers_Il_Kodu" />
                                <asp:Parameter Name="Pers_Ili" />
                                <asp:Parameter Name="Pers_Adresi" />
                                <asp:Parameter Name="Pers_Aktif_Mi" />
                                <asp:Parameter Name="Pers_TC_No" />
                                <asp:Parameter Name="Pers_SGK_No" />
                                <asp:Parameter Name="Unvan_ID" />
                                <asp:Parameter Name="Cinsiyet_ID" />
                                <asp:Parameter Name="Pers_Komisyon_Yuzdesi" />
                                <asp:Parameter Name="Pers_Maas" />
                                <asp:Parameter Name="Kayit_Tarihi" />
                                <asp:Parameter Name="Kaydeden" />
                                <asp:Parameter Name="Pers_CV_Web" />
                                <asp:Parameter Name="Pers_CV_File" />
                                <asp:Parameter Name="Pers_CV" />
                            </InsertParameters>
                            <SelectParameters>
                                <asp:ControlParameter ControlID="DropDownList1" Name="Pers_ID" PropertyName="SelectedValue" Type="Int32" />
                            </SelectParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="Pers_Adi" Type="String" />
                                <asp:Parameter Name="Pers_Soyadi" Type="String" />
                                <asp:Parameter Name="Pers_DTarihi" Type="DateTime" />
                                <asp:Parameter Name="Pers_Ise_Giris_Tarihi" Type="DateTime"/>
                                <asp:Parameter Name="Pers_Isten_Cikis_Tarihi" Type="DateTime" />
                                <asp:Parameter Name="Bolum_ID" Type="String" />
                                <asp:Parameter Name="Pers_Email" Type="String" />
                                <asp:Parameter Name="Pers_Cep" Type="String" />
                                <asp:Parameter Name="Pers_Tel" Type="String" />
                                <asp:Parameter Name="Pers_Il_Kodu" Type="String" />
                                <asp:Parameter Name="Pers_Ili" Type="String" />
                                <asp:Parameter Name="Pers_Adresi" Type="String" />
                                <asp:Parameter Name="Pers_Aktif_Mi" />
                                <asp:Parameter Name="Pers_TC_No" Type="String" />
                                <asp:Parameter Name="Pers_SGK_No" Type="String" />
                                <asp:Parameter Name="Unvan_ID" Type="String" />
                                <asp:Parameter Name="Cinsiyet_ID" Type="String" />
                                <asp:Parameter Name="Pers_Komisyon_Yuzdesi" Type="Double" />
                                <asp:Parameter Name="Pers_Maas" Type="Double" />
                                <asp:Parameter Name="Kayit_Tarihi" Type="DateTime" />
                                <asp:Parameter Name="Kaydeden" Type="String" />
                                <asp:Parameter Name="Pers_CV_Web" Type="String" />
                                <asp:Parameter Name="Pers_CV_File" Type="String" />
                                <asp:Parameter Name="Pers_CV" Type="String" />
                                <asp:Parameter Name="Pers_ID" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                        <asp:Button ID="Button1" runat="server" OnClientClick="window.close()" Text="Formu Kapat" />
                    </td>
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
