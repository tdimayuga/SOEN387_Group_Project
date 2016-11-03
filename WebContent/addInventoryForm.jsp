<%--
    addInventoryForm.jsp
    Author: Martin Nafekh 27423993
--%>
<%@include file="includes/navbar.jsp" %>
<div class="container" style="width:400px !important;">
    <div class="pageTitle"><h2>Add Inventory</h2></div>
    <div class="row">
        <div class="col-md-offset-2">
            <br><br>

            <div class="dropdown">
                <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">Inventory Type
                <span class="caret"></span></button>
                <ul class="dropdown-menu">
                    <li id="computer">Computer</li>
                    <li id="board">Whiteboard</li>
                    <li id="room">Room</li>
                    <li id="projector">Projector</li>
                </ul>
            </div>

            <jsp:include page="computerform.html"></jsp:include>
            <jsp:include page="boardform.html"></jsp:include>
            <jsp:include page="roomform.html"></jsp:include>
            <jsp:include page="projectorform.html"></jsp:include>
        </div>
    </div>
</div>
