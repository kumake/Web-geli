<!--#include file="conn.asp"-->
<!--#include file="sp_inc/class_page.asp"-->
<!--#include file="plugIn/Setting.Config.asp"-->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title><%=config_sitename%></title>
<meta name="keywords" content="<%=config_seokeyword%>">
<meta name="description" content="<%=config_seocontent%>">
<link href="css/public.css" rel="stylesheet" type="text/css">
<style type="text/css">
<!--
.proLi{ width:160px; line-height:30px; border-bottom:#CCCCCC solid 1px; display:block; background:url(images/li.jpg) no-repeat 30px 50%; padding-left:50px; margin-left:32px;}
 -->
</style>
</head>
<body>
<div id="container">
<table id="__01" width="961" height="1003" border="0" cellpadding="0" cellspacing="0">
	<tr>
		<td>
		<!--#include file="head.asp" --></td>
	</tr>
	<tr>
		<td>
		<table id="__01" width="961" height="450" border="0" cellpadding="0" cellspacing="0">
			<tr>
				<td>
				<!--#include file="neiye_left.asp" -->
				</td>
				<td>
				<table id="__01" width="714" height="450" border="0" cellpadding="0" cellspacing="0">
					<tr>
						<td background="images/neiye_kk_01.jpg" width="714" height="44">
						<div  style=" font-size:13px; font-weight:bold; color:#fff; margin-left:30px; padding-top:18px;">
						公司简介
						</div>
						</td>
					</tr>
					<tr>
						<td  width="714" height="406">
							<div id="neiye_main">
								<div id="neiye_text">
								<!--内容开始 -->
								<% singlename = VerificationUrlParam("signle","string","公司简介")
									response.Write UserSinglePage(singlename)%>
								<!--内容结束 -->
								</div>
							</div>
						</td>
					</tr>
				</table>
				</td>
			</tr>
		</table>
		</td>
	</tr>
	<tr>
		<td>
		<!--#include file="footer.asp" --></td>
	</tr>
</table>
</div>
</body>
</html>
