<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginForm.aspx.cs" Inherits="Online_Exam_Hub.LoginForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login Form</title>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <!-- Bootstrap CSS -->
    <link href="Assets/bootstrap.css" rel="stylesheet" />
    <!-- Custom styles for the login form -->
    <style>
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <%-- onsubmit="return validateForm()" --%>
        <div>

            <div class="container login-container">
                <div class="row justify-content-center mt-5">
                    <div class="col-md-5 col-sm-10">
                        <div class="card">
                            <div class="card-header text-center">
                                <img src="Images/OnlineExam.png" class="img-icon" width="140" height="100" />
                                <h3>Login</h3>
                            </div>
                            <div class="card-body">
                                <asp:Label ID="lblError" runat="server" CssClass="alert alert-danger py-2 d-block" Text="Error" Visible="false"></asp:Label>
                                <!-- Login Form -->
                                <div class="mb-3">
                                    <label for="txtEmail" class="form-label">Email:</label>
                                    <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" TextMode="Email" placeholder="Enter your email" required></asp:TextBox>
                                </div>

                                <div class="mb-3">
                                    <label for="txtPassword" class="form-label">Password:</label>
                                    <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" TextMode="Password" placeholder="Enter your password" required></asp:TextBox>

                                </div>
                                <div class="mt-4 text-center">
                                    <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" CssClass="btn btn-primary px-5 fw-bold" />

                                </div>
                                <!-- End Login Form -->
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </form>

    <!-- Bootstrap JS and Popper.js -->
    <script src="Assets/popper.js"></script>
    <script src="Assets/bootstrap.js"></script>

    <script>

</script>
</body>
</html>
