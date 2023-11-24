<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="AdminDashboard.aspx.cs" Inherits="Online_Exam_Hub.Admin.AdminDashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <main class="container-fluid">
        <div class="row">
            <div class="card-title">
                <h2>Admin Dashboard</h2>
            </div>
            <div class="col-md-4 col-sm-12 gy-2">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col-8">
                                <h1>12</h1>
                                <h6>Total Students</h6>
                            </div>
                            <div class="col-4"></div>
                        </div>
                    </div>
                    <div class="card-footer text-center bg-primary">
                        <a href="#" class="card-link-black">More Info
                    <img src="../Images/Icons/RightArrow.png" class="img-icon" />
                        </a>
                    </div>
                </div>
            </div>

            <div class="col-md-4 col-sm-12 gy-2">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col-8">
                                <h1>08</h1>
                                <h6>Total Courses</h6>
                            </div>
                            <div class="col-4"></div>
                        </div>
                    </div>
                    <div class="card-footer text-center bg-success">
                        <a>More Info
                    <img src="../Images/Icons/RightArrow.png" class="img-icon" />
                        </a>
                    </div>
                </div>
            </div>

            <div class="col-md-4 col-sm-12 gy-2">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col-8">
                                <h1>02</h1>
                                <h6>Exams</h6>
                            </div>
                            <div class="col-4"></div>
                        </div>
                    </div>
                    <div class="card-footer text-center bg-info">
                        <a role="button">More Info
                    <img src="../Images/Icons/RightArrow.png" class="img-icon" />
                        </a>
                    </div>
                </div>
            </div>

        </div>

        <div class="row mt-5">
            <div class="card-title">
                <h2>Pending Application</h2>
            </div>
            <div class="col-md-4 col-sm-12 gy-2">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col-8">
                                <h1>12</h1>
                                <h6>Total Students</h6>
                            </div>
                            <div class="col-4"></div>
                        </div>
                    </div>
                    <div class="card-footer text-center bg-warning">
                        <a href="#" class="card-link-black">More Info
            <img src="../Images/Icons/RightArrow.png" class="img-icon" />
                        </a>
                    </div>
                </div>
            </div>

            <%--<div class="col-md-4 col-sm-12 gy-2">
        <div class="card">
            <div class="card-body">
                <div class="row">
                    <div class="col-8">
                        <h1>08</h1>
                        <h6>Total Courses</h6>
                    </div>
                    <div class="col-4"></div>
                </div>
            </div>
            <div class="card-footer text-center bg-success">
                <a>More Info
            <img src="../Images/Icons/RightArrow.png" class="img-icon" />
                </a>
            </div>
        </div>
    </div>--%>

            <%--<div class="col-md-4 col-sm-12 gy-2">
        <div class="card">
            <div class="card-body">
                <div class="row">
                    <div class="col-8">
                        <h1>02</h1>
                        <h6>Exams</h6>
                    </div>
                    <div class="col-4"></div>
                </div>
            </div>
            <div class="card-footer text-center bg-info">
                <a role="button">More Info
            <img src="../Images/Icons/RightArrow.png" class="img-icon" />
                </a>
            </div>
        </div>
    </div>--%>
        </div>
    </main>
</asp:Content>
