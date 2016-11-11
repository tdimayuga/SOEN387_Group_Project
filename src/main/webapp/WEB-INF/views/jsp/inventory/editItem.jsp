<%@include file="../../../../includes/navbar.jsp"%>

<div class="container">
	<div class="pageTitle">
		<h2>Edit Item</h2>
	</div>

	<div class="col-md-offset-2">
		<br> <br>
		<form id="editForm" action="editItem.jsp" class="editForm form-horizontal" method="post">
			<div class="form-group">
				<label for="itemName" class="cols-sm-2 control-label">Name</label>
				<div class="cols-sm-10">
					<input type="text" class="form-control" id="itemName"
						name="name" placeholder="Enter a Name" value="<%= request.getParameter("name") %>">
				</div>
			</div>
			
			<div class="form-group">
				<label for="description" class="cols-sm-2 control-label">Description</label>
				<div class="cols-sm-10">
					<textarea class="form-control" name="description" id="description"
						placeholder="Enter an Item Description" rows="3" ><%= request.getParameter("description") %></textarea>
				</div>
			</div>
			<div class="form-group">
				<label for="availability" class="cols-sm-2 control-label">Availability</label>
				<div class="cols-sm-10">
					<select class="form-control" name="availability" id="availability" >
						<option value="Y">Available</option>
						<option value="N">Taken</option>
					</select>
				</div>
			</div>
			<div class="form-group">
				<label for="moveable" class="cols-sm-2 control-label">Moveable</label>
				<div class="cols-sm-10">
					<select class="form-control" name="moveable" id="moveable">
						<option value="Y">Yes</option>
						<option value="N">No</option>
					</select>
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
