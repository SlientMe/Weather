<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <meta charset="UTF-8">
    <title>My Weather</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  </head>
  
  <%
		
		request.getAttribute("week");
		request.getAttribute("time");
	
		request.getAttribute("moon");		
		request.getAttribute("date");
		
		request.getAttribute("temperature");
		request.getAttribute("humidity");
		request.getAttribute("info");
		request.getAttribute("directString");
		request.getAttribute("dataString");
		request.getAttribute("dateTimeString");
		request.getAttribute("pm25");
		request.getAttribute("pm10");
		request.getAttribute("qualityString");
		request.getAttribute("desString");
		
  
   %>
  
<body style="background-color: aquamarine">
    <p style="text-align: center;font-size:50px;color: blueviolet">天气预报系统</p>
    <div style="text-align: center">
    <form action="/Weather/servlet" method="get" >
        请输入城市名称&nbsp;&nbsp;<input type="text" name="city" >
        <input type="submit" value="查询">
    </form>
    
    
    </div>
    
 
<div style="text-align: center">
<p style="text-align: center;font-size: 28px;color: blueviolet"><strong>当前城市：<%
			if(request.getAttribute("city")==null){
			out.write("");
			}else{
			out.write(String.valueOf(request.getAttribute("city"))); }%></strong></p>
			
			        <p  style="color: brown;font-size: 20px;">今天的日期是：<%String date = String.valueOf(request.getAttribute("date"));
			if(request.getAttribute("date")==null){
			out.write("");
			}else{
			out.write(String.valueOf(request.getAttribute("date"))); }%>&nbsp;&nbsp;&nbsp;更新时间：
			<%
			if(request.getAttribute("time")==null){
			out.write("");
			}else{
			out.write(String.valueOf(request.getAttribute("time"))); }%></p>
        <p  style="color: brown;font-size: 20px;">温度：<%
			if(request.getAttribute("temperature")==null){
			out.write("");
			}else{
			out.write(String.valueOf(request.getAttribute("temperature"))); }%>&nbsp;&nbsp;&nbsp;
			湿度：<%
			if(request.getAttribute("humidity")==null){
			out.write("");
			}else{
			out.write(String.valueOf(request.getAttribute("humidity"))); }%>&nbsp;&nbsp;&nbsp;
			风力：<%
			if(request.getAttribute("direct")==null){
			out.write("");
			}else{
			out.write(String.valueOf(request.getAttribute("direct"))+"  "+String.valueOf(request.getAttribute("power"))); }%>&nbsp;&nbsp;&nbsp;
			信息：<%
			if(request.getAttribute("info")==null){
			out.write("");
			}else{
			out.write(String.valueOf(request.getAttribute("info"))); }%></p>
        <p  style="color: brown;font-size: 20px;">当前的pm:<%String city = String.valueOf(request.getAttribute("city"));
			if(request.getAttribute("curpm")==null){
			out.write("");
			}else{
			out.write(String.valueOf(request.getAttribute("curpm"))); }%>&nbsp;&nbsp;pm2.5:
			<%
			if(request.getAttribute("pm25")==null){
			out.write("");
			}else{
			out.write(String.valueOf(request.getAttribute("pm25"))); }%>&nbsp;&nbsp;pm10:
			<%
			if(request.getAttribute("pm10")==null){
			out.write("");
			}else{
			out.write(String.valueOf(request.getAttribute("pm10"))); }%>&nbsp;&nbsp;空气质量:
			<%
			if(request.getAttribute("qualityString")==null){
			out.write("");
			}else{
			out.write(String.valueOf(request.getAttribute("qualityString"))); }%>
			<br/>
			<br/>

            综合描述：
            <%
			if(request.getAttribute("desString")==null){
			out.write("");
			}else{
			out.write(String.valueOf(request.getAttribute("desString"))); }%></p>
			
			
			
</div>


</body>
</html>
