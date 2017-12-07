<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="loginPage.aspx.cs" Inherits="Login_v4.loginPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
            font-size: xx-large;
        }
        .auto-style2 {
            width: 100%;
            height: 86px;
        }
        .auto-style3 {
            height: 42px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">

            Login Page</div>
        <table class="auto-style2">
            <tr>
                <td>UserName</td>
                <td>
                    <asp:TextBox ID="usernameLogin" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="username" runat="server" ErrorMessage="Please enter username" ForeColor="Red" ControlToValidate="usernameLogin"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Password</td>
                <td class="auto-style3">
                    <asp:TextBox ID="passwordLogin" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="password" runat="server" ErrorMessage="please enter password" ForeColor="Red" ControlToValidate="passwordLogin"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" Width="105px" />
                </td>
                <td>
                                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/registration.aspx">new user ? register here</asp:HyperLink>

                                        <br />
                                        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Users.aspx">Dr.Mujahed here you can find users to login or you can register as a new user </asp:HyperLink>

                </td>
            </tr>
         
        </table>
    </form>
</body>
</html>
