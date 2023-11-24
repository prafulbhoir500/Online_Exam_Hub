﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="AddStatus.aspx.cs" Inherits="Online_Exam_Hub.Admin.AddStatus" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section>
    <div class="row justify-content-center">
        <%--Left Side--%>
        <div class="col-md-7">
            <div class="card m-3">
                <div class="card-body">
                    <div class="card-title text-center">
                        <h2>Add New Status</h2>
                        <hr />
                    </div>

                    <!-- Form for Inserting and Updating Data -->
                    <div class="mb-3">
                        <div class="row">
                            <div class="col-8">
                                <label for="<%=txtStatusID.ClientID %>"">Status ID:</label>
                                <asp:TextBox ID="txtStatusID" runat="server" CssClass="form-control" Enabled="false" placeholder="Auto Increment ID" />
                            </div>
                            <div class="col d-flex align-items-md-end justify-content-md-end">
                                <asp:Button ID="btnGetData" runat="server" Text="Get Data" CssClass="btn btn-warning" Enabled="false" />
                            </div>
                        </div>
                    </div>
                    <div class="mb-3">
                        <label for="<%=txtStatusName.ClientID %>"">Status Name:</label>
                        <asp:TextBox ID="txtStatusName" runat="server" CssClass="form-control" />
                    </div>
                    <div class="mb-3 text-center">
                        <asp:Button ID="btnInsert" runat="server" Text="Insert" CssClass="btn btn-primary m-2" />
                        <asp:Button ID="btnUpdate" runat="server" Text="Update" CssClass="btn btn-success m-2" />
                        <asp:Button ID="btnDelete" runat="server" Text="Delete" CssClass="btn btn-danger m-2" />
                        <asp:Button ID="btnClear" runat="server" Text="Clear" CssClass="btn btn-secondary m-2" />
                    </div>
                </div>
            </div>
        </div>
    </div>

    <%--Right Side--%>

    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="m-3">
                <!-- GridView for Displaying Data -->
                <div class="card-title text-center">
                    <h1>Status Information</h1>
                </div>
                <div class="card-body">
                    <asp:GridView ID="GridViewStatus" runat="server" AutoGenerateColumns="False" DataKeyNames="StatusID" CssClass="table table-striped">
                        <Columns>
                            <asp:BoundField DataField="StatusID" HeaderText="Status ID" SortExpression="StatusID" ReadOnly="True" />
                            <asp:BoundField DataField="StatusName" HeaderText="Status Name"/>
                            <asp:BoundField DataField="CreateDateTime" HeaderText="Create Date Time" DataFormatString="{0:yyyy-MM-dd HH:mm:ss}" />
                            <%--<asp:CommandField ShowEditButton="True" />
             <asp:CommandField ShowDeleteButton="True" />--%>
                        </Columns>
                    </asp:GridView>
                </div>

            </div>

        </div>
    </div>
</section>
</asp:Content>
