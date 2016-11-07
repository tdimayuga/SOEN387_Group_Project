<%@include file="../../../../includes/navbar.jsp"%>

<div class="container">
	<div class="pageTitle">
		<h2>Edit Item</h2>
	</div>

	<div class="col-md-offset-2">
		<br> <br>
		<form id="editForm" class="editForm form-horizontal" method="post">
			<div class="form-group">
				<label for="itemName" class="cols-sm-2 control-label">Name</label>
				<div class="cols-sm-10">
					<input type="text" class="form-control" id="itemName"
						name="itemName" placeholder="Enter a Name">
				</div>
			</div>
			<div class="form-group">
				<label for="status" class="cols-sm-2 control-label">Status</label>
				<div class="cols-sm-10">
					<select class="form-control" name="status" id="status">
						<option value="taken">Taken</option>
						<option value="available">Available</option>
					</select>
				</div>
			</div>
			<div class="form-group">
				<label for="description" class="cols-sm-2 control-label">Description</label>
				<div class="cols-sm-10">
					<textarea class="form-control" name="description" id="description"
						placeholder="Enter an Item Description" rows="3"></textarea>
				</div>
			</div>
			<div class="form-group">
				<button type="submit" class="btn btn-primary form-button">Save</button>
			</div>
		</form>
	</div>
</div>

<script>
	$('#editForm').validate({
		rules : {
			itemName : {
				required : true
			},
			description : {
				required : true
			}
		},
		messages : {
			itemName : "Name field cannot be blank.",
			description : "Description field cannot be blank."
		},
		highlight : function(element) {
			$(element).closest('.form-group').addClass('has-error');
		},
		unhighlight : function() {
			$(element).closest('.form-group').removeClass('has-error');
		},
		errorElement : 'span',
		errorClass : 'help-block',
		errorPlacement : function(error, element) {
			if (element.parent('.form-group').length) {
				error.insertAfter(element.parent());
			} else {
				error.insertAfter(element);
			}
		}
	});
</script>

<%@include file="../../../../includes/footer.jsp"%>