<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CourseAdd.aspx.cs" Inherits="_Default" %>

<%@ Register assembly="DevExpress.Web.v17.1, Version=17.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <style>
        * {
	margin: 0;
	padding: 0;
}
body {
     /*background-color:#dcdcdc;*/
     /*background-color:#87eecb;*/
     /*background-color: #b0e0e6;*/
     background-image:url(BackGroundPictures/CourseAdd_bg.png);
	/*background-image: url(./Content/Images/bg-gray.png);*/
}
form.resetpwd {
	position: absolute;
    height:74%;
	width: 500px;
	left: 50%;
	top: 50%;
	margin-left: -250px;
	margin-top: -190px;
            bottom: 61px;
        }
form.resetpwd fieldset {
	border: 5px solid #999;
	border-radius: 10px;
	padding: 0px;
	/*background-color: #fdfdfd;*/
    /*background-color: #b0e0e6;*/
    /*background-color:#87eecb;*/
}
form.resetpwd legend {
	padding: 0 10px;
	font-weight: bold;
	font-size: 20px;
}
form.resetpwd td {
	padding: 10px 0;
	font-size: 16px;
}
td.tdlabel {
	text-align: right;
	width: 130px;
}
    </style>
    <title>课程表信息</title>
    <script type="text/javascript" lang="javascript">          //图片预览功能
        function preview(upload){
            document.getElementById("imgBook").src=document.getElementById("fuBook").value;
        }    
    </script>
     </head>
<body>
    <form id="form1" runat="server" class="resetpwd">
        <fieldset>
        <h1>课程表信息</h1>
          <div align="center">
              
            <div align="center"><asp:Image runat="server" ID="imgBook" width="153px" Height="134px" Style="padding:2px 2px 5px; border:2px solid #999;" AlternateText="暂无图片"/></div>
            <br/>
            <asp:FileUpload ID="fuBook" runat="server" onchange="preview(this)" Height="22px" Width="207px" />
              
            <asp:Label ID="lblWarn" runat="server" Style="color: Red"></asp:Label>
        </div>
            <div align="center">
            <table cellspacing="0" cellpadding="0" style="width: 100%">
                <tr>
                    <td width="80" align="right">
                        <asp:Label ID="lblCollegeID" runat="server" Text="学院名称"></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="ddlCollegeName" runat="server" Width="145px" DataSourceID="odsCollegeCode" DataTextField="学院" DataValueField="学院代码"></asp:DropDownList>
                    </td>

                    <td width="90" align="right">
                        <asp:Label ID="lblMajorID" runat="server" Text="专业名称"></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="ddlMajorName" runat="server" Width="145px" DataSourceID="odsMajorCode" DataTextField="专业名称" DataValueField="专业ID"></asp:DropDownList>
                    </td>                    
                </tr>

                <tr>
                    <td align="right">
                        <asp:Label ID="lblClassID" runat="server" Text="课程ID"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtClassId" runat="server" Width="145px"></asp:TextBox>
                    </td>

                    <td align="right">
                        <asp:Label ID="lblClassName" runat="server" Text="课程名"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtClassName" runat="server" Width="145px"></asp:TextBox>
                    </td>
                </tr>

                <tr>
                    <td align="right">
                        <asp:Label ID="lblCftc" runat="server" Text="课程性质"></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="ddlCftc" runat="server" Width="145px">
                            <asp:ListItem>必修课</asp:ListItem>
                            <asp:ListItem>选修课 </asp:ListItem>
                            <asp:ListItem>专选课</asp:ListItem>
                        </asp:DropDownList>
                    </td>

                    <td align="right">
                        <asp:Label ID="lblCredit" runat="server" Text="学分"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtCredit" runat="server" Width="145px"></asp:TextBox>
                    </td>
                </tr>

                <tr>
                    <td align="right">

                        <asp:Label ID="lblClassHour" runat="server" Text="课时"></asp:Label>

                    </td>
                    <td>

                        <asp:TextBox ID="txtClassHour" runat="server" Width="145px"></asp:TextBox>

                    </td>
                </tr>
            </table>
                <dx:ASPxButton ID="btnTypeIn" runat="server" OnClick="btnTypeIn_Click" Text="确定">
                    <ClientSideEvents Click="function(s, e) {
	                    if(confirm(&quot;确认上传吗？&quot;))
                        {
                        e.processOnServer=true;
                        }
                        else
                        {
                        e.processOnServer=false;
                        }
                        }" />
                </dx:ASPxButton>
    
            </fieldset>
            <div>
                <asp:ObjectDataSource ID="odsClassTable" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="XSGLDataSetTableAdapters.TA_课程表ADDTableAdapter" DeleteMethod="Delete" InsertMethod="Insert" UpdateMethod="Update">
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
                        <asp:Parameter Name="课程信息" Type="String" />
                        <asp:Parameter Name="图片路径" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="学院ID" Type="String" />
                        <asp:Parameter Name="专业ID" Type="String" />
                        <asp:Parameter Name="课程名" Type="String" />
                        <asp:Parameter Name="课程性质" Type="String" />
                        <asp:Parameter Name="学分" Type="Decimal" />
                        <asp:Parameter Name="课时" Type="Decimal" />
                        <asp:Parameter Name="课程信息" Type="String" />
                        <asp:Parameter Name="图片路径" Type="String" />
                        <asp:Parameter Name="Original_课程ID" Type="String" />
                    </UpdateParameters>
                </asp:ObjectDataSource>
                <asp:ObjectDataSource ID="odsCollegeCode" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="XSGLDataSetTableAdapters.DM_学院代码TableAdapter" OnSelecting="odsCollegeCode_Selecting" DeleteMethod="Delete" InsertMethod="Insert" UpdateMethod="Update">
                    <DeleteParameters>
                        <asp:Parameter Name="Original_学院代码" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="学院代码" Type="String" />
                        <asp:Parameter Name="学院" Type="String" />
                        <asp:Parameter Name="高校代码" Type="String" />
                        <asp:Parameter Name="是否启用" Type="String" />
                        <asp:Parameter Name="排序" Type="Decimal" />
                        <asp:Parameter Name="备注" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="学院" Type="String" />
                        <asp:Parameter Name="高校代码" Type="String" />
                        <asp:Parameter Name="是否启用" Type="String" />
                        <asp:Parameter Name="排序" Type="Decimal" />
                        <asp:Parameter Name="备注" Type="String" />
                        <asp:Parameter Name="Original_学院代码" Type="String" />
                    </UpdateParameters>
                </asp:ObjectDataSource>
                <asp:ObjectDataSource ID="odsMajorCode" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="XSGLDataSetTableAdapters.DM_专业代码表TableAdapter" DeleteMethod="Delete" InsertMethod="Insert" UpdateMethod="Update">
                    <DeleteParameters>
                        <asp:Parameter Name="Original_专业ID" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="专业ID" Type="String" />
                        <asp:Parameter Name="专业代码" Type="String" />
                        <asp:Parameter Name="专业名称" Type="String" />
                        <asp:Parameter Name="所属学院代码" Type="String" />
                        <asp:Parameter Name="学历分类" Type="String" />
                        <asp:Parameter Name="专业简介" Type="Object" />
                        <asp:Parameter Name="高校代码" Type="String" />
                        <asp:Parameter Name="是否启用" Type="String" />
                        <asp:Parameter Name="排序" Type="Decimal" />
                        <asp:Parameter Name="备注" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="专业代码" Type="String" />
                        <asp:Parameter Name="专业名称" Type="String" />
                        <asp:Parameter Name="所属学院代码" Type="String" />
                        <asp:Parameter Name="学历分类" Type="String" />
                        <asp:Parameter Name="专业简介" Type="Object" />
                        <asp:Parameter Name="高校代码" Type="String" />
                        <asp:Parameter Name="是否启用" Type="String" />
                        <asp:Parameter Name="排序" Type="Decimal" />
                        <asp:Parameter Name="备注" Type="String" />
                        <asp:Parameter Name="Original_专业ID" Type="String" />
                    </UpdateParameters>
                </asp:ObjectDataSource>
                <br />
            </div>
        </div>
    </form>
</body>
</html>
