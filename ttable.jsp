<%@ page language="java" contentType="text/html; charset=UTF-8"
	%>
	<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
	<title></title>
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="styles.css">
   <script src="http://code.jquery.com/jquery-latest.min.js" type="text/javascript"></script>
   <script src="script.js"></script>

<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<style type="text/css">
	body {
    color: #566787;
    background: #d3c6c6;
    font-family: Arial, Helvetica, sans-serif;
}
.table-wrapper {
    width: 850px;
    background: #fff;
    padding: 20px 30px 5px;
    margin: 30px auto;
    box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.7);
}
.table-wrapper .btn-group {
    float: right;
}
.table-title .btn {
    min-width: 50px;
    border-radius: 1px;
    border: none;
    padding: 6px 12px;
    font-size: 95%;
    outline: none !important;
    height: 30px;
    box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.7);
}
.table-title {
    border-bottom: 1px solid #e9e9e9;
    padding-bottom: 15px;
    background: rgb(0, 50, 74);
    margin: -20px -31px 10px;
    padding: 15px 30px;
    color: #fff;
}
.table-title h2 {
    margin: 2px 0 0;
    font-size: 24px;
}
table.table tr th, table.table tr td {
    border-color: #e9e9e9;
    padding: 12px 15px;
    vertical-align: middle;
}
table.table tr th:first-child {
    width: 40px;
}
table.table tr th:last-child {
    width: 100px;
}
table.table-striped tbody tr:nth-last-of-type(odd) {
    background-color: #fcfcfc;
}
table.table-striped.table-hover tbody tr:hover {
    background: #f5f5f5;
}
table.table td a {
    color: #2196f3;
}
table.table td .btn.manage {
    padding: 2px 10px;
    background: #37BC98;
    color: #fff;
    border-radius: 1px;
    box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.7);
}
table.table td .btn.manage:hover {
    background: #2e9c81;
}

</style>
</head>
<body>
		<%@ include file ="navigation.jsp" %>
		<%@ include file ="dbconn.jsp" %>
		<%
			ResultSet rs = null;
			Statement stmt = null;
			
				String sql ="select * from t_list";
				stmt = conn.createStatement();
				rs = stmt.executeQuery(sql);
			
		%>
	    <div class="table-wrapper">
        <div class="table-title">
            <div class="row">
                <div class="col-sm-6"><h2>여행 목록</h2>
          		<button style="color:black;" onclick="window.open('add_table.jsp','add','width=1000,height=450,location=no,status=no,scrollbars=no');">+</button>
                </div>
                 
                <div class="col-sm-6">
                    <div class="btn-group" data-toggle="buttons">
                        <label class="btn btn-info active">
                            <input type="radio" name="status" value="all" checked="checked"> All
                        </label>
                        <label class="btn btn-success">
                            <input type="radio" name="status" value="active"> Best
                        </label>
                        <label class="btn btn-warning">
                            <input type="radio" name="status" value="inactive"> Good
                        </label>
                        <label class="btn btn-danger">
                            <input type="radio" name="status" value="expired"> Bad
                        </label>      
                    </div>
                   
                </div>
            </div>
        </div>
        <table class="table table-striped table-hover">
            <thead>
                <tr>
                    <th>No</th>
                    <th>장 소</th>
                    <th>방문일자</th>
                    <th>평 가</th>
                    <th>목 적</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
            <%
            while(rs.next()){
            	String label=null;
            	String status=null;
            	
            	String score = rs.getString("score");
            	
                if(score.equals("Best")){
                	label="label label-success";
                	status = "active";
                }
                else if(score.equals("Good")){
                	label="label label-warning";
                	status = "inactive";

                }
                else{
                	label="label label-danger";
                	status = "expired";

                }
            	%>
                <tr data-status=<%=status %>>
                    <td><%=rs.getString("no") %></td>
                    <td><%=rs.getString("place") %></td>
                    <td><%=rs.getString("tdate") %></td>
                    <td><span class="<%=label%>" ><%=score %></span></td>
                    <td><%=rs.getString("purpose") %></td>
                    <td><a href="#" class="btn btn-sm manage">Manage</a></td>
                </tr>
                <% } %>
              
            </tbody>
        </table>
        <%rs.close();
		stmt.close(); %>
    </div> 
<script >
	$(document).ready(function()
{
	    function layer_popup(el){

	        var $el = $(el);//레이어의 id를 $el 변수에 저장
	        var isDim = $el.prev().hasClass('dimBg');//dimmed 레이어를 감지하기 위한 boolean 변수

	        isDim ? $('.dim-layer').fadeIn() : $el.fadeIn();

	        var $elWidth = ~~($el.outerWidth()),
	            $elHeight = ~~($el.outerHeight()),
	            docWidth = $(document).width(),
	            docHeight = $(document).height();

	        // 화면의 중앙에 레이어를 띄운다.
	        if ($elHeight < docHeight || $elWidth < docWidth) {
	            $el.css({
	                marginTop: -$elHeight /2,
	                marginLeft: -$elWidth/2
	            })
	        } else {
	            $el.css({top: 0, left: 0});
	        }

	        $el.find('a.btn-layerClose').click(function(){
	            isDim ? $('.dim-layer').fadeOut() : $el.fadeOut(); // 닫기 버튼을 클릭하면 레이어가 닫힌다.
	            return false;
	        });

	        $('.layer .dimBg').click(function(){
	            $('.dim-layer').fadeOut();
	            return false;
	        });

	    }

    $(".btn-group .btn").click(function()
    {
        var inputValue  =   $(this).find("input").val();
        if(inputValue   != 'all')
        {
            var target  =   $('table tr[data-status="' + inputValue + '"]');
            $("table tbody tr").not(target).hide();
            target.fadeIn();
        }
        else
        {
            $("table tbody tr").fadeIn();
        } 
    });
    // Changeing the class of status label to support bootstrap 4
    var bs  =  $.fn.tooltip.Constructor.VERSION;
    var support =   bs.split(".");
    if(str[0]   ==  4)
    {
        $(".label").each(function()
        {
            var classStr    =   $(this).attr("class");
            var newClassStr =   classStr.replace(/label/g, "badge");
            $(this).removeAttr("class").addClass(newClassStr);
        });
    }
    
    $('.btn-example').click(function(){
        var $href = $(this).attr('href');
        layer_popup($href);
    });
});  
</script>
</body>
</html>
