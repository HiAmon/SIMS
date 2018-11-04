<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Index_List.aspx.cs" Inherits="Index_List" %>

<%@ Register Assembly="DevExpress.Web.v17.1, Version=17.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>AspNetPager的使用</title>
    <style type="text/css">
        .big{
        width:940px;height:340px
        }
        .item{
        width:185px;height:200px;float:left;/*并排*/
        text-align:center;font-size:12px;
        }
        .nav{
        width:940px;height:200px;text-align:center;line-height:20px;
        }
        </style>
</head>
<body>
   <form id="form1" runat="server">
    <div class="big">
        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="ObjectDataSource1" >
            <ItemTemplate>
                <div class="item">
                    <div><img src='<%#Eval("图片路径") %>' width="140" title='<%#Eval("课程名") %>' height="180"/></div>
                    <div><%#Eval("课程名") %></div>
                   <div> 
                       <div><%#Eval("课程ID") %></div>
                       <dx:ASPxButton ID="Btn_Check" runat="server" Text="查看" OnCommand="Btn_Check_Click" CommandArgument='<%#Eval("课程ID") %>'></dx:ASPxButton>
                   </div>
                </div>
            </ItemTemplate></asp:Repeater>
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DeleteMethod="Delete" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="XSGLDataSetTableAdapters.TA_课程表ADDTableAdapter" InsertMethod="Insert" UpdateMethod="Update">
            <DeleteParameters>
                <asp:Parameter Name="Original_课程ID" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="学院ID" Type="String" />
                <asp:Parameter Name="专业ID" Type="String" />
                <asp:Parameter Name="课程ID" Type="String" />
                <asp:Parameter Name="课程名" Type="String" />
                <asp:Parameter Name="课程性质" Type="String" />
                <asp:Parameter Name="学分" Type="Decimal" />
                <asp:Parameter Name="课时" Type="Decimal" />
                <asp:Parameter Name="图片路径" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="学院ID" Type="String" />
                <asp:Parameter Name="专业ID" Type="String" />
                <asp:Parameter Name="课程名" Type="String" />
                <asp:Parameter Name="课程性质" Type="String" />
                <asp:Parameter Name="学分" Type="Decimal" />
                <asp:Parameter Name="课时" Type="Decimal" />
                <asp:Parameter Name="图片路径" Type="String" />
                <asp:Parameter Name="Original_课程ID" Type="String" />
            </UpdateParameters>
        </asp:ObjectDataSource>
    </div>
    <div class="nav">
    </div>
    </form>
</body>
</html>

