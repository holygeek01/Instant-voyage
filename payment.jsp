<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Instant voyage|payment</title>
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //Custom Theme files -->
<link href="css/bootstrap.css" type="text/css" rel="stylesheet" media="all">
<link href="css/style.css" type="text/css" rel="stylesheet" media="all">
<link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" />
<link type="text/css" rel="stylesheet" href="css/JFFormStyle-1.css" />
<!-- js -->
<script src="js/jquery.min.js"></script>
<script src="js/modernizr.custom.js"></script>
<!-- //js -->
<!-- fonts -->
<link href='//fonts.googleapis.com/css?family=Roboto:400,100,100italic,300,300italic,400italic,500,700,500italic,700italic,900,900italic' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
<!-- //fonts -->	
<script type="text/javascript">
		$(document).ready(function () {
			$('#horizontalTab').easyResponsiveTabs({
				type: 'default', //Types: default, vertical, accordion           
				width: 'auto', //auto or any width like 600px
				fit: true   // 100% fit in a container
			});
		});
	</script>
<!--pop-up-->
<script src="js/menu_jquery.js"></script>
<!--//pop-up-->	

</head>

<body>


<jsp:include page="hd.jsp" ></jsp:include>

<form action="Payment"   method="post">

<table>


<tr><td>Hotel id:</td><td><input type="text" name="hotelid"   value="<%= request.getParameter("hotelname") %>"/></td></tr>
<tr><td>Check in Date:</td><td><input type="text" name="checkindate"    value="<%=request.getParameter("checkindate") %>"  /></td></tr>
<tr><td>Check out Date:</td><td><input type="text" name="checkoutdate"     value="<%=request.getParameter("checkoutdate") %>"/></td></tr>
<tr><td>No of Guest:</td><td><input type="text" name="guestno" value="<%=request.getParameter("memberno") %>"/></td></tr>
<tr><td>Rate:</td><td><input type="text" name="rate"  value="100"/></td></tr>
<tr><td>Account No:</td><td><input type="text" name="rate" /></td></tr>
<tr>
<td>
3 PIN:</td><td><input type="password"></input></td></tr>
<tr><td>5 PIN:</td><td><input type="password"></input></td></tr>
<tr><td></td><td><input type="submit" value="Submit" /></td></tr>
</table>
</form>

<br/>
<br/>
<br/>
<br/>

<jsp:include page="footer.jsp" ></jsp:include>
</body>
</html>
