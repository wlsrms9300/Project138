$("document").ready(function(){

	$('ul.community_menubar li').click(function()  {
		var category = $(this).attr('data-tab'); //클릭한 게시판 이름
		
		$(this).removeClass("active"); 
		$(this).addClass("active"); // 클릭한 a에 (active)클래스를 넣는다.
		
		window.location.href = "community.co?category="+category;
		
	});
	
}); //ready

