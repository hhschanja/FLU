<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/sockjs-1.0.3.min.js" ></script>
<style type="text/css">

html{

background-color: #f2f2f2;

}

.wrap{

width: 420px;
height: 460px;
border: 2px solid #33334d;
border-radius: 15px;

}

#data{

width: 360px;
height: 300px;
margin: 0 auto;
margin-top: 20px;
overflow-y: auto;

}

.insert{

   width: 360px;
   height: 100px;
   margin: 0 auto;
   margin-top: 10px;
   
}

.loon_wrap{
   
   width: 80%;

}

.loon_title{
   
   width: 20%;
   height: 20px;
   background-color: #737373;
   color: #f1f1f1;
   font-size: 0.8em;
   font-weight: bold;
   border-radius: 5px;
   text-align: center;
   margin-top: 20px;
   
}

.loon_contents{
   
   font-size: 0.8em;
   background-color: white;
   color: black;
   border: 1px solid gray;
   border-radius: 10px;
}   

span{

   padding: 3px;
   vertical-align: middle;

}

.entrance{

   font-size: 0.8em;
   font-weight: bold;
   margin-top: 10px;

}
.filebox input[type="file"] { 
   position: absolute; 
   width: 1px; 
   height: 1px; 
   padding: 0; 
   margin: -1px;
   overflow: hidden; 
   clip:rect(0,0,0,0); border: 0;
    } 
    
.filebox label {
 display: inline-block; 
 padding: .5em .75em;
 color: white;
 font-size: 0.8em;
 font-weight: normal;
 line-height: normal; 
 vertical-align: middle; 
 background-color: #2099bb;
 cursor: pointer; 
 border: 1px solid #ebebeb; 
 border-bottom-color: #e2e2e2; 
 border-radius: .25em; 
 } 
 
 .filebox .upload-name { 
 display: inline-block; 
 padding: .5em .75em; /* label의 패딩값과 일치 */ 
 font-size: inherit; 
 font-family: inherit; 
 line-height: normal; 
 vertical-align: middle; 
 background-color: #f5f5f5; 
 border: 1px solid #ebebeb; 
 border-bottom-color: #e2e2e2; 
 border-radius: .25em; 
 -webkit-appearance: none; /* 네이티브 외형 감추기 */
 -moz-appearance: none;
  appearance: none;
  
}

.tul{

   visibility: hidden;

}

.mode{

   width: 340px;
   height: 80px;
   padding: 10px;
   border: 1px solid gray;

}

.fileMode{

   margin-top: 5px;

}

#fileStart{
   
   visibility: visible;
   width: 65px;
   height: 30px;
   background-color: #4d4d4d;
   color: white;
   border: 0;
}

#fileEnd{

   width: 50px;
   height: 30px;
   background-color: #4d4d4d;
   color: white;
   border: 0;
}

#sendBtn{

   width: 45px;
   height: 40px;
   background-color: #2099bb;
   color: white;
   border: 0;
   border-radius: 5px;

}

</style>
<script type="text/javascript">
 
    
   $(function() {
       var sock;
      //웸소켓을 지정한 url로 연결한다.
          sock = new SockJS("<c:url value="/echo"/>");
          sock.onopen=onEntrance;
          //자바스크립트 안에 function을 집어넣을 수 있음.
          //데이터가 나한테 전달되읐을 때 자동으로 실행되는 function
          sock.onmessage=onMessage;
          
          //데이터를 끊고싶을때 실행하는 메소드
          sock.onclose = onClose;
          

          function onEntrance() {
             var hello = $('#sessionID').val()+"님이 입장하셨습니다.";
             sock.send(hello);
         }
          
          function sendMessage(message){
                  /*소켓으로 보내겠다.  */
                  sock.send(message);

          }
         
          
          //evt 파라미터는 웹소켓을 보내준 데이터다.(자동으로 들어옴)
          function onMessage(evt){
            var data = evt.data;
            var curID = null;
            var array = data.split(":");

            var messageIP = array[0]; //message를 보내는 사람의 IP
            var messageID = array[1]; //message를 보낸 사람의 ID
            var message = array[2]; //message 내용
            var messageFile = array[3];
               var clientIP = '${clientIP}'; //chatDo로 접속할때의 session IP
            var clientID = '${user}';
               
/*             alert("메세지 보낸사람의 IP:"+messageIP);
            alert("메세지 내용:"+message); 
            alert("지금 내 IP:"+clientIP); 
            alert("메세지 보낸사람의 ID: "+messageID); */
            
            if(messageIP==clientIP){
               curID = clientID;
            }else{
               curID = messageID;
            }
            
            
            if(message==null){
               var print = "<div class='entrance'>";
                    print += messageID+"</p>";
                     print += "</div>";
            }else if(messageFile==null){
                 var print = "<div class='loon_wrap'>";
                 print += "<p class='loon_title'>"+curID+"</p>";
                  print += "<span class='loon_contents'>"+message+"</span>";
                 print += "</div>";
               }else{
                  var print = "<div class='loon_wrap'>";
                  print += "<p class='loon_title'>"+curID+"</p>";
                  print += "<span class='loon_contents'>"+message+messageFile+"</span>";
                 print += "</div>";
               }
            
            

               $("#data").append(print);
            
          }
          
          function onClose(evt){
              $("#data").append("연결 끊김");
          }

      
      
          $('input#message').keydown(function(key) {
            
             if(key.keyCode==13){
                var message = $('#sessionID').val()+":"+$("#message").val();
                sendMessage(message);
                  $("#message").val("");
                  $('#data').scrollTop($('#data').prop('scrollHeight'));
             }
             
             
         });
          
          
          
      
       var check = 0;
 
           $("#sendBtn").click(function(){
            
               if(check==1){

                var from = $('#frm')[0];
                var formData = new FormData(from);
                
                $.ajax({
                   
                   url:'./chatFile',
                   processData: false,
                   contentType: false,
                   data: formData,
                   type:'POST',
                   success:function(result){
                      sock.send($('#sessionID').val()+":"+$("#message").val()+":[첨부파일]"+result);
                   }
                
                 });
                
                
              }else{
                 var message = $('#sessionID').val()+":"+$("#message").val();
                 sendMessage(message);
                  $("#message").val("");
                  $('#data').scrollTop($('#data').prop('scrollHeight'));
              }
           
               
               
           });          
           
        $('#fileStart').click(function() {
              
             check = 1;
             
             $('.tul').css("visibility","visible");
             $('#fileStart').css("visibility","hidden");
             
         });
        
        
       $('#fileEnd').click(function() {
            
             check = 0;
             $('.tul').css("visibility","hidden");
             $('#fileStart').css("visibility","visible");
             
      });
           

           
              var fileTarget = $('.filebox .upload-hidden'); 
              
              fileTarget.on('change', function(){
                 // 값이 변경되면
                 
                 if(window.FileReader){ // modern browser 
                    var filename = $(this)[0].files[0].name; 
                 }else { // old IE 
                    var filename = $(this).val().split('/').pop().split('\\').pop(); // 파일명만 추출 
                 } // 추출한 파일명 삽입
                    $(this).siblings('.upload-name').val(filename); }); 
              
              
    
   });  


</script>
<title>Insert title here</title>
</head>
<body>
<input type="hidden" value="${member.name}" id="sessionID">

<div class="wrap">
   <div id="data">
      

      
   </div>
   
   <div class="insert">
      
      <div class="mode">

      <div class="fileMode">
      <form id="frm" method="post" enctype="multipart/form-data">
         
         <input type="text" id="message" style="width: 200px; height: 30px;">
         
         <span><input type="button" id="sendBtn" value="전송"/></span>
         <span><input type="button" value="파일첨부" id="fileStart"></span>
   
            <div class="tul">
               <div class="fileMode">
                     <div class="filebox">
                        <input class="upload-name" disabled="disabled" value="파일을 선택하세요" style="width: 150px; height: 15px;">
                        <label for="ex_filename" style="width: 55px; height: 20px;" id="hello">파일첨부</label>
                        <input type="file" name="file2" id="ex_filename" class="upload-hidden">
                        <span><input type="button" value="닫기" id="fileEnd"></span>
                     </div>
               </div>
            </div>

            
            
            

         
      </form>
      </div>   
         
         
      </div>
   

   </div>
   
</div>




</body>
</html>