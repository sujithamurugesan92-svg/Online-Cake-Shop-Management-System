using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;
using OnlineCakeShop.Admin;
using System.Windows.Forms;
using System.Xml.Linq;
using Control = System.Web.UI.Control;

namespace OnlineCakeShop.User
{
    public partial class Profile : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter sda;
        DataTable dt;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["userId"] == null)
                {
                    Response.Redirect("Login.aspx");
                }
                else
                {
                    getUserDetails();
                }
            }
        }

        protected void getUserDetails()
        {
            con = new SqlConnection(Connection.GetConnectionString());
            cmd = new SqlCommand("sp_User", con);
            cmd.Parameters.AddWithValue("@Action", "SELECTPROFILE");
            cmd.Parameters.AddWithValue("@UserId", Session["UserId"]);
            cmd.CommandType = CommandType.StoredProcedure;
            sda = new SqlDataAdapter(cmd);
            dt = new DataTable();
            sda.Fill(dt);
            rUserProfile.DataSource = dt;
            rUserProfile.DataBind();
            if (dt.Rows.Count == 1)
            {
                Session["Name"] = dt.Rows[0]["Name"].ToString();
                Session["UserName"] = dt.Rows[0]["UserName"].ToString();
                Session["Mobile"] = dt.Rows[0]["Mobile"].ToString();
                Session["Email"] = dt.Rows[0]["Email"].ToString();
                Session["PostCode"] = dt.Rows[0]["PostCode"].ToString();
                Session["Address"] = dt.Rows[0]["Address"].ToString();
                Session["ImageUrl"] = dt.Rows[0]["ImageUrl"].ToString();
                Session["CreatedDate"] = dt.Rows[0]["CreatedDate"].ToString();

            }
        }

       
    }
}