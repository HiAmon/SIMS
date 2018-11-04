<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="登录" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        body {
            background-color: silver;
        }

        div#container {
            background-color: #9bb;
            width: 475px;
            margin: 0 auto;
            text-align: center;
        }

        .auto-style1 {
            width: 100%;
            margin-left: 0px;
        }

        .auto-style2 {
            height: 34px;
        }
        .auto-style4 {
            height: 34px;
            width: 115px;
        }
        .auto-style5 {
            width: 115px;
        }
    </style>
</head>
<body style="width: 1000px; height: 337px; margin-left: 335px; margin-top: 109px; background-image: url('image/login_bg.jpg'); background-repeat: repeat; background-attachment: fixed;">
    
    <table class="auto-style1">
        <tr>
            <td>
                <asp:Image ID="imglogo" runat="server" ImageUrl="~/BackGroundPictures/login_logo.png" />
            </td>
        </tr>
        <tr>
            <td>
                <form id="form1" runat="server">
                    <div id="container" style="background-color: #FFFFFF">
                        <h2>登录界面</h2>
                        <table class="auto-style1" style="text-align: right">
                            <tr>
                                <td class="auto-style5" style="text-align: right">账号 </td>
                                <td style="text-align: left">
                                    <asp:TextBox ID="txtUserName" runat="server" Height="25px" margin-left="240px" Style="margin-left: 0px" Width="270px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style5" style="text-align: right">密码 </td>
                                <td style="text-align: left">
                                    <asp:TextBox ID="txtPassword" runat="server" Height="24px" margin-left="250px" Style="margin-left: 0px" TextMode="Password" Width="270px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style5" style="text-align: right">身份 </td>
                                <td style="text-align: left">
                                    <asp:DropDownList ID="ddlSelectUserType" runat="server" Height="33px" Width="69px">
                                        <asp:ListItem>学生</asp:ListItem>
                                        <asp:ListItem>管理员</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style4" style="text-align: left"></td>
                                <td class="auto-style2" style="text-align: left">
                                    <asp:Label ID="lblFailText" runat="server" ForeColor="#FF3300"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style5" style="text-align: center"></td>
                                <td style="text-align: left">&nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="btnLogin" runat="server" OnClick="btnLogin_Click" Style="margin-left: 55px" Text="登录" Width="92px" />
                                </td>
                            </tr>
                        </table>
                    </div>
                </form>
            </td>
        </tr>
    </table>
    
</body>
</html>
