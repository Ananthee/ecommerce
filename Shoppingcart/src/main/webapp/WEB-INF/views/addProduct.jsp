<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.6/angular.min.js"></script>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<jsp:include page="AdminHeader.jsp" />
<script>
	var cat = ${catlist};
	var sell = ${supplist};
	
	angular.module('repeatSample1', []).controller('reapeterController1',
			function($scope) {
				$scope.Category1 = cat;
				$scope.Seller1 = sell;
				$scope.sort = function(keyname) {
					$scope.sortKey = keyname; //set the sortKey to the param passed
					$scope.reverse = !$scope.reverse; //if true make it false and vice versa
				}
			});
</script>

<div class="bg-content">  

	<div class="container">
		<div class="span12"
			style="text-align: center; font-size: medium; font-family: Script MT Bold; color: white;">
			<h3 style="color: white;">Add a Product</h3>
			<div align="center" ng-app="repeatSample1">

				<form:form method="POST" modelAttribute="prdt"	enctype="multipart/form-data">

					<fieldset>

						<legend
							style="text-align: center; font-size: medium; font-family: Script MT Bold; color: #DDA0DD;">Product
							Information</legend>

						<p>

							<label for="title"
								style="text-align: center; font-size: medium; font-family: Script MT Bold; color: #DDA0DD;"
								required="true">Product Id:</label>

							<form:input type="text" path="productId" />

						</p>

						<p>
							<label for="title"
								style="text-align: center; font-size: medium; font-family: Script MT Bold; color: #DDA0DD;"
								required="true">Product Name:</label>

							<form:input type="text" path="productName" style="color:black;"/>
						</p>

						<div  ng-controller="reapeterController1">

							<p style="color:black;">
								<label for="genre"
									style="text-align: center; font-size: medium; font-family: Script MT Bold; color: #DDA0DD;">Category
									Id:</label>

								<form:select path="categoryId">

									<option ng-repeat="cat in Category1" value="{{cat.categoryId}}">{{cat.categoryName}}</option>
								</form:select>

							</p>
							<p style="color:black;">
								<label for="genre"
									style="text-align: center; font-size: medium; font-family: Script MT Bold; color: #DDA0DD;">Supplier
									Id:</label>

								<form:select path="supplierId">

									<option ng-repeat="sup in Seller1" value="{{sup.supplierId}}">{{sup.supplierName}}</option>

								</form:select>
							</p>

						</div>
						<p style="color:black;">
							<label for="year"
								style="text-align: center; font-size: medium; font-family: Script MT Bold; color: #DDA0DD;">Description:</label>

							<form:input type="text" path="description" />
						</p>
						<p style="color:black;">
							<label for="year"
								style="text-align: center; font-size: medium; font-family: Script MT Bold; color: #DDA0DD;">Quantity:</label>

							<form:input type="text" path="quantity" />

						</p>
						<p style="color:black;">
							<label for="year"
								style="text-align: center; font-size: medium; font-family: Script MT Bold; color: #DDA0DD;">Price:</label>

							<form:input type="text" path="price" />

						</p>
						<p>
							<label for="year"
								style="text-align: center; font-size: medium; font-family: Script MT Bold; color: #DDA0DD;">Image:</label>

							<form:input type="file" path="pimage" />
						</p>

						<p style="color:black">
							<input type="submit" value="Add Product" />
						</p>

					</fieldset>
				</form:form>
			</div>
		</div>
	</div>
</div>

<script src="resources/js/bootstrap.js"></script>