<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="AddStudents.aspx.cs" Inherits="Online_Exam_Hub.Admin.AddStudents" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="row justify-content-center">
        <!-- Left Side -->
        <div class="col-md-8">
            <div class="card m-3">
                <div class="card-body">
                    <div class="card-title text-center">
                        <h2>Add New Student</h2>
                        <hr />
                    </div>

                    <!-- Form for Inserting and Updating Data -->
                    <div class="mb-3">
                        <label for="<%= txtUserID.ClientID %>" class="form-label">User ID:</label>
                        <asp:TextBox ID="txtUserID" runat="server" CssClass="form-control" Enabled="false" placeholder="Auto Increment ID" />
                    </div>
                    <div class="mb-3">
                        <div class="row">
                            <div class="col-md-6 col-sm-12">
                                <label for="<%= txtFirstName.ClientID %>" class="form-label">First Name:</label>
                                <asp:TextBox ID="txtFirstName" runat="server" CssClass="form-control" />
                            </div>
                            <div class="col-md-6 col-sm-12">
                                <label for="<%= txtLastName.ClientID %>" class="form-label">Last Name:</label>
                                <asp:TextBox ID="txtLastName" runat="server" CssClass="form-control" />
                            </div>
                        </div>

                    </div>
                    <div class="mb-3">
                        <label for="<%= txtDOB.ClientID %>" class="form-label">Date of Birth:</label>
                        <asp:TextBox ID="txtDOB" runat="server" CssClass="form-control" TextMode="Date" />
                    </div>
                    <div class="mb-3">
                        <label for="<%= txtAddress.ClientID %>" class="form-label">Address:</label>
                        <asp:TextBox ID="txtAddress" runat="server" CssClass="form-control" TextMode="MultiLine" />
                    </div>
                    <div class="mb-1 text-center">
                        <span class="badge text-bg-warning">Login Credentials</span>
                    </div>
                    <div class="mb-3">
                        <label for="<%= txtEmail.ClientID %>" class="form-label">Email:</label>
                        <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" />
                    </div>
                    <div class="mb-3">
                        <div class="row">
                            <div class="col-md-6 col-sm-12">
                                <label for="<%= txtPassword.ClientID %>" class="form-label">Password:</label>
                                <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" TextMode="Password" />
                            </div>

                            <div class="col-md-6 col-sm-12">
                                <label for="<%= txtConfirmPassword.ClientID %>" class="form-label">Confirm Password:</label>
                                <asp:TextBox ID="txtConfirmPassword" runat="server" CssClass="form-control" TextMode="Password" />
                            </div>
                        </div>

                    </div>
                    <div class="mb-3">
                        <div class="row">
                            <div class="col-md-5 col-sm-12 d-grid">
                                <label for="<%= ddlRole.ClientID %>" class="form-label">Role:</label>
                                <asp:DropDownList ID="ddlRole" runat="server" CssClass="btn btn-secondary" Enabled="false"></asp:DropDownList>
                            </div>
                            <div class="col-md-7 col-sm-12 d-grid">
                                <label for="<%= ddlStatus.ClientID %>" class="form-label">Status:</label>
                                <asp:DropDownList ID="ddlStatus" runat="server" CssClass="btn btn-secondary"></asp:DropDownList>
                            </div>

                        </div>


                    </div>
                    <div class="mb-3 text-center">
                        <asp:Button ID="btnInsert" runat="server" Text="Insert" CssClass="btn btn-primary m-2 btn_px_3" />
                        <asp:Button ID="btnClear" runat="server" Text="Clear" CssClass="btn btn-danger m-2 btn_px_3" />
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
