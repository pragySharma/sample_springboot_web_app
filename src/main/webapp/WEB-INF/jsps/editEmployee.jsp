<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="bs/css/bootstrap.min.css">
  <script src="bs/js/jQuery.js"></script>
  <script src="bs/js/bootstrap.min.js"></script>
    <style>
  .modal-header, h4, .close {
        color:white !important;
    text-align: center;
    font-size: 30px;
  }
  .modal-footer {
    background-color: #f9f9f9;
  }
  </style>
 
</head>
<body>
<div class="container">
  <h2>Modal Login Example</h2>
  <!-- Trigger the modal with a button -->
  <button type="button" class="btn btn-default btn-lg" id="myBtn">Login</button>

  <!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header bg-primary" style="padding:35px 50px;">
                    <h4> Edit Employee</h4>
        </div>
        <div class="modal-body" style="padding:40px 50px;">
          <div class="card bordered-primary col-10 mt-4 offset-2 mb-3">
                <div class="card-header bg-primary"><h3>Edit Employee</h3></div>
                 <form:form  action="addEmployee" modelAttribute="emp" class="form" method="post">
                <div class="card-body">
               
                    <div class="form-group">
                        <label class="col-sm-4 control-label">Name</label>
                        <div class="col-sm-8 float-right">
                        <form:input path="name" class="form-control"/>                       
                         
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-4 control-label">email</label>
                        <div class="col-sm-8 float-right">
                        <form:input path="email" class="form-control"/>                       
                         
                        </div>
                    </div>
                    
                    <div class="form-group">
                        <label class="col-sm-4 control-label">salary</label>
                        <div class="col-sm-8 float-right">
                        <form:input path="salary" class="form-control"/>                       
                         
                        </div>
                    </div>
                
                 <div class="form-group">
                        <label class="col-sm-4 control-label">Date of birth</label>
                        <div class="col-sm-8 float-right">
                        <form:input  path= "dob" class="form-control" />                      
                         
                        </div>
                   </div>
                   
                     <div class="form-group">
                        <label class="col-sm-4 control-label">Status</label>
                        <div class="col-sm-8 float-right">
                        <form:input path="status" class="form-control"/>                         
                   </div>
                   </div>      
                        
                       
                   </div>
                <div class="card-footer mt-4">
                    <button class="btn btn-primary offset-6" type="submit" id="saveBtn">Submit</button>
                </div>
              </form:form>
        
    </div>
        </div>
        <div class="modal-footer">
          <button type="submit" class="btn btn-danger btn-default pull-left" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span> Cancel</button>
          
        </div>
      </div>
      
    </div>
  </div> 
</div>
 
<script>
$(document).ready(function(){
  $("#myBtn").click(function(){
    $("#myModal").modal();
  });
});
</script></body>
</html>