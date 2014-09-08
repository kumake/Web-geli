<table id="__01" width="247" height="450" border="0" cellpadding="0" cellspacing="0">
	<tr>
		<td>
			<img src="images/neiye_left_01.jpg" width="247" height="39" alt=""></td>
	</tr>
	<tr>
		<td  width="247" height="130">
		<div id="left_lxwm">
		<p>格力服务中心</p>
		<p>服务专线：4008870230</p>
		<p>电话：025-84208088</p>
		<p>地址：南京的建宁路58号</p>
		<p></p>
		</div>
		</td>
	</tr>
	<tr>
		<td>
			<img src="images/neiye_left_03.jpg" width="247" height="36" alt=""></td>
	</tr>
	<tr>
		<td width="247" height="245">
		<ul id="left_cjwt">
								<%
									set rs = UICon.Query("select top 9 * from user_cjwt order by id desc")
									do while not rs.eof
								
								%>
									<li>[]　<a  href="cjwt_in.asp?categoryid=<%=rs("categoryID")%>&amp;itemid=<%=rs("id")%>" title="<%=rs("title")%>"  target="_blank" ><%=month(rs("PostTime"))%>-<%=day(rs("PostTime"))%><%=left(rs("title"),11)%></a></li>	
								<%
									rs.movenext
									loop
									rs.close
									set rs=nothing
								%>
		</ul>
		</td>
	</tr>
</table>