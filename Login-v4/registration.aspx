<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="registration.aspx.cs" Inherits="Login_v4.registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 31px;
        }
        .auto-style3 {
            text-align: right;
            width: 154px;
        }
        .auto-style4 {
            height: 31px;
            text-align: right;
            width: 154px;
        }
        .auto-style5 {
            width: 181px;
        }
        .auto-style6 {
            height: 31px;
            width: 181px;
        }
        .auto-style7 {
            width: 154px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style3">UserName:</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="userName" runat="server" Width="180px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="userName" ErrorMessage="UserName is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Email:</td>
                    <td class="auto-style6">
                        <asp:TextBox ID="email" runat="server" Width="180px"></asp:TextBox>
                    </td>
                    <td class="auto-style2">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="email" ErrorMessage="Email is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                        <br />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="email" ErrorMessage="you must enter a valid email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Password:</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="password" runat="server" TextMode="Password" Width="180px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="password" ErrorMessage="Password is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Confirm Password:</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="confirmPassword" runat="server" TextMode="Password" Width="180px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="confirmPassword" ErrorMessage="Confirmation is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                        <br />
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="password" ControlToValidate="confirmPassword" ErrorMessage="password don't match" ForeColor="Red"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style5">
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" Width="188px" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
