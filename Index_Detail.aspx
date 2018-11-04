<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Index_Detail.aspx.cs" Inherits="Index_Detail" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>详细课程信息</title>
    <link href="css/main.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            color:red;
        }
        .auto-style2 {
            height: 264px;
        }
        .auto-style3 {
            height: 42px;
        }
        .auto-style4 {
            height: 42px;
            width: 558px;
        }
        .auto-style5 {
            height: 264px;
            width: 558px;
        }
        .auto-style6 {
            width: 558px;
        }
        .auto-style7 {
            height: 42px;
            width: 283px;
        }
        .auto-style8 {
            height: 264px;
            width: 283px;
        }
        .auto-style9 {
            width: 283px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div id="header">
    
    </div>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <p>
            &nbsp;</p>
        <p id="课程简介" style="width: 318px; height: 191px; margin-left: 194px">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
        <asp:ObjectDataSource ID="odsCourse" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="QueryByCourseID" TypeName="XSGLDataSetTableAdapters.TA_课程表ADDTableAdapter">
            <SelectParameters>
                <asp:SessionParameter DefaultValue="11" Name="课程ID" SessionField="CourseID" Type="String" />
            </SelectParameters>
        </asp:ObjectDataSource>
        <table class="auto-style1">
            <tr>
                <td class="auto-style3"></td>
                <td class="auto-style3"></td>
                <td class="auto-style4"></td>
                <td class="auto-style7">
        <asp:Label ID="lbl1" runat="server" Height="16px" Text="课程名称" Width="90px"></asp:Label>
                </td>
                <td class="auto-style3"></td>
                <td class="auto-style3"></td>
            </tr>
            <tr>
                <td class="auto-style2"></td>
                <td class="auto-style2"></td>
                <td class="auto-style5"></td>
                <td class="auto-style8">
        <asp:ImageButton ID="ImaBtn1" runat="server" Height="215px" ImageAlign="Right" style="margin-left: 54px" Width="175px" ImageUrl="~/Content/image/选修课1.png" />
                </td>
                <td class="auto-style2"></td>
                <td class="auto-style2">
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style9">
                    <asp:Label ID="lbl2" runat="server" Text="lbl2"></asp:Label>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <div id="foot"></div> 
    </form>
</body>
</html>
