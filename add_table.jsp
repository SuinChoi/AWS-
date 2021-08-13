<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style type="text/css"> 
     body{ 
         text-align: center; 
         display: block; 
         margin: 0 auto; 
         font-size: 16px; 
        
     } 
     h1{ 
         font-family: 'Oswald', sans-serif; 
         font-size: 30px; 
         color: #216182; 
     } 
    
     form { 
         margin:auto; 
       	 width: 600px;
     } 

     input { 
         width: 150px; 
         height: 20px; 
         background-color: #efefef; 
         border-radius: 6px; 
         border: 1px solid #dedede; 
         padding: 3px; 
         margin-right: 5px; 
         font-size: 0.9em; 
         color: black; 
     } 
         input:focus, textarea:focus{ 
             border: 1px solid #97d6eb; 
         } 
     
     #submit{ 
         width: 127px; 
         height: 48px; 
         text-align: center; 
         border: none; 
         margin-top: 20px; 
         cursor: pointer; 
     } 
     #submit:hover{ 
         color: #fff; 
         background-color: #216282; 
         opacity: 0.9; 
     } 
     #cancel { 
         width: 127px; height: 48px; 
         text-align: center; 
         border: none; 
         margin-top: 20px; 
         cursor: pointer; 
     } 
     #cancel:hover{ 
         color: #fff; 
         background-color: #216282; 
         opacity: 0.9; 
     }

     .modal-content { 
         position: absolute; 
         top: 50%; 
         left: 50%; 
         transform: translate(-50%, -50%); 
         background-color: white; 
         padding: 30px; 
         width: 800px; 
         height:250px; 
         border-radius: 0.5rem; 
     } 
     .close-button { 
         float: right; 
         width: 1.5rem; 
         line-height: 1.5rem; 
         text-align: center; 
         cursor: pointer; 
         border-radius: 0.25rem; 
         background-color: lightgray; 
     } 
     .close-button:hover { 
         background-color: darkgray; 
     } 
     .show-modal { 
         opacity: 1; 
         visibility: visible; 
         transform: scale(1.0); 
         transition: visibility 0s linear 0s, opacity 0.25s 0s, transform 0.25s; 
     } 
   
   .modal-content table th{
    color : black;


</style>
</head>
<body>
<div class="modal"> 
         <div class="modal-content">            
             <h1 class="title">여행 목록 추가</h1>
             
            
             <form action="add_form.jsp" method="POST"> 
              <input class="form-field" type="password" placeholder="관리자 비밀번호" name="psswd">
  			<br/>
  			<br/>
  	<table class="table table-striped table-hover">
            <thead>
                <tr>               
                    <th>장 소</th>
                    <th>방문일자</th>
                    <th>평 가</th>
                    <th>목 적</th>
                </tr>
            </thead>
            <tbody>
            <tr>
            	<td><input class="form-field" type="text" placeholder="" name="place"></td>
            	<td><input type = "date"  name = "date"></td>
            	<td><select name = "score" size = "1">
                            <option value = "Best">Best</option>
                            <option value = "Good">Good</option>
                            <option value = "Bad">Bad</option>                         
                    </select></td>
            	<td><input class="form-field" type="text" placeholder="" name="purpose"></td>
            </tr>
            </tbody>
            </table>
   				<br/>
				<button type = "submit" style="backtround-color  : #00324A;">제 출</button>
             </form> 
         </div> 
     </div>
</body>
</html>
