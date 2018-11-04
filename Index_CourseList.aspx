<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Index_CourseList.aspx.cs" Inherits="Index_CourseList" %>

<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="webdiyer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <style type="text/css">
        #Submit3 {
            height: 37px;
        }

        #Submit2 {
            height: 37px;
        }

        #Select1 {
            width: 159px;
        }

        .logo {
            width: 100%;
            height: 100px;
            background: #1e6f46;
            float: left;
        }

        .wid1100 {
            width: 1100px;
            margin: 0 auto;
        }

        .logo-1 {
            width: 1100px;
            height: 100px;
            float: left;
            text-align: left;
            padding-top: 12px;
        }

        .sy-content {
            width: 100%;
            float: left;
            min-height: 300px;
        }

        .wid1200, .pc-banner {
            width: 1200px;
            margin: 0 auto;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
            <div class="logo">
                <div class="wid1100">
                    <img src="BackGroundPictures/CourseList_logo.png"/>
                </div>
            </div>

            <div style="width: 100%; height: 40px; background: #e9dfdf; float: left">
                <div style="width: 900px; margin: 0 auto; display: block;">
                    <label>
                        请选择关键词进行搜索:
                    </label>
                    <asp:dropdownlist id="ddlCategoryid" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlCategoryid_SelectedIndexChanged">
                        <asp:ListItem>必修课</asp:ListItem>
                        <asp:ListItem>选修课</asp:ListItem>
                        <asp:ListItem>专修科</asp:ListItem>
                    </asp:dropdownlist>
                </div>
            </div>
            <div style="width: 100%; height: 650px; float: left">
                <div style="width: 880px; margin: 0 auto; display: block; height: 650px;">
                    <asp:Repeater ID="Repeater1" runat="server">
                        <ItemTemplate>
                            <div style="width: 220px; height: 320px; float: left">
                                <div style="padding:5px; width: 200px; height: 250px">
                                    <img src="<%#Eval("图片路径") %>" width="200" title='<%#Eval("课程名") %>' height="250" />
                                </div>
                                <div>
                                    课程名：<%#Eval("课程名") %></div>
                                <div>
                                    课程性质：<%#Eval("课程性质") %></div>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT &quot;学院ID&quot;, &quot;专业ID&quot;, &quot;课程ID&quot;, &quot;课程名&quot;, &quot;课程性质&quot;, &quot;学分&quot;, &quot;课时&quot;, &quot;课程信息&quot;, &quot;图片路径&quot; FROM &quot;TA_课程表&quot;"></asp:SqlDataSource>
                </div>
            </div>

            <div style="width: 100%; height: 50px; float: left">
                <div style="width: 900px; margin: 0 auto; display: block;">
                <webdiyer:AspNetPager ID="AspNetPager1" runat="server" BorderStyle="None" FirstPageText="首页" LastPageText="尾页" NextPageText="下一页" OnPageChanged="AspNetPager1_PageChanged" PageSize="8" PrevPageText="上一页" UrlPaging="True"></webdiyer:AspNetPager>     
                </div>
            </div>

            <div class="logo">
            </div>

            <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DeleteMethod="Delete" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="XSGLDataSetTableAdapters.TA_课程表TableAdapter">
                <DeleteParameters>
                    <asp:Parameter Name="Original_课程ID" Type="String" />
                </DeleteParameters>
            </asp:ObjectDataSource>

    </form>
</body>
</html>
