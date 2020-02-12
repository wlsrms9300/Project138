$("document").ready(function(){

	$('ul.community_menubar li').click(function()  {
		var category = $(this).attr('data-tab'); //클릭한 게시판 이름
		
		window.location.href = "community.co?category="+category;
		$(this).css("color", "#ff7276");
		
//		$('.zz').text(category); //클릭한 게시판 이름으로 바꾸기
//		selectData(category);
	});
	
}); //ready

