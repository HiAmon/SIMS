<%@ Page Language="C#" AutoEventWireup="true" CodeFile="NewIndex.aspx.cs" Inherits="NewIndex" %>


<!DOCTYPE HTML>
<script runat="server">

    //protected void Page_Load(object sender, EventArgs e)
    //{

    //}
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Home</title>
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'/>
<!--slider-->
<link href="css/slider.css" rel="stylesheet" type="text/css" media="all"/>
<script type="text/javascript" src="js/jquery-1.9.0.min.js"></script>
<script type="text/javascript" src="js/jquery.nivo.slider.js"></script>
<script type="text/javascript">
    $(window).load(function () {
        $('#slider').nivoSlider();
    });
    </script>
   <style >
       .header{
	background: url(../images/header-bg.jpg);
}
   </style>
</head>
<body>
    <form id="form1" runat="server">
<div class="header">	
	<div class="header-top">
		<div class="wrap">
				<div class="logo">
                    <a href="index.html"><img src="imgs/logo1.png" alt=""></a>
					&nbsp;<asp:Label ID="Label1" runat="server" Font-Names="微软雅黑" Font-Size="XX-Large" ForeColor="White" Height="51px" Text="Sims学生管理系统，欢迎你！" Width="513px"></asp:Label>
				    <br />
				</div>
				<div class="search_box">
				    <asp:Button ID="Button1" runat="server" Font-Size="Large" OnClick="Button1_Click" Text="登录" />

			    </div>
			<div class="clear"></div> 
	    </div>
    </div>
	<div class="header-bottom">
		 <div class="wrap"> 
			 <div id='cssmenu'>
				<ul>
				   <li class='active'><a href='index.html'><span>主页</span></a></li>
				   <li><a href='about.html'><span>关于</span></a></li>
				   <li class='has-sub'><a href='services.html'><span>新闻</span></a>
				      <ul>
				         <li class='has-sub'><a href='services.html'><span>Service 1</span></a></li>
				         <li class='has-sub'><a href='services.html'><span>Service 2</span></a></li>
				      </ul>
				   </li>
				   <%-- <li><a href='gallery.html'><span>Gallery</span></a></li>
				   <li><a href='blog.html'><span>Blog</span></a></li>--%>
				   <li class='last'><a href='contact.html'><span>联系</span></a></li>
				    <div class="clear"></div> 
				    <li></li>
				</ul>
			  </div>
		 </div>
    </div>	
</div>
      <!------ Slider ------------>
		  <div class="slider">
		  	<div class="wrap">
	      	 <div class="slider-wrapper theme-default">
	            <div id="slider" class="nivoSlider">
	                <img src="images/14.jpg" alt="" />
	                <img src="images/13.jpg" alt="" />
	                <img src="images/15.jpg" alt="" />
	                <img src="images/16.jpg" alt="" />
	                <img src="images/17.jpg" alt="" />
	            </div>
	        </div>
	        </div>
   		</div>
		<!------End Slider ------------>
        <div class="course">
            &nbsp;
            <asp:Label ID="Label2" runat="server" Text="   &nbsp &nbsp &nbsp&nbsp  课程：" Font-Size="X-Large" ForeColor="#FF3300"></asp:Label>
        </div> 
		<div class="content-top">
			<div class="wrap">
				<div class="section group">
				<div class="col_1_of_top span_1_of_top">
					 <td align="center">
                                                <asp:ImageButton ID="img1" runat="server" Height="150px" ImageUrl="~/image/1.jpg" OnClick="ImageButton1_Click" Width="130px" />
                                            </td>
					<h3>高等数学（上）</h3>

				 <div class="clear"></div> 
				</div>
				<div class="col_1_of_top span_1_of_top">
					 <td align="center">
                                                <asp:ImageButton ID="img2" runat="server" Height="150px" ImageUrl="~/image/2.jpg" OnClick="ImageButton2_Click" Width="130px" />
                                            </td >
					 <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" ProviderName="<%$ ConnectionStrings:ConnectionString2.ProviderName %>" SelectCommand="SELECT &quot;用户ID&quot;, &quot;用户账号&quot;, &quot;角色名&quot;, &quot;密码&quot; FROM &quot;角色表&quot;"></asp:SqlDataSource>
					<h3>高等数学（下）</h3>

				</div>
				<div class="col_1_of_top span_1_of_top">
					 <td align="center">
                                                <asp:ImageButton ID="img3" runat="server" Height="150px" ImageUrl="~/image/3.jpg" OnClick="ImageButton3_Click" Width="130px" />
                                            </td>
					<h3>数字逻辑</h3>

				</div>
                    <div class="col_1_of_top span_1_of_top">
					 <td align="center">
                                                <asp:ImageButton ID="img4" runat="server" Height="150px" ImageUrl="~/image/4.jpg" OnClick="ImageButton4_Click" Width="130px" />
                                            </td>
					<h3>数据结构</h3>
                        </div>
                            <div class="col_1_of_top span_1_of_top">
					 <td align="center">
                                                <asp:ImageButton ID="img5" runat="server" Height="150px" ImageUrl="~/image/5.jpg" OnClick="ImageButton5_Click" Width="130px" />
                                            </td>
					<h3>数据结构</h3>
				</div>
                               <div class="col_1_of_top span_1_of_top">
					 <td align="center">
                                                <asp:ImageButton ID="ImageButton9" runat="server" Height="150px" ImageUrl="~/image/slh.jpg" OnClick="Button2_Click" Width="200px" />
                                            </td>
					<h3> &nbsp; &nbsp; &nbsp; &nbsp;<asp:Button ID="Button2" runat="server" Text="更多" BackColor="White" BorderColor="White" Font-Size="Large" ForeColor="Black" OnClick="Button2_Click" /></h3>
				</div> <%--目前更多和省略号图片 连接的是登录 为连接列表页--%>
                    
			</div>
		<div class="content-middle">
			<div class="wrap">
			   <div class="middle-content">
                    <h2> Sims学生管理系统课程概况<br> <span>日思日睿 笃志笃行</span></h2>
                    <hr class="hr1"><br>
                    <hr class="hr2">
                    <p>日思日睿 笃志笃行语出我校前身国立湖北师范学院第一任院长汪奠基先生为国师填写的院歌歌词。意思是每天不倦地学习，勤于思考，就能融会贯通，博大精深；立定志向，始终如一地去追求，然后切实地实践，就能达到理想的目标。它体现了我校一贯的教育目标和培养人才的要求，是学校历史和校风的延续。</p>
                </div>
           <div class="section group">
				<div class="col_1_of_4 span_1_of_4">
					<div class="homeBox">
						<div class="one_fourth">
							<div class="col_1_of_top span_1_of_top">
					 <td align="center">
                                                <asp:ImageButton ID="ImageButton1" runat="server" Height="183px" ImageUrl="~/image/2.jpg" OnClick="ImageButton6_Click" Width="160px" />
                                            </td >	
				            </div>
						</div>
					</div>
				</div>
				<div class="col_1_of_4 span_1_of_4">
					<div class="homeBox">
						<div class="one_fourth">	
								<div class="col_1_of_top span_1_of_top">
					 <td align="center">
                                                <asp:ImageButton ID="ImageButton2" runat="server" Height="183px" ImageUrl="~/image/1.jpg" OnClick="ImageButton6_Click" Width="160px" />
                                            </td >	
				            </div>
						</div>
					</div>
				</div>
				<div class="col_1_of_4 span_1_of_4">
					<div class="homeBox">
						<div class="one_fourth">	
								<div class="col_1_of_top span_1_of_top">
					 <td align="center">
                                                <asp:ImageButton ID="ImageButton3" runat="server" Height="183px" ImageUrl="~/image/4.jpg" OnClick="ImageButton6_Click" Width="160px" />
                                            </td >	
				            </div>
						</div>
					</div>
				</div>
				<div class="col_1_of_4 span_1_of_4">
					<div <class="homeBox">
						<div class="one_fourth">	
								<div class="col_1_of_top span_1_of_top">
					 <td align="center">
                                                <asp:ImageButton ID="ImageButton4" runat="server" Height="183px" ImageUrl="~/image/5.jpg" OnClick="ImageButton6_Click" Width="160px" />
                                            </td >	
				            </div>
						</div>
					</div>
				</div>
				<div class="clear"></div> 
			</div>
			 <div class="section group">
				<div class="col_1_of_4 span_1_of_4">
					<div class="homeBox">
						<div class="one_fourth">	
								<div class="col_1_of_top span_1_of_top">
					 <td align="center">
                                                <asp:ImageButton ID="ImageButton5" runat="server" Height="183px" ImageUrl="~/image/5.jpg" OnClick="ImageButton6_Click" Width="160px" />
                                            </td >	
				            </div>
						</div>
					</div>
				</div>
				<div class="col_1_of_4 span_1_of_4">
					<div class="homeBox">
						<div class="one_fourth">	
								<div class="col_1_of_top span_1_of_top">
					 <td align="center">
                                                <asp:ImageButton ID="ImageButton6" runat="server" Height="183px" ImageUrl="~/image/6.jpg" OnClick="ImageButton6_Click" Width="160px" />
                                            </td >	
				            </div>	
						</div>
					</div>
				</div>
				<div class="col_1_of_4 span_1_of_4">
					<div class="homeBox">
						<div class="one_fourth">	
								<div class="col_1_of_top span_1_of_top">
					 <td align="center">
                                                <asp:ImageButton ID="ImageButton7" runat="server" Height="183px" ImageUrl="~/image/7.jpg" OnClick="ImageButton6_Click" Width="160px" />
                                            </td >	
				            </div>	
						</div>
					</div>
				</div>
				<div class="col_1_of_4 span_1_of_4">
					<div class="homeBox">
						<div class="one_fourth">	
								<div class="col_1_of_top span_1_of_top">
					 <td align="center">
                                                <asp:ImageButton ID="ImageButton8" runat="server" Height="183px" ImageUrl="~/image/8.jpg" OnClick="ImageButton6_Click" Width="160px" />
                                            </td >	
				            </div>	
						</div>
					</div>
				</div>
				<div class="clear"></div> 
			</div>
			</div>
		</div>
			</div>
		</div>
		<div class="content-bottom">
			<div class="wrap">
				 <div class="middle-content">
                   <%-- <h2>Our Staff</h2>--%>
                    <hr class="hr1"><br>
                    <hr class="hr2">
                 </div>
				<%--<div class="section group example">
					<div class="col_1_of_2 span_1_of_2">
					       <ul class="list3">
                                <li>
                                    <figure><img src="images/pic14.jpg" alt=""></figure>
                                    <div class="extra-wrap1">
                                        <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation</p>
                                        <p class="lnk"><i>Lorem ipsum</i> / dolor sit amet <a href="#">tincidunt </a></p>
                                    </div>
                                </li>
                                <li>
                                      <figure><img src="images/pic3.jpg" alt=""></figure>
                                    <div class="extra-wrap1">
                                        <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation</p>
                                        <p class="lnk"><i>Lorem ipsum</i> / dolor sit amet <a href="#">tincidunt </a></p>
                                    </div>
                                </li>
                            </ul>
				     </div>--%>
				<%--<div class="col_1_of_2 span_1_of_2">
					 <ul class="list3">
                                <li>
                                    <figure><img src="images/pic4.jpg" alt=""></figure>
                                    <div class="extra-wrap1">
                                        <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation</p>
                                        <p class="lnk"><i>Lorem ipsum</i> / dolor sit amet <a href="#">tincidunt </a></p>
                                    </div>
                                </li>
                                <li>
                                      <figure><img src="images/pic5.jpg" alt=""></figure>
                                    <div class="extra-wrap1">
                                        <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation</p>
                                        <p class="lnk"><i>Lorem ipsum</i> / dolor sit amet <a href="#">tincidunt </a></p>
                                    </div>
                                </li>
                            </ul>
 				</div>--%>
			   <%--<div class="clear"></div> --%>
		    </div>
			</div>
		</div>
<div class="footer-bottom">
 	<div class="wrap">
 		<div class="copy">
			<p>&copy; Copyright &copy; 2013.Company name All rights reserved.<%--<a target="_blank" href="http://sc.chinaz.com/moban/">&#x7F51;&#x9875;&#x6A21;&#x677F;--%></a></p>
		</div>
 	</div>
 </div>
<div style="display:none"><script src='http://v7.cnzz.com/stat.php?id=155540&web_id=155540' language='JavaScript' charset='gb2312'></script></div>
    </form>
</body>
</html>

