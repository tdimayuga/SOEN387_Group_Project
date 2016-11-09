<%-- 
    Document   : login
    Created on : Oct 30, 2016
    Author     : Venelin Koulaxazov
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<form id="loginForm" class="form-horizontal" action="<c:url value="/invLogin"/>" method="post">
	<div class="form-group">
		<label for="userType" class="cols-sm-2 control-label">Login as</label>
		<div class="cols-sm-10">
			<div class="input-group">
				<span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
				<select class="form-control" name="userType" id="userType">
					<option value="employee">Employee</option>
					<option value="it">IT</option>
				</select>
			</div>
		</div>
	</div>

	<div class="form-group">
		<label for="username" class="cols-sm-2 control-label">User Name</label>
		<div class="cols-sm-10">
			<div class="input-group">
				<span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
				<input id="username" type="text" class="form-control" name="username"  placeholder="Enter Your Username"/>
			</div>
		</div>
	</div>

	<div class="form-group">
		<label for="password" class="cols-sm-2 control-label">Password</label>
		<div class="cols-sm-10">
			<div class="input-group">
				<span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
				<input id="password" type="password" class="form-control" name="password" placeholder="Enter Your Password"/>
			</div>
		</div>
	</div>
	  <br/>
	<div class="form-group">
		<button type="submit" class="btn btn-primary btn-lg btn-block login-button">Login</button>
	 </div>
</form>
<script>
	$('#loginForm').validate({
        rules: {
            username: {
                required: true
            },
            password: {
                required: true
            }
        },
		messages: {
			username: "Please enter a username.",
			password: "Please enter a password."
		},
        highlight: function(element) {
            $(element).closest('.form-group').addClass('has-error');
        },
        unhighlight: function(element) {
            $(element).closest('.form-group').removeClass('has-error');
        },
        errorElement: 'span',
        errorClass: 'help-block',
        errorPlacement: function(error, element) {
            if(element.parent('.input-group').length) {
                error.insertAfter(element.parent());
            } else {
                error.insertAfter(element);
            }
        }
    });
</script>
