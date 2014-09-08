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
				<!--#include file="index_left.asp" -->
				</td>
				<td>
				<table id="__01" width="714" height="450" border="0" cellpadding="0" cellspacing="0">
					<tr>
						<td>
							<img src="images/index_qw_01.jpg" width="714" height="36" alt=""></td>
					</tr>
					<tr>
						<td width="714" height="169">
						<div id="index_gsjj">
						<p>南京格力空调售后服务中心 服务电话——4008870230/025-84208088，十几年来始终奉行着真诚、坦诚、竭诚为客户服务的经营宗旨，以诚实信用的职业道德、科学规范的工作流程、熟练高超的服务技能、透明公道的服务价格、舒适优雅的服务环境赢得社会各界的大力支持和信任。南京格力空调售后服务中心24小时监督热线:4008870230/025-84208088 24小时内上门作为电器服务行业的先锋，中心具有最完善的管理、最规范的服务、最专业的技术、最合理的收费。</p>
						</div>
						</td>
					</tr>
					<tr>
						<td>
							<img src="images/index_qw_03.jpg" width="714" height="34" alt=""></td>
					</tr>
					<tr>
						<td width="714" height="211">
									<div style="padding-top:10px;margin-left:10px">
										<!--内容开始 -->
											<script src="JS/MSClass.js"></script>
									<div id="marqueediv6" style=" text-align:center;width:685px;height:170px;margin-left:5px; padding-top:5px;">
								  <table width="100%" border="0" cellspacing="0" cellpadding="0">
									  <tr>
									  
									   <%
			
							set rs = UICon.QUery("select top 20 * from user_case order by hots desc ")
							if rs.recordcount<>0 then
							do while not rs.eof
							'''''''''怎么分多列''''''
							''该页面采用DIV+css。所以分列实现起来非常方便不需要改页面
							''只需要改变css中 procontent 标签下的li的宽度即可
							''一列 只要procontent 的宽度和li的宽度一致
							''需要几列 只要将li的宽度设置为 procontent的几分之几
						   %>
										<td width="122"><table width="122" border="0" align="center" cellpadding="0" cellspacing="0"  height="122">
											<tr>
											  <td width="122"><a href="case_in.asp?categoryID=<%=rs("categoryID")%>&amp;itemid=<%=rs("id")%>"><img src="<%=rs("Field_picture")%>"  height="130" ; width="150"   border="0" style="margin-top:5px"/></a>
											  <a href="case__in.asp?categoryID=<%=rs("categoryID")%>&amp;itemid=<%=rs("id")%>" style="display:block; text-align:center; line-height:20px; color:#000; margin-top:5px;"><%=rs("title")%></a>								  </td>
											</tr>
										</table></td>
										<td width="10">&nbsp;</td>
						  <%
							rs.movenext
							loop
							end if
							%>              
									  </tr>
					  </table>
					</div>
									<script>new Marquee("marqueediv6",2,1,685,170,20,0,0)</script>
									<!--内容结束 -->
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
		<!--#include file="footer.asp" -->
		</td>
	</tr>
</table>

</div>
</body>
</html>
