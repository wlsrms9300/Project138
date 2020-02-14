var state_param = null;


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

   
   
  	
  	function date_to_str(format, babo)
    {
 	   var format= new Date();
        var year = format.getFullYear(); 
        var month = format.getMonth() + 1;
        if(month<10) month = '0' + month;
        var date = format.getDate();
        if(date<10) date = '0' + date;
        var hour = format.getHours();
        if(hour<10) hour = '0' + hour;
        
        var month2 = Number(month); 
        var babo2 = Number(babo); 
        
        return year + "-" + month + "-" + date + "~"+ year + "-" + (month2+babo2) + "-" + date ;
        
        
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
  	
    