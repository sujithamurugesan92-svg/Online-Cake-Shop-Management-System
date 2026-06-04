using System;
using System.Collections.Generic;
using System.Linq;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.IO;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;
using System.Xml.Linq;
using Label = System.Web.UI.WebControls.Label;

namespace OnlineCakeShop.Admin
{
    public partial class ProductLists : System.Web.UI.Page
    {

        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter sda;
        DataTable dt;


        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Session["navbar"] = "Product";
                if (Session["admin"] == null)
                {
                    Response.Redirect("../User/Login.aspx");
                }
                else
                {
                    getProducts();
                }
            }
            lblMsg.Visible = false;
        }

       

        protected void rProduct_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            lblMsg.Visible = false;
            con = new SqlConnection(Connection.GetConnectionString());
            if (e.CommandName == "edit")
            {
                //con = new SqlConnection(Connection.GetConnectionString());
                //cmd = new SqlCommand("sp_Product", con);
                //cmd.Parameters.AddWithValue("@Action", "GETBYID");
                //cmd.Parameters.AddWithValue("@ProductId", e.CommandArgument);
                //cmd.CommandType = CommandType.StoredProcedure;
                //sda = new SqlDataAdapter(cmd);
                //dt = new DataTable();
                
                //LinkButton btn = e.Item.FindControl("lnkedit") as LinkButton;
                //btn.CssClass = "badge badge-warning";

            }

           



            else if (e.CommandName == "delete")
            {
                con = new SqlConnection(Connection.GetConnectionString());
                cmd = new SqlCommand("sp_Product", con);
                cmd.Parameters.AddWithValue("@Action", "DELETE");
                cmd.Parameters.AddWithValue("@ProductId", e.CommandArgument);
                cmd.CommandType = CommandType.StoredProcedure;
                try
                {
                    con.Open();
                    cmd.ExecuteNonQuery();
                    lblMsg.Visible = true;
                    lblMsg.Text = "Product deleted successfully!";
                    lblMsg.CssClass = "alert alert-success";
                    getProducts();
                }
                catch (Exception ex)
                {
                    lblMsg.Visible = true;
                    lblMsg.Text = "Error-" + ex.Message;
                    lblMsg.CssClass = "alert alert-danger";
                }
                finally
                {
                    con.Close();
                }
            }
        }


        protected void rProduct_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                Label lbl = e.Item.FindControl("lblIsActive") as Label;
                if (lbl.Text == "True")
                {
                    lbl.Text = "Active";
                    lbl.CssClass = "badge badge-success";
                }
                else
                {
                    lbl.Text = "In-Active";
                    lbl.CssClass = "badge badge-danger";
                }
            }
        }

        protected void getProducts()
        {
           
                con = new SqlConnection(Connection.GetConnectionString());
                cmd = new SqlCommand("sp_Product", con);
                cmd.Parameters.AddWithValue("@Action", "SELECT");
                cmd.Parameters.AddWithValue("ProductId", Session["ProductId"]);
                cmd.CommandType = CommandType.StoredProcedure;
                sda = new SqlDataAdapter(cmd);
                dt = new DataTable();
                sda.Fill(dt);
                rProduct.DataSource = dt;
                rProduct.DataBind();
                if (dt.Rows.Count == 1)
                {
                    Session["Name"] = dt.Rows[0]["Name"].ToString();
                    Session["Description"] = dt.Rows[0]["Description"].ToString();
                    Session["ImageUrl"] = dt.Rows[0]["ImageUrl"].ToString();
                    Session["Price"] = dt.Rows[0]["Price"].ToString();
                    Session["Quantity"] = dt.Rows[0]["Quantity"].ToString();
        
                }
           
            
        }
    }
}