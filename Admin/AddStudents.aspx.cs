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
    public partial class AddStudents : System.Web.UI.Page
    {
        DbManager dm = new DbManager();
        protected void Page_Load(object sender, EventArgs e)
        {
            BindRoleDropdown();
            BindStatusDropdown();

        }

        private void BindRoleDropdown()
        {
            try
            {
                DataTable dt = dm.executeDataTable("select * from dbo.tbl_Roles");

                if(dt.Rows.Count>0)
                {
                    ddlRole.DataSource = dt;
                    ddlRole.DataValueField = "RoleID";
                    ddlRole.DataTextField ="RoleName" ;
                    ddlRole.DataBind();
                    ddlRole.Items[1].Selected=true;
                }
            }
            catch(Exception ex)
            {
                Response.Write(ex.Message);
            }

        }

        private void BindStatusDropdown()
        {
            try
            {
                DataTable dt = dm.executeDataTable("select * from dbo.tbl_Status");

                if (dt.Rows.Count > 0)
                {
                    ddlStatus.DataSource= dt;
                    ddlStatus.DataValueField = "StatusID";
                    ddlStatus.DataTextField = "StatusName";
                    ddlStatus.DataBind();
                    ddlStatus.Items[1].Selected = true;
                }
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }
    }
}