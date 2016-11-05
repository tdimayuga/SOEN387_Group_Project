<!-- 
	managementInventory.jsp
	Author: Sean-Frankel Gaon Canlas 27390467
	Date: October 30, 2016 - 1.0
 -->

<%@include file="../../../../includes/navbar.jsp" %>

<div class="container">
    <div class="pageTitle"> <h2>Manage Inventory</h2></div> 
    
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <form class="form-inline searchForm">
                <div class="input-group form-div-primary">
                    <input id="searchID" name="search" type="text" class="form-control search-input" placeholder="Search for a resource here..."/>
                	<span class="input-group-btn">
	                	<button type="submit" class="btn btn-primary search-btn">
	                    	  &nbsp;<span class="glyphicon glyphicon-search"></span>&nbsp;
	               	 	</button>
               	 	</span>
                </div>
            </form>
    </div>
</div>
</div>
<br><br>

<div class="container">
<!-- in a jsp loop -->
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <table class="table resources">
                <th>Status</th>
                <th>Item</th>
         		
                <tr>
                    <td class="danger col-md-4">Taken</td>
                    <td class="danger col-md-8"><a href="editItem.jsp">Server Computer</a></td>
                </tr>
                <tr>
                    <td class="danger">Being Reserved</td>
                    <td class="danger"><a href="editItem.jsp">Windows Laptop 1</a></td>
                </tr>
                <tr>
                    <td class="success">Available</td>
                    <td class="success"><a href="editItem.jsp">Windows Laptop 2</a></td>
                </tr>
                <tr>
                    <td class="success">Available</td>
                    <td class="success"><a href="editItem.jsp">Windows Laptop 3</a></td>
                </tr>
                <tr>
                    <td class="danger">Being Reserved</td>
                    <td class="danger"><a href="editItem.jsp">Windows Laptop 4</a></td>
                </tr>
                <tr>
                    <td class="success">Available</td>
                    <td class="success"><a href="editItem.jsp">Windows Laptop 5</a></td>
                </tr>
            </table>
        </div>
    </div>
</div>

<script>
$('.searchForm').validate({
	rules: {
		search: {
			required: true
		}
	},
	messages: {
		search: "Query cannot be blank, you must search for a resource."
	},
	highlight: function(element) {
		$(element).closest(".form-div-primary").addClass("has-error");
		$(".search-btn").addClass("btn-danger");
	},
	unhighlight: function() {
		$(element).closest(".form-div-primary").removeClass("has-error");
		$(".search-btn").removeClass("btn-danger");
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

<%@include file="../../../../includes/footer.jsp" %>