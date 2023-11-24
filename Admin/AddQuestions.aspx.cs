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
    public partial class AddQuestions : System.Web.UI.Page
    {
        DbManager dm=new DbManager();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                BindCourseddl();
            }
        }
        protected void btnInsert_Click(object sender, EventArgs e)
        {
            InsertRecord();
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            //UpdateRecord();
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            //DeleteRecord();
        }


        //Methods Starts
        private void InsertRecord()
        {
            string query = "INSERT INTO [dbo].[tbl_MCQQuestions] ([CourseID] ,[QuestionText] ,[OptionA] ,[OptionB] ,[OptionC] ,[OptionD] ,[CorrectOption]) VALUES ('" + ddlCourse.SelectedValue + "','" + txtQuestionText.Text.Trim() + "','" + txtOptionA.Text.Trim() + "','" + txtOptionB.Text.Trim() + "','" + txtOptionC.Text.Trim() + "','" + txtOptionD.Text.Trim() + "','" + ddlCorrectAnswer.SelectedValue + "')";

            int isInsert=dm.executeNonQuery(query);

            if (isInsert > 0)
            {
                Response.Write("<script>alert('Question Added Successfully')</script>");
            }
            else
            {
                Response.Write("<script>alert('Question Not Added')</script>");
            }

        }


        //Binding Dropdown Lists
        void BindCourseddl()
        {
            try
            {
                DataTable dt = dm.executeDataTable("select * from dbo.tbl_Courses");

                if (dt.Rows.Count > 0)
                {
                    ddlCourse.DataSource = dt;
                    ddlCourse.DataValueField = "CourseID";
                    ddlCourse.DataTextField = "CourseName";
                    ddlCourse.DataBind();
                    ddlCourse.Items.Insert(0, new ListItem("--- Select Couses ---"));
                    
                }
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            foreach(var c in PanelQuestion.Controls)
            {
                if(c is TextBox)
                {
                    ((TextBox)c).Text = "";
                }

                if (c is DropDownList)
                {
                    ((DropDownList)c).SelectedIndex =-1 ;
                }
            }
        }
    }
}