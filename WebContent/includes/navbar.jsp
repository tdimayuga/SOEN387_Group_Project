<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="header.jsp" %>

<div class="header">
    <div style="float:left;color:#2d6ca2;"><h1>Inventory Management</h1></div> 
	<div style="float:left;"><h1>&nbspSystem</h1></div>  
	<div style="clear:both;"></div> 
</div>

<div class="loginSection">
	<h3>
		<a href="#loginModal" role="button" class="btn btn-primary btn-lg" data-toggle="modal">&nbsp Login &nbsp</a>
	</h3>
</div>

<!-- Login Modal -->
<div id="loginModal" class="modal fade" role="dialog" aria-labelledby="loginModalLabel">
  <div class="modal-dialog">
  	<div class="modal-content">
  		<div class="modal-header">
  			<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
  		</div>
  		<div class="modal-body">
          <%@include file="../login.jsp" %>
        </div>
    </div>
  </div>
</div>



<div style="clear:both;"></div>
<%
   String uri = request.getRequestURI();
   String pageName = uri.substring(uri.lastIndexOf("/")+1);
%>    


<div class="navbar">
	<ul>
		<li>
			<%
				if(pageName.contains("index"))
	               out.print("<a href=\"index.jsp\" class=\"active\">Home</a>");
				else
	               out.print("<a href=\"index.jsp\">Home</a>");
			%>
       	</li>
        <li>
        	<%
				if(pageName.contains("manageInventory"))
				    out.print("<a href=\"manageInventory.jsp\" class=\"active\">Inventory Resource Management</a>");
				else
				    out.print("<a href=\"manageInventory.jsp\">Inventory Resource Management</a>");
			%>                   
       	</li>
        <li>
			<%
				if(pageName.contains("accountSettings"))
				    out.print("<a href=\"accountSettings.jsp\" class=\"active\">Account Settings</a>");
				else
				    out.print("<a href=\"accountSettings.jsp\">Account Settings</a>");
			%>         
       	</li>       
	    <li>
			<%
				if(pageName.contains("addInventoryForm"))
					out.print("<a href=\"addInventoryForm.jsp\" class=\"active\">Add Inventory</a>");
				else
					out.print("<a href=\"addInventoryForm.jsp\">Add Inventory</a>");
			%>                   
	    </li>
	    <li>
			<%
				if(pageName.contains("editItem"))
					out.print("<a href=\"editItem.jsp\" class=\"active\">Edit Item</a>");
				else
					out.print("<a href=\"editItem.jsp\">Edit Item</a>");
			%>                   
        </li>       
    </ul>
</div>
