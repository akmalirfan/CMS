using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CMS
{
    public partial class InsertMark : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            /*SqlConnection cnn = new SqlConnection();
            cnn.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
            cnn.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "SELECT * FROM Subject";
            cmd.Connection = cnn; SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds, " Subject ");
            SqlCommandBuilder cb = new SqlCommandBuilder(da);
            DataRow drow = ds.Tables["Subject"].NewRow();

            drow["code"] = DropDownList1.SelectedItem;
            drow["name"] = DropDownList1.SelectedItem;
            drow["credit"] = DropDownList1.SelectedItem;
            drow["section"] = TextBox1.Text;
            drow["student"] = Session["username"].ToString();

            ds.Tables["Subject "].Rows.Add(drow);
            da.Update(ds, " Subject ");
            string script = @"<script language=""javascript""> alert('Information have been Saved Successfully.......!!!!!.'); </script>;";
            Page.ClientScript.RegisterStartupScript(this.GetType(), "myJScript1", script);*/
        }
    }
}