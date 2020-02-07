/* db에 member 정보 저장돼있는것 불러와서 뿌려주는 ajax */
var state_param = null;
partner_admin();  
function partner_admin() {
      
      $.ajax({

         url : '/bit_project/partner_admin.se',
         type : "post",
         dataType : "json",
         contentType : 'application/x-www-form-urlencoded; charset=utf-8',
         
         success:function(data){
        	 
             $('#output').empty();
            $.each(data, function(index, item){   //각각의 데이터는 item에 저장됨. index는 parameter값 item은 실제 저장된 값.
             if(item.state == null) {
               var name = "'" + item.name + "'"; 
               var output = '';
               output += '<tr>';
               output += '<td>' + item.name + '</td>';
               output += '<td>' + item.phone + '</td>';
               output += '<td>' + item.term + '</td>';
                
               output += '<td><button type="button" class="btn btn-sm btnadd" onclick="add(' + name + ');">수락</button>&nbsp;<button type="button" class="btn btn-sm btnDel"onclick="del(' + name + ');">거절</button></td>';
               
               output += '</tr>';
               
             }
          
               console.log("output:"+output);
               $('#output').append(output);
            });
            
            
          },
         error:function(){
            alert("ajax통신 실패 !!!");
         }

      });
   }
   
   
 function del(param_name) {
  	 var input = confirm("거절 하시겠습니까?");
  	 if(input){
  	 $.ajax({
  	        url: '/bit_project/ptdelete.se',
  	        type:"post",  
  	        dataType : "json",
  	        data : {"name" : param_name},
  	       
  	        contentType : 'application/x-www-form-urlencoded; charset=utf-8',
  	        
	  	        success: function(result){	  	        	
	  	            if (result.res=="OK") {
	  	                alert("거절 완료.");
	  	                partner_admin();
	  	            } else{
	  	                alert("거절 실패.");
	  	            }
	  	      },
		         error : function(){
		            alert("ajax통신 실패 !!!");
		      }
     });
  	 }
   }
   function add(param_name) {
	      var input = confirm("수락 하시겠습니까?");
	      
	      if(input){
	      $.ajax({

	         url : '/bit_project/partneradd.se',   
	         type : "post",
	         dataType : "json",
	         data : {
	            name : param_name,
	            state : state_param
	         },
	         contentType : 'application/x-www-form-urlencoded; charset=utf-8',
	         success : function(retVal){
	            if (retVal.res == "OK") {
	               alert("파트너 수락 완료.");
	               partner_admin();
	            } else { // 실패했다면
	            	
	               alert("파트너 수락 실패.");
	            }
	         },
	         error : function(){
	      
	            alert("ajax통신 실패 !!!");
	         }

	      });
	      }
	   }

   
   
   
   
   
   
   function partner_admin1() {
	 	      
	      $.ajax({

	         url : '/bit_project/partner_admin.se',
	         type : "post",
	         dataType : "json",
	         contentType : 'application/x-www-form-urlencoded; charset=utf-8',

	         success:function(data){
	        	 $('#output1').empty();
	        	 
	            $.each(data, function(index, item){   //각각의 데이터는 item에 저장됨. index는 parameter값 item은 실제 저장된 값.
	            	if(item.state == 'Y') {
	            		  var name = "'" + item.name + "'"; 
	            		  
	                      var output = '';
	                      
	                      output += '<tr>';  
	                      
	                      output += '<td>' +item.name +'</td>';
	                      output += '<td>' + '<input type="hidden" value='+ item.license_num +'><span>'+item.license_num+'</span></td>';
	                      output += '<td>' + '<input type="hidden" value='+ item.homepage +'><span>'+item.homepage+'</span></td>';
	                      output += '<td>' + '<input type="hidden" value='+ item.phone +'><span>'+item.phone+'</span></td>';
	                      output += '<td>' + '<input type="hidden" value='+ item.term+'><span>'+item.term+'</span></td>';
	   	                
	                      output += '<td><button type="button" class="btn btn-sm ptsave" style="display:none;">저장<button type="button" class="btn btn-sm btnmodify">수정</button>&nbsp;<button type="button" class="btn btn-sm btnDel1"onclick="del(' + name + ');">삭제</button></td>';
	                      
	                      output += '</tr>';
	                      	             
	            	}
	            	
	               console.log("output:"+output);
	               $('#output1').append(output);
	            });
	         },
	         error:function(){
	        	 
	            alert("ajax통신 실패 !!!");
	         }

	      });
	   }
  	partner_admin1();
  	
  	
    
  	 function del(param_name) {
  	  	 var input = confirm("거절 하시겠습니까?");
  	  	 if(input){
  	  	 $.ajax({
	  	        url: '/bit_project/ptdelete.se',
	  	        type:"post",  
	  	        dataType : "json",
	  	        data : {"name" : param_name},
	  	        
	  	        contentType : 'application/x-www-form-urlencoded; charset=utf-8',
	  	        
		  	        success: function(result){	  	        	
		  	            if (result.res=="OK") {
		  	                alert("거절 완료.");
		  	                partner_admin1();
		  	            } else{
		  	                alert("거절 실패.");
		  	            }
		  	      },
			         error : function(){
			        	
			            alert("ajax통신 실패 !!!");
			            
			      }
	     }); 
  	  	 }
  	  
  	  
  	   }
  	 
  	$(document).on("click",".btnmodify",function(){ 
     $(this).parent().parent().children('td').children('input[type=hidden]').prop("type", "text");
     alert($(this).parent().parent().children('td').children('span').html(""));
     $(this).parent().children('.ptsave').css("display", "inline-block");
     $(this).css("display", "none"); 
  	 });
  
  	
  	$(document).on("click",".ptsave",function(){ 
  		
  		 $(this).parent().parent().children('td').children('input[type=text]').prop("type", "hidden"); 
		 $(this).parent().children('.btnmodify').css("display", "inline-block");
		 $(this).css("display", "none");
		 
		

  		var name = $(this).parent().parent().children().eq(0).text();
  		var license_num = $(this).parent().parent().children().eq(1).children('input').val();
  		var homepage =$(this).parent().parent().children().eq(2).children('input').val();
  		var phone =$(this).parent().parent().children().eq(3).children('input').val();
  		var term =$(this).parent().parent().children().eq(4).children('input').val();
  		
  		
  		
  		var save = $('.ptsave'); // 저장할 버튼을 변수에 선언	
  		
  		
  			$.ajax({
  				url: '/bit_project/ptsave.se', // 서버에 전달할 파일명
  				dataType: 'text',
  				type: 'post',
  				data: {
  					
  					"name" :name,
                    "license_num":license_num,
                    "homepage":homepage,
                    "phone":phone,
                    "term":term 
  				},
  			  success : function(save){
  	               //alert("야호");
  	            
  	         },
  	         error : function(){
  	      
  	            alert("ajax통신 실패 !!!");
  	         }
  			});
  			$(this).parent().parent().children().eq(1).children('span').html($(this).parent().parent().children().eq(1).children('input').val());
  			$(this).parent().parent().children().eq(2).children('span').html($(this).parent().parent().children().eq(2).children('input').val());
  			$(this).parent().parent().children().eq(3).children('span').html($(this).parent().parent().children().eq(3).children('input').val());
  			$(this).parent().parent().children().eq(4).children('span').html($(this).parent().parent().children().eq(4).children('input').val());
  		})
  	
    