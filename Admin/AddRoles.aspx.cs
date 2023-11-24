using Online_Exam_Hub.App_Codes;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_Exam_Hub.Admin
{
    public partial class AddRoles : System.Web.UI.Page
    {
        DbManager dm = new DbManager();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                BindRolesGridView();
            }

        }

        private void BindRolesGridView()
        {
            try
            {
                DataTable dt = dm.executeDataTable("select * from dbo.tbl_Roles");

                if (dt.Rows.Count > 0)
                {
                    GridViewRoles.DataSource = dt;
                    GridViewRoles.DataBind();
                }
                else
                {
                    Response.Write("<script>alert('Data Not Availbale')</script>");
                }
            }
            catch(Exception ex)
            {
                Response.Write("<script>alert('"+ex.Message+"')</script>");
            }
        }
    }
}