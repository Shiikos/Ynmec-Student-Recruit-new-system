<%@ Page Language="C#" AutoEventWireup="true" CodeFile="baoming.aspx.cs" Inherits="baoming" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
	<meta charset="UTF-8"/>
	<meta name="viewport" content="width=device-width, initial-scale=1"/>
	<link rel="stylesheet" href="css/1.css"/> <!-- CSS reset -->
	<link rel="stylesheet" href="css/2.css"/> <!-- Resource style -->
	<script src="js/modernizr.js"></script> <!-- Modernizr -->
  	
	<title>报名</title>
</head>
<body>
	<header class="cd-main-header">
           <link rel="shortcut icon" href="favicon.ico" />
<link rel="bookmark"href="/favicon.ico" />
		<h1>工业信息技术系团总支学生会报名界面</h1>
	</header>

	<ul class="cd-pricing">
		<li>
			<header class="cd-pricing-header">
				<h2>来自学长的建议</h2>

				<div class="cd-price">
					<span>酷酷的学长</span>
				</div>
			</header> <!-- .cd-pricing-header -->

			<div class="cd-pricing-features">
				<ul>
					<li class="available"><em>多去比较看看</em></li>
                    <li class="available"><em>仔细查看部门介绍</em></li>
					<li class="available"><em>选择你想锻炼的方面</em></li>
					<li class="available"><em>选择你感兴趣的部门</em></li>
                    <li class="available"><em>锻炼自己的交际能力</em></li>
					<li class="available"><em>向认识的学长学姐们咨询一下</em></li>
				</ul>
			</div> <!-- .cd-pricing-features -->
		</li>
		
		<li>
			<header class="cd-pricing-header">
				<h2>来自我们的建议</h2>

				<div class="cd-price">
                    <span>团总支</span>
					<span>学生会</span>
				</div>
			</header> <!-- .cd-pricing-header -->

			<div class="cd-pricing-features">
				<ul>
					<li class="available"><em>选择你喜欢的</em></li>
					<li class="available"><em>选择能锻炼你的</em></li>
					<li class="available"><em>多听多看多了解</em></li>
					<li><em>乱填乱报</em></li>
				</ul>
			</div> <!-- .cd-pricing-features -->

			<footer class="cd-pricing-footer">
				<a href="#">报名</a>
                
			</footer> <!-- .cd-pricing-footer -->
		</li>

		<li>
			<header class="cd-pricing-header">
				<h2>来自学姐的建议</h2>

				<div class="cd-price">
					<span>美美的学姐</span>
				</div>
			</header> <!-- .cd-pricing-header -->

			<div class="cd-pricing-features">
				<ul>
					<li class="available"><em>选择帅哥多的部门٩(๑❛ᴗ❛๑)۶</em></li>
					<li class="available"><em>选择帅哥多的部门(￣▽￣)~*</em></li>
					<li class="available"><em>选择帅哥多的部门o(*￣3￣)o </em></li>
					<li class="available"><em>选择帅哥多的部门o(￣ε￣*) </em></li>
                    <li class="available"><em>选择帅哥多的部门（￣3￣づ❤～</em></li>
                    <li class="available"><em>选择帅哥多的部门(～o￣3￣)～ </em></li>
				</ul>
			</div> <!-- .cd-pricing-features -->
		</li>
	</ul> <!-- .cd-pricing -->

	<div class="cd-form">
		
		<div class="cd-plan-info">
			<!-- content will be loaded using jQuery - according to the selected plan -->
		</div>

		<div class="cd-more-info">
			<h3>提示</h3>
			<p>每人只能选择两个部门哦，如果你还不清楚我们的部门的话，你可以去到<a href="#">部门介绍</a>&nbsp去仔细考虑一下哦</p>
		</div>
		
		<form runat="server">
			<fieldset>
				<legend>关于你</legend>
				
				<div class="half-width">
					<label for="userName">姓名</label>
					<asp:TextBox id="userName" name="userName" runat="server" placeholder="乱填可就找不到你了哦"></asp:TextBox>
				</div>
				
				<div>
                    <label for="">性别</label>
                    <asp:RadioButton ID="RadioButton1" runat="server" Text="男" GroupName="sex" />
                    <asp:RadioButton ID="RadioButton2" runat="server" Text="女" GroupName="sex" />

                </div>
				
				<div class="half-width">
					<label for="userClass">班级</label>
					<asp:DropDownList ID="userClass" runat="server">
                        <asp:ListItem Selected="True">-----点我选择班级---</asp:ListItem>
                        <asp:ListItem>2017级计算机应用技术1班</asp:ListItem>
                        <asp:ListItem>2017级计算机应用技术2班</asp:ListItem>
                        <asp:ListItem>2017级建筑动画与模型制作1班</asp:ListItem>
                        <asp:ListItem>2017级建筑动画与模型制作2班</asp:ListItem>
                        <asp:ListItem>2017级数学媒体应用技术1班</asp:ListItem>
                        <asp:ListItem>2017级数学媒体应用技术2班</asp:ListItem>
                        <asp:ListItem>2017级产品艺术设计1班</asp:ListItem>
                        <asp:ListItem>2017级产品艺术设计2班</asp:ListItem>
                        <asp:ListItem>2017级文秘速录1班</asp:ListItem>  
					</asp:DropDownList>
				</div>
				<div class="half-width">
					<label for="userNum">学号</label>
					<asp:TextBox id="userNum" runat="server" placeholder="框框不够长，不然说三遍很重要"></asp:TextBox>
				</div>
                <div class="half-width">
					<label for="userPhone">手机号码</label>
					<asp:TextBox id="userPhone" name="userPhone" runat="server" placeholder="你先打一个看看能不能打通"></asp:TextBox>
				</div>
			</fieldset>

			<fieldset>
				<legend>第一志愿</legend>
				<div>
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatColumns="3" RepeatDirection="Horizontal" >
                        <asp:ListItem>纪检部</asp:ListItem>
                        <asp:ListItem>体育部</asp:ListItem>
                        <asp:ListItem>卫生部</asp:ListItem>
                        <asp:ListItem>组织部</asp:ListItem>
                        <asp:ListItem>学宣部</asp:ListItem>
                        <asp:ListItem>外联部</asp:ListItem>
                        <asp:ListItem>文艺部</asp:ListItem>
                        <asp:ListItem>秘书处</asp:ListItem>
                        <asp:ListItem>信息部</asp:ListItem>
                        <asp:ListItem>影视制作部</asp:ListItem>
                    </asp:RadioButtonList>
				</div> <!-- .cd-credit-card -->
			</fieldset>
             <fieldset>
				<legend>第二志愿</legend>
                        <asp:RadioButtonList ID="RadioButtonList2" runat="server" RepeatColumns="3" RepeatDirection="Horizontal" >
                        <asp:ListItem>纪检部</asp:ListItem>
                        <asp:ListItem>体育部</asp:ListItem>
                        <asp:ListItem>卫生部</asp:ListItem>
                        <asp:ListItem>组织部</asp:ListItem>
                        <asp:ListItem>学宣部</asp:ListItem>
                        <asp:ListItem>外联部</asp:ListItem>
                        <asp:ListItem>文艺部</asp:ListItem>
                        <asp:ListItem>秘书处</asp:ListItem>
                        <asp:ListItem>信息部</asp:ListItem>
                        <asp:ListItem>影视制作部</asp:ListItem>
                    </asp:RadioButtonList>
				
				<div>
				</div>
			</fieldset>
			
			
			<fieldset>
				<div>
                    <asp:Button ID="Button1" runat="server" Text="提交" OnClick="Button1_Click" />
				</div>
			</fieldset>
		</form>

		<a href="#0" class="cd-close"></a>
	</div> <!-- .cd-form -->
	
	<div class="cd-overlay"></div> <!-- shadow layer -->
<script src="js/jquery-2.1.4.js"></script>
<script src="js/velocity.min.js"></script>
<script src="js/11.js"></script> <!-- Resource jQuery -->
</body>
</html>