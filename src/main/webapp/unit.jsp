<%@page import="com.Unit"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<meta charset="ISO-8859-1">
<title>Unit Management</title>

<link rel="stylesheet" href="Views/bootstrap.min.css"> 
<script src="components/jquery.min.js"></script>
<script  src="components/units.js"></script>



</head>
<body>




<br>
<br>

<div class="container">
<div class="row">
   
   <br>
   
  <div class="col-8">

 <h1 class="m-3">Unit Management </h1>

<form id="formUnit" name="formUnit" method="post" action="units.jsp">

 Id:
 <input id="id" name="id" type="text"
     class="form-control form-control-sm"> 

 Customer ID:
<input id="cus_id" name="cus_id" type="text"
 class="form-control form-control-sm">
 
<br> Customer Name:
<input id="cus_name" name="cus_name" type="text"
 class="form-control form-control-sm">
 
<br> Customer Phone:
<input id="cus_phone" name="cus_phone" type="text"
 class="form-control form-control-sm">
 
 <br> New Read:
<input id="new_read" name="new_read" type="text"
 class="form-control form-control-sm">
 
  <br> Last Read:
<input id="last_read" name="last_read" type="text"
 class="form-control form-control-sm">
 
<br> Used Unit:
<input id="used_unit" name="used_unit" type="text"
 class="form-control form-control-sm">

<br>
<input id="btnSave" name="btnSave" type="button" value="Save"
 class="btn btn-primary">
<input type="hidden" id="hidUnitIDSave" name="hidUnitIDSave" value="">
</form>

                        </div>
						</div>
						</div>
						
					 <br>  
					<div id="alertSuccess" class="alert alert-success"></div>
                    <div id="alertError" class="alert alert-danger"></div>
                   
			

            <div class="row">
               
             
                <div class="container">
                 <h3 class="text-center">Unit Details</h3>
                    <hr>
                   
                    <br>
                
                   			<div id="divUnitsGrid">
 <%
 Unit unitObj = new Unit();
  out.print(unitObj.readUnits());
 %>

</div> 
                   
                </div>
            </div>
				  
 			</div>
 		 
 		</div>    
 		
<br>
	 

</body>
</html>