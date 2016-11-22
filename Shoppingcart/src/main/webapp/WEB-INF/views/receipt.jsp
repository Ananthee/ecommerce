<jsp:include page="Header.jsp"></jsp:include>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.6/angular.min.js"></script>
<script>
var prod =${cart};
var prod1=${orderdetail};
  angular.module('repeatSample', []).controller('SupplierController', function($scope)
   {
                 $scope.Sellers=prod;
                 $scope.User=prod1;
   
          $scope.sort = function(keyname)
          {
              $scope.sortKey = keyname;   //set the sortKey to the param passed
              $scope.reverse = !$scope.reverse; //if true make it false and vice versa
          }
              
    });
</script>
 
<div class="container" style="min-height: 700px;">
<article class="span8">
<div ng-app="repeatSample" ng-controller="SupplierController">
<table style="border-color: black; border-style: solid; border-width: 2; color: white;">
	<tr style="text-align: center;">
		<td><h4><font color="#ffffff">Receipt</font></h4></td>
	</tr>
	<tr style="text-align: center;">
						<span><font color="#ffffff">Name:{{User.name}}</font></span><br/>
						<span><font color="#ffffff">Order No:{{User.orderid}}</font></span><br/>
	</tr>					
	<tr >
		<td>
			<table>
  				<tr ng-repeat="Seller in Sellers">
						<td>
        	            	<img src="resources/{{Seller.pid}}.jpg" alt="error" height="100" width="100"/>            	        	
    					</td>
    					<td>
    						<span><font color="#ffffff">Name: {{Seller.pname}}</font></span>
        	            	<span><font color="#ffffff">Id: {{Seller.pid}}</font></span>
						</td>
				</tr>
			</table>
    	</td>
    </tr>
    <tr>
		<td style="text-align: center;">
			<h5>Total Cost:  {{User.total}}</h5>
		</td>
	</tr>
	
	<tr>
		<td style="text-align: center;">
			<h5>Shipping Address</h5>
		</td>
	</tr>
	<tr>
	<td>
			<div>
						
						<span>Name:{{User.name}}</span><br/>
						<span>Address:{{User.address}}</span><br/>
						<span>PhoneNo.:{{User.mobilemnumber}}</span><br/>
						<span>EmailId:{{User.emailid}}</span><br/>
						
			</div>
	</td>
	</tr>
	<tr>
		<td>
				<a class="big_button" id="complete" href="#"><br/>Complete Order</a>
				<span class="sub"><br/>The Product Will Reach you in Weeks Time<br/><br/></span> 
		</td>
	</tr>
</table></div></article></div>
<jsp:include page="Footer.jsp"></jsp:include>