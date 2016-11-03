<script src="js/settingsValidarion.js"></script>

<%@include file="includes/navbar.jsp" %>

<div class="container" style="width:400px !important;">
    <div class="pageTitle"><h2>Account Settings</h2></div> 
    <br/><br/>
    <div class="row">
        <div class="col-md-offset-2">
            <form method="post">
			  <div class="form-group" onsubmit="checkForm();" method="post">
				<label for="pwd">Enter current password: </label>
				<input type="password" class="form-control" id="ogpwd">
			  </div>
			  <div class="form-group">
				<label for="pwd">Enter new password: </label>
				<input type="password" class="form-control" id="pwd2.1">
			  </div>
			  <div class="form-group">
				<label for="pwd">Confirm new password: </label>
				<input type="password" class="form-control" id="pwd2.2">
			  </div>
			<br/>
                <div style="width:150px;margin:auto;"><button type="submit" class="btn btn-primary btn-lg btn-block">Submit</button></div>
			</form>
        </div>
    </div>
</div>

<%@include file="includes/footer.jsp" %>
