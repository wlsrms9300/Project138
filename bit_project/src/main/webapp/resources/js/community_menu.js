$("document").ready(function(){

	$('ul.community_menubar li').click(function()  {
		var category = $(this).attr('data-tab'); //클릭한 게시판 이름
		alert(category);
		
		window.location.href = "community.co?category="+category;
		
//		$('.zz').text(category); //클릭한 게시판 이름으로 바꾸기
//		selectData(category);
	});
	
}); //ready

