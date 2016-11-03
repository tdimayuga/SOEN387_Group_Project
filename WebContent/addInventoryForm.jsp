<%--
    addInventoryForm.jsp
    Author: Martin Nafekh 27423993
--%>
<%@include file="includes/navbar.jsp" %>
<div class="container">
    <div class="pageTitle"><h2>Add Inventory</h2></div>
    <div class="row">
        <div class="col-md-offset-2">
            <br><br>

            <div class="dropdown">
                <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">Inventory Type
                    <span class="caret"></span>
                </button>
                <ul id="resource" class="dropdown-menu">
                    <li id="computer"><a href="#">Computer</a></li>
                    <li id="board"><a href="#">Whiteboard</a></li>
                    <li id="room"><a href="#">Room</a></li>
                    <li id="projector"><a href="#">Projector</a></li>
                </ul>
            </div>

            <div id="computerform" style="display: none">
                <jsp:include page="computerform.html"></jsp:include>
            </div>
            <div id="boardform" style="display: none">
                <jsp:include page="boardform.html"></jsp:include>
            </div>
            <div id="roomform" style="display: none">
                <jsp:include page="roomform.html"></jsp:include>
            </div>
            <div id="projectorform" style="display: none">
                <jsp:include page="projectorform.html"></jsp:include>
            </div>
        </div>
    </div>
</div>

<script>
    $(document).ready(function() {
        $('#resource li').click(function(){
            var form = $(this).attr("id") + "form";
            $("[style]").hide();
            $("#" + form).show();
        });
    });
</script>

<%@include file="includes/footer.jsp"%>
