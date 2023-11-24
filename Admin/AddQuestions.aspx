<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="AddQuestions.aspx.cs" Inherits="Online_Exam_Hub.Admin.AddQuestions" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="PanelQuestion" runat="server">
        <div>
            <h2 class="text-center">MCQ Question Form</h2>
            <hr />
            <div class="container mt-3">
                <div class="mb-3">
                    <div class="row">
                        <div class="col-md-4 col-sm-12">
                            <label for="<%=txtCourseID.ClientID %>">Course ID:</label>
                            <asp:TextBox ID="txtCourseID" runat="server" CssClass="form-control" Enabled="false" placeholder="Auto Increment ID"></asp:TextBox>
                        </div>
                        <div class="col-md-8 col-sm-12 d-flex align-items-md-end justify-content-md-end">
                            <label for="<%=ddlCourse.ClientID %>" class="col-form-label">Select Course:</label>
                            <asp:DropDownList ID="ddlCourse" runat="server" CssClass="btn btn-secondary ms-2">
                                <asp:ListItem>----- Select -----</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                </div>
                <div class="mb-3">
                    <label for="<%=txtQuestionText.ClientID %>">Question:</label>
                    <asp:TextBox ID="txtQuestionText" runat="server" TextMode="MultiLine" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="mb-3">
                    <div class="row">
                        <div class="col-md-6 col-sm-12">
                            <label for="<%=txtOptionA.ClientID %>">Option A:</label>
                            <asp:TextBox ID="txtOptionA" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                        <div class="col-md-6 col-sm-12">
                            <label for="<%=txtOptionB.ClientID %>">Option B:</label>
                            <asp:TextBox ID="txtOptionB" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>

                </div>

                <div class="mb-3">
                    <div class="row">
                        <div class="col-md-6 col-sm-12">
                            <label for="<%=txtOptionC.ClientID %>">Option C:</label>
                            <asp:TextBox ID="txtOptionC" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                        <div class="col-md-6 col-sm-12">
                            <label for="<%=txtOptionD.ClientID %>">Option D:</label>
                            <asp:TextBox ID="txtOptionD" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                </div>

                <div class="mb-3 dropdown text-center">
                    <label for="<%=ddlCorrectAnswer.ClientID %>">Correct Option:</label>
                    <asp:DropDownList ID="ddlCorrectAnswer" runat="server" CssClass="btn btn-secondary ms-2">
                        <asp:ListItem Value="">--- Select Corrent Answer ---</asp:ListItem>
                        <asp:ListItem Value="A">Option A</asp:ListItem>
                        <asp:ListItem Value="B">Option B</asp:ListItem>
                        <asp:ListItem Value="C">Option C</asp:ListItem>
                        <asp:ListItem Value="D">Option D</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="text-center mt-5">
                    <asp:Button ID="btnInsert" runat="server" Text="Insert" CssClass="btn btn-primary btn_px_3" OnClick="btnInsert_Click" />
                    <asp:Button ID="btnUpdate" runat="server" Text="Update" CssClass="btn btn-success btn_px_3" OnClick="btnUpdate_Click" Visible="false" />
                    <asp:Button ID="btnDelete" runat="server" Text="Delete" CssClass="btn btn-danger btn_px_3" OnClick="btnDelete_Click" Visible="false" />
                    <asp:Button ID="btnClear" runat="server" Text="Clear" CssClass="btn btn-secondary btn_px_3" OnClick="btnClear_Click" />
                </div>
            </div>
        </div>
    </asp:Panel>
</asp:Content>
