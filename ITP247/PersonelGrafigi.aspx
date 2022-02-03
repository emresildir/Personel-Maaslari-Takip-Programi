<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PersonelGrafigi.aspx.cs" Inherits="IPT247.PersonelGrafigi" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

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
            height: 23px;
            text-align: center;
            font-size: x-large;
        }
        .auto-style3 {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2" colspan="2"><strong>Personel Maaş Grafiği</strong></td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Chart ID="Chart1" runat="server" DataSourceID="SqlDataSource1" Width="1061px">
                            <series>
                                <asp:Series ChartArea="ChartArea1" Name="Series3" XValueMember="Pers_Isim" YValueMembers="Toplam">
                                </asp:Series>
                            </series>
                            <chartareas>
                                <asp:ChartArea Name="ChartArea1">
                                </asp:ChartArea>
                            </chartareas>
                        </asp:Chart>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Button ID="Button1" runat="server" OnClientClick="window.close()" Text="Sayfayı Kapat" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:con_Personeller %>" SelectCommand="SELECT tbl_Personeller.Pers_Isim, tbl_PersonelMaaslari.Maas_Yili, SUM(tbl_PersonelMaaslari.Maas_Toplam) AS Toplam FROM tbl_Personeller INNER JOIN tbl_PersonelMaaslari ON tbl_Personeller.Pers_ID = tbl_PersonelMaaslari.Pers_ID GROUP BY tbl_Personeller.Pers_Isim, tbl_PersonelMaaslari.Maas_Yili"></asp:SqlDataSource>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
