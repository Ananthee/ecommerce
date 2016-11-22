<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

</head>
<body>

<div class="container">
<br>
<div id="myCarousel" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
    <li data-target="#myCarousel" data-slide-to="3"></li>
    <li data-target="#myCarousel" data-slide-to="4"></li>
    <li data-target="#myCarousel" data-slide-to="5"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner" role="listbox">
  
    <div class="item active">
       <img src="resources/img1.jpg" width="25%" height="25%">
    </div>
    
    <div class="item">
       <img src="resources/img2.jpg"  width="25%" height="25%">
    </div>
    
    <div class="item">
       <img src="resources/img3.jpg" width="25%" height="25%">
    </div>
      
    <div class="item">
       <img src="resources/bb.jpg" width="25%" height="25%" >
    </div>
        
  	<div class="item">
       <img src="resources/img6.jpg" width="25%" height="25%" >
    </div>
      
    <div class="item">
       <img src="resources/collectn.jpg" width="25%" height="25%" >
    </div>
   </div>
  

  <!-- Left and right controls -->
  <a class="left xcarousel-control" href="#myCarousel" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
</div>
</body>
</html>