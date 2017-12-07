<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dashboard.aspx.cs" Inherits="Login_v4.dashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            Welcome<br />
            username :
            <asp:Label ID="username" runat="server" Text="Label"></asp:Label>

            <br />
            email :
            <asp:Label ID="email" runat="server" Text="Label"></asp:Label>
            <br />

        </div>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Logout" />
    </form>
</body>
</html>
