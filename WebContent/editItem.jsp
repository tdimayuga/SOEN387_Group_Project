<%@include file="includes/navbar.jsp"%>


<div class="container">
	<div class="pageTitle">
		<h2>Edit Item</h2>
	</div>

	<div class="col-md-offset-2">
		<br> <br>
		<form class="editForm">
			<!-- 		<div class="form-group">
			<div class="input-group form-div-primary">
				Name <input type="text" class="form-control" id="itemname" name="itemname"
						 placeholder="Enter a Name">
						 </div>
			</div> -->
			<table class="table resources">
				<tr>
					<th class="test">Name</th>
					<td><input type="text" class="form-control" name="itemname"
						placeholder="Enter a Name"></td>
				</tr>
				<tr>
					<th>Status</th>
					<td><select class="form-control" name="statuses">
							<option value="danger">Taken</option>
							<option value="warning">Being Reserved</option>
							<option value="success">Available</option>
					</select>
				</tr>
				<tr>
					<th>Description</th>
					<td><textarea class="form-control" name="itemdesc"
							placeholder="Enter an Item Description" rows="3"></textarea></td>
				</tr>
			</table>
			<input type="submit" class="btn btn-primary form-button" value="Save">
		</form>
	</div>
</div>

<script>
$('.editForm').validate({
	rules: {
		itemname: {
			required: true
		},
		itemdesc: {
            required: true
        }
	},
	messages: {
		itemname: "Name field cannot be blank.",
		itemdesc: "Description field cannot be blank."
	},
	highlight: function() {
		$('.formcontrol').addClass('has-error');
	},
	unhighlight: function() {
		$('.form-control').removeClass('has-error');
	},
	errorElement: 'span',
	errorClass: 'help-block',
    errorPlacement: function(error, element) {
        if(element.parent('.form-group').length) {
            error.insertAfter(element.parent());
        } else {
            error.insertAfter(element);
        }
    }
});
</script>

<%@include file="includes/footer.jsp"%>