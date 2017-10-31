<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>后台登录</title>
    
<link href="css/bootstrap.min.css" title="" rel="stylesheet" />
<link title="orange" href="css/login.css" rel="stylesheet" type="text/css">

</head>
<body>
  
<div style="height:1px;"></div>
<div class="login">
 <header>
	<h1>后台管理员登陆</h1>
 </header>
 <div class="sr">
	<form runat="server">
		<div class="name">
			<label>
			<i class="sublist-icon glyphicon glyphicon-user"></i>
			</label>
            <asp:TextBox ID="TextBox1" runat="server"
                placeholder="这里输入登录名" class="name_inp"></asp:TextBox>
			
		</div>
		 <div class="name">
			<label>
			<i class="sublist-icon glyphicon glyphicon-pencil"></i>
			</label>
                <asp:TextBox ID="TextBox2" runat="server"
			placeholder="这里输入密码" class="name_inp" TextMode="Password"></asp:TextBox>
		</div>
        <asp:Button ID="Button1" runat="server" Text="登录" class="dl" OnClick="Button1_Click"/>
		
	</form>
 </div>
</div>

<div style="text-align:center;margin:-150px 0; font:normal 14px/24px 'MicroSoft YaHei';color:#ffffff">
</div>
</body>

</html>
