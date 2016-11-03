<%@include file="includes/navbar.jsp"%>

<div class="container">
    <div class="pageTitle"><h2>Edit Item</h2></div> 
             
	<div class="col-md-offset-2">
		<br> <br>
		<form>
			<table class="table resources">
				<tr>
					<th>Name</th>
					<td><input type="text" class="form-control" name="itemname"
						value="Server Computer" placeholder="Enter a Name"></td>
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
			<input type="submit" class="btn btn-primary form-button"
				value="Save">
		</form>
	</div>
</div>

<%@include file="includes/footer.jsp"%>