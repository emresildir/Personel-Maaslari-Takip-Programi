﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IPT247
{
    public partial class MaasVeriGirisi : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlDataSource2.InsertParameters["Pers_ID"].DefaultValue = DropDownList1.SelectedValue;
            SqlDataSource2.InsertParameters["Maas_Odeme_Tarihi"].DefaultValue = TextBox1.Text;
            SqlDataSource2.InsertParameters["Maas_Tutari"].DefaultValue = TextBox2.Text;
            SqlDataSource2.InsertParameters["Maas_Komisyon"].DefaultValue = TextBox3.Text;
            int s = SqlDataSource2.Insert();

            if (s > 0)
            {
                Label1.Text = DropDownList1.SelectedValue + "Personelinin Başarılı bir şekilde maaşı Eklendi";
                Label1.Visible = true;
            }
            else
                Label1.Text = "Personel Maaşı Başarısız. Verilerinizi Kontrol ettikten sonra Tekrar deneyiniz";
                Label1.Visible = true;
        }
    }
}