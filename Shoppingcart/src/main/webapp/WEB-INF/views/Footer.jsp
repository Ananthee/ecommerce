<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<title>Timewaves</title>
 <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
  <footer align="bottom">
  <font color="white">
  
  <%
    Integer hitsCount =(Integer)application.getAttribute("hitCounter");
    if( hitsCount ==null || hitsCount == 0 )
    {
       /* First visit */
      // out.println("Welcome to lootle.com!");
       hitsCount = 1;
    }
    else
    {
       /* return visit */
       //out.println("Welcome to lootle.com!");
       hitsCount += 1;
    }
    application.setAttribute("hitCounter", hitsCount);
%>
    <center><p>Total number of visits: <%= hitsCount%></p></center></font>
    <div align="justify">
    <div size="5" align="left" style="color:white">
        <p>copyright@timewaves.com</p>
    </div>
    
    <div size="5" align="center" >
		<a class="fa fa-facebook-square"style="font-size:30px;color:blue"  href="https://www.facebook.com" target="_blank"></a>
		<a href="https://twitter.com/" style="font-size:30px;color:#428bca"  class="fa fa-twitter" target="_blank"></a>
		<a href="https://www.google.com/"  style="font-size:30px;color:#d9534f" class="fa fa-google-plus-square" target="_blank"></a>
   </div>
     
   <div size="5" align="right" style="color:white">
       <p>mail to : timewaves@gmail.com</p>
   </div>
   </div>
</footer>
</html>

   
  
   
