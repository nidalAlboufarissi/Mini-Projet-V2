<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	
        <script type="text/javascript" src="https://www.google.com/jsapi"></script>
         <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <script src="javascript/JS_Source.js"></script>
<title>Accueil</title>



</head>
<body>

     <%@ include file="header.jsp" %>

  	<div style="margin-top: 10px;float:left ;width:30%">
  		<ul class="list-group">
  <li class="list-group-item justify-content-between">
    Cras justo odio
    <span class="badge badge-default badge-pill">14</span>
  </li>
  <li class="list-group-item justify-content-between">
    Dapibus ac facilisis in
    <span class="badge badge-default badge-pill">2</span>
  </li>
  <li class="list-group-item justify-content-between">
    Morbi leo risus
    <span class="badge badge-default badge-pill">1</span>
  </li>
</ul>
  	</div>
  	<div style="float: left;margin-left: 50px;width:60%"> 
  	<div id="chart_div" style=" height: 500px;float:buttom;width: 100%"></div>
                <div id="chart_div2" style=" height: 500px;float :buttom"></div>
                </div>
     <%@ include file="bar.jsp" %>
</body>
</html>