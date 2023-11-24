using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Online_Exam_Hub.App_Codes;

namespace Online_Exam_Hub
{
    public partial class LoginForm : System.Web.UI.Page
    {

        DbManager dm = new DbManager();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["userEmail"] != null)
            {
                string uRole = Session["userRole"].ToString();
                if (uRole == "Admin")
                {
                    Response.Redirect("~/Admin/AdminDashboard.aspx");
                }
                else if (uRole == "Student")
                {
                    Response.Redirect("~/Student/StudentDashboard.aspx");
                }
            }
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            try
            {
                string query = "select * from dbo.UsersDetails where Email='" + txtEmail.Text.Trim() + "' and Password='" + txtPassword.Text.Trim() + "'";
                DataTable dt = dm.executeDataTable(query);

                if (dt.Rows.Count > 0)
                {
                    string uRole = dt.Rows[0]["RoleName"].ToString();
                    string uStatus = dt.Rows[0]["StatusName"].ToString();
                    if (uStatus == "Active")
                    {
                        Session["userEmail"] = dt.Rows[0]["Email"].ToString();
                        Session["userRole"] = uRole;
                        if (uRole == "Admin")
                        {
                            Response.Redirect("~/Admin/AdminDashboard.aspx");
                        }
                        else if (uRole == "Student")
                        {
                            Response.Redirect("~/Student/StudentDashboard.aspx");
                        }
                        else
                        {
                            Session["userEmail"] = null;
                            Session["userRole"] = null;
                            lblError.Visible = true;
                            lblError.Text = "Something is wrong, try again later";
                        }
                    }
                    else
                    {
                        lblError.Visible = true;
                        lblError.Text = "Your account is not Active";
                    }

                }
                else
                {
                    lblError.Visible = true;
                    lblError.Text = "Enter Valid Email or Password";
                }

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "')</script>");
            }
        }
    }
}