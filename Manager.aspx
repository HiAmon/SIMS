<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Manager.aspx.cs" Inherits="管理" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
                
        
        .auto-style1 {
            width: 100px;
        }
                
        
        .auto-style2 {
            width: 625px;
            height: 50px;
        }
                
        
        .auto-style3 {
            width: 1250px;
        }
                
        
        .auto-style4 {
            height: 50px;
        }
                
        
    </style>
</head>
<body style="">
    <form id="form1" runat="server">
        <table>
            <tr>
                <td style="vertical-align:top;text-align:left" class="auto-style1" >
                    <asp:TreeView ID="trv导航" runat="server" Height="16px" OnSelectedNodeChanged="TreeView1_SelectedNodeChanged" ShowExpandCollapse="False" style="margin-top: 0px" Width="46px" BorderColor="Black" BorderStyle="None">
                        <HoverNodeStyle Font-Underline="True" ForeColor="#5555DD" />
                        <Nodes>
                            <asp:TreeNode Text="个人中心" Value="新建节点" SelectAction="None" Selected="True">
                                <asp:TreeNode Text="我的信息" Value="新建节点"></asp:TreeNode>
                                <asp:TreeNode Text="修改密码" Value="新建节点"></asp:TreeNode>
                            </asp:TreeNode>
                            <asp:TreeNode Text="课程管理" Value="新建节点">
                            </asp:TreeNode>
                            <asp:TreeNode Text="学生管理" Value="新建节点"></asp:TreeNode>
                            <asp:TreeNode Text="教师管理" Value="新建节点"></asp:TreeNode>
                        </Nodes>
                        <NodeStyle Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" HorizontalPadding="0px" NodeSpacing="2px" VerticalPadding="0px" BorderColor="White" BorderWidth="1px" />
                        <ParentNodeStyle Font-Bold="False" />
                        <SelectedNodeStyle Font-Underline="True" ForeColor="#5555DD" HorizontalPadding="0px" VerticalPadding="0px" />
                    </asp:TreeView>
                </td>
                <td class="auto-style3">
                    <asp:MultiView ID="mlv课程管理" runat="server">
                        <asp:View ID="viw课程管理" runat="server" EnableTheming="True" OnLoad="viw课程管理_Load">
                            <table>
                                <tr>
                                    <td class="auto-style4">
                                        <asp:DropDownList ID="ddl查询选项" runat="server" Height="43px" Width="254px">
                                            <asp:ListItem Value="*">全部</asp:ListItem>
                                            <asp:ListItem Value="学院ID">按学院</asp:ListItem>
                                            <asp:ListItem Value="专业ID">按专业</asp:ListItem>
                                            <asp:ListItem Value="课程ID">按课程号</asp:ListItem>
                                            <asp:ListItem Value="课程名">按课程名</asp:ListItem>
                                            <asp:ListItem Value="课程性质">按课程性质</asp:ListItem>
                                            <asp:ListItem Value="学分">按学分</asp:ListItem>
                                            <asp:ListItem Value="课时">按课时</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                    <td class="auto-style4">
                                        <asp:TextBox ID="txt查询条件" runat="server" Height="40px" Width="254px"></asp:TextBox>
                                    </td>
                                    <td class="auto-style4">
                                        <asp:Button ID="btn查询" runat="server" Height="40px" Text="查询" Width="81px" OnClick="btn查询_Click" />
                                    </td>
                                    <td style="text-align:center;" class="auto-style2">
                                        <asp:Button ID="btn添加课程" runat="server" Height="40px" Text="添加课程" OnClick="btn添加课程_Click" />
                                    </td>
                                </tr>
                            </table>
                            <asp:GridView ID="gdv课程信息" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="课程ID" DataSourceID="TA_课程表" ForeColor="#333333" GridLines="None" Width="1239px">
                                <AlternatingRowStyle BackColor="White" />
                                <Columns>
                                    <asp:BoundField DataField="学院ID" HeaderText="学院ID" SortExpression="学院ID" />
                                    <asp:BoundField DataField="专业ID" HeaderText="专业ID" SortExpression="专业ID" />
                                    <asp:BoundField DataField="课程ID" HeaderText="课程ID" ReadOnly="True" SortExpression="课程ID" />
                                    <asp:BoundField DataField="课程名" HeaderText="课程名" SortExpression="课程名" />
                                    <asp:BoundField DataField="课程性质" HeaderText="课程性质" SortExpression="课程性质" />
                                    <asp:BoundField DataField="学分" HeaderText="学分" SortExpression="学分" />
                                    <asp:BoundField DataField="课时" HeaderText="课时" SortExpression="课时" />
                                    <asp:TemplateField ShowHeader="False">
                                        <EditItemTemplate>
                                            <asp:LinkButton ID="lbn更新" runat="server" CausesValidation="True" CommandName="Update" Text="更新"></asp:LinkButton>
                                            &nbsp;<asp:LinkButton ID="lbn取消" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消"></asp:LinkButton>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:LinkButton ID="lab编辑" runat="server" CausesValidation="False" CommandName="Edit" Text="编辑" ></asp:LinkButton>
                                            &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Delete" OnClientClick="return confirm(&quot;确认要删除吗？&quot;)" Text="删除"></asp:LinkButton>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                                <EditRowStyle BackColor="#2461BF" />
                                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                <RowStyle BackColor="#EFF3FB" />
                                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                                <SortedDescendingHeaderStyle BackColor="#4870BE" />
                            </asp:GridView>
                            <asp:SqlDataSource ID="TA_课程表" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM &quot;TA_课程表&quot; WHERE &quot;课程ID&quot; = :original_课程ID AND ((&quot;学院ID&quot; = :original_学院ID) OR (&quot;学院ID&quot; IS NULL AND :original_学院ID IS NULL)) AND ((&quot;专业ID&quot; = :original_专业ID) OR (&quot;专业ID&quot; IS NULL AND :original_专业ID IS NULL)) AND ((&quot;课程名&quot; = :original_课程名) OR (&quot;课程名&quot; IS NULL AND :original_课程名 IS NULL)) AND ((&quot;课程性质&quot; = :original_课程性质) OR (&quot;课程性质&quot; IS NULL AND :original_课程性质 IS NULL)) AND ((&quot;学分&quot; = :original_学分) OR (&quot;学分&quot; IS NULL AND :original_学分 IS NULL)) AND ((&quot;课时&quot; = :original_课时) OR (&quot;课时&quot; IS NULL AND :original_课时 IS NULL))" InsertCommand="INSERT INTO &quot;TA_课程表&quot; (&quot;学院ID&quot;, &quot;专业ID&quot;, &quot;课程ID&quot;, &quot;课程名&quot;, &quot;课程性质&quot;, &quot;学分&quot;, &quot;课时&quot;) VALUES (:学院ID, :专业ID, :课程ID, :课程名, :课程性质, :学分, :课时)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT 学院ID, 专业ID, 课程ID, 课程名, 课程性质, 学分, 课时 FROM &quot;TA_课程表&quot;" UpdateCommand="UPDATE &quot;TA_课程表&quot; SET &quot;学院ID&quot; = :学院ID, &quot;专业ID&quot; = :专业ID, &quot;课程名&quot; = :课程名, &quot;课程性质&quot; = :课程性质, &quot;学分&quot; = :学分, &quot;课时&quot; = :课时 WHERE &quot;课程ID&quot; = :original_课程ID AND ((&quot;学院ID&quot; = :original_学院ID) OR (&quot;学院ID&quot; IS NULL AND :original_学院ID IS NULL)) AND ((&quot;专业ID&quot; = :original_专业ID) OR (&quot;专业ID&quot; IS NULL AND :original_专业ID IS NULL)) AND ((&quot;课程名&quot; = :original_课程名) OR (&quot;课程名&quot; IS NULL AND :original_课程名 IS NULL)) AND ((&quot;课程性质&quot; = :original_课程性质) OR (&quot;课程性质&quot; IS NULL AND :original_课程性质 IS NULL)) AND ((&quot;学分&quot; = :original_学分) OR (&quot;学分&quot; IS NULL AND :original_学分 IS NULL)) AND ((&quot;课时&quot; = :original_课时) OR (&quot;课时&quot; IS NULL AND :original_课时 IS NULL))">
                                <DeleteParameters>
                                    <asp:Parameter Name="original_课程ID" Type="String" />
                                    <asp:Parameter Name="original_学院ID" Type="String" />
                                    <asp:Parameter Name="original_专业ID" Type="String" />
                                    <asp:Parameter Name="original_课程名" Type="String" />
                                    <asp:Parameter Name="original_课程性质" Type="String" />
                                    <asp:Parameter Name="original_学分" Type="Single" />
                                    <asp:Parameter Name="original_课时" Type="Decimal" />
                                </DeleteParameters>
                                <InsertParameters>
                                    <asp:Parameter Name="学院ID" Type="String" />
                                    <asp:Parameter Name="专业ID" Type="String" />
                                    <asp:Parameter Name="课程ID" Type="String" />
                                    <asp:Parameter Name="课程名" Type="String" />
                                    <asp:Parameter Name="课程性质" Type="String" />
                                    <asp:Parameter Name="学分" Type="Single" />
                                    <asp:Parameter Name="课时" Type="Decimal" />
                                </InsertParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="学院ID" Type="String" />
                                    <asp:Parameter Name="专业ID" Type="String" />
                                    <asp:Parameter Name="课程名" Type="String" />
                                    <asp:Parameter Name="课程性质" Type="String" />
                                    <asp:Parameter Name="学分" Type="Single" />
                                    <asp:Parameter Name="课时" Type="Decimal" />
                                    <asp:Parameter Name="original_课程ID" Type="String" />
                                    <asp:Parameter Name="original_学院ID" Type="String" />
                                    <asp:Parameter Name="original_专业ID" Type="String" />
                                    <asp:Parameter Name="original_课程名" Type="String" />
                                    <asp:Parameter Name="original_课程性质" Type="String" />
                                    <asp:Parameter Name="original_学分" Type="Single" />
                                    <asp:Parameter Name="original_课时" Type="Decimal" />
                                </UpdateParameters>
                            </asp:SqlDataSource>
                        </asp:View>
                    </asp:MultiView>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
