<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.spring.adminchart.*" %>
<%@ page import="java.util.List" %>
<%
	int new_users = (int)request.getAttribute("new_users");
	List<RankingVO> rankingList = (List<RankingVO>)request.getAttribute("rankingList"); 
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Lumino - Dashboard</title>
	<link href="${pageContext.request.contextPath}/resources/css/admin/bootstrap.min.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/resources/css/admin/font-awesome.min.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/resources/css/admin/datepicker3.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/resources/css/admin/styles.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/resources/css/font-awesome.css" rel="stylesheet">
	<!--Custom Font-->
	<link href="https://fonts.googleapis.com/css?family=Montserrat:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">
	<!--[if lt IE 9]>
	<script src="js/html5shiv.js"></script>
	<script src="js/respond.min.js"></script>
	<![endif]-->
	<!-- chart.js -->
	<script src="${pageContext.request.contextPath}/resources/js/admin/chart/Chart.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/admin/chart/utils.js"></script>
	<link href="${pageContext.request.contextPath}/resources/css/admin/chart/Chart.css" rel="stylesheet">

	<script>
	/* 데이터 값 랜덤으로 넣을 때 */
	var randomScalingFactor = function() {
		return Math.round(Math.random() * 100);
	};

	/* 영업이익 그래프 ebitGraph */
	var chartData = {
			labels: [
				'${ebitMonth0 }', 
				'${ebitMonth1 }', 
				'${ebitMonth2 }', 
				'${ebitMonth3 }', 
				'${ebitMonth4 }', 
				'${ebitMonth5 }', 
				'${ebitMonth6 }', 
				'${ebitMonth7 }', 
				'${ebitMonth8 }', 
				'${ebitMonth9 }', 
				'${ebitMonth10 }', 
				'${ebitMonth11 }'
			],
			datasets: [{
				type: 'line',
				lineTension: 0,
				label: 'Dataset 1',
				yAxisID: 'y-axis-1',
				borderColor: window.chartColors.red,
				borderWidth: 2,
				fill: false,
				data: [
					'${ebit0 }', 
					'${ebit1 }', 
					'${ebit2 }', 
					'${ebit3 }', 
					'${ebit4 }', 
					'${ebit5 }', 
					'${ebit6 }', 
					'${ebit7 }', 
					'${ebit8 }', 
					'${ebit9 }', 
					'${ebit10 }', 
					'${ebit11 }'
				]
			},{
				type: 'line',
				label: 'Dataset 4', //영업이익률
				lineTension: 0,
				yAxisID: 'y-axis-2',
				borderColor: window.chartColors.purple,
				borderWidth: 2,
				fill: false,
				data: [
					'${om0 }', 
					'${om1 }', 
					'${om2 }', 
					'${om3 }', 
					'${om4 }', 
					'${om5 }', 
					'${om6 }', 
					'${om7 }', 
					'${om8 }', 
					'${om9 }', 
					'${om10 }', 
					'${om11 }'
				]
			}, {
				type: 'bar',
				label: 'Dataset 2',
				yAxisID: 'y-axis-1',
				backgroundColor: window.chartColors.green,
				data: [
					'${revenue0 }', 
					'${revenue1 }', 
					'${revenue2 }', 
					'${revenue3 }', 
					'${revenue4 }', 
					'${revenue5 }', 
					'${revenue6 }', 
					'${revenue7 }', 
					'${revenue8 }', 
					'${revenue9 }', 
					'${revenue10 }', 
					'${revenue11 }'
				],
				borderColor: 'white',
				borderWidth: 2
			}, {
				type: 'bar',
				label: 'Dataset 3',
				yAxisID: 'y-axis-1',
				backgroundColor: window.chartColors.yellow,
				data: [
					'${expense0 }', 
					'${expense1 }', 
					'${expense2 }', 
					'${expense3 }', 
					'${expense4 }', 
					'${expense5 }', 
					'${expense6 }', 
					'${expense7 }', 
					'${expense8 }', 
					'${expense9 }', 
					'${expense10 }', 
					'${expense11 }'
				]
			}]

		};
	/*회원변동 추이*/
	var chartData2 = {
			labels: [
				'${vgDay0 }', 
				'${vgDay1 }', 
				'${vgDay2 }', 
				'${vgDay3 }', 
				'${vgDay4 }', 
				'${vgDay5 }', 
				'${vgDay6 }', 
				'${vgDay7 }', 
				'${vgDay8 }', 
				'${vgDay9 }', 
				'${vgDay10 }', 
				'${vgDay11 }',
				'${vgDay12 }',
				'${vgDay13 }'
				],
			datasets: [{
				type: 'line',
				label: 'Dataset 1',
				borderColor: window.chartColors.green,
				borderWidth: 2,
				fill: false,
				data: [
					'${total0 }', 
					'${total1 }', 
					'${total2 }', 
					'${total3 }', 
					'${total4 }', 
					'${total5 }', 
					'${total6 }', 
					'${total7 }', 
					'${total8 }', 
					'${total9 }', 
					'${total10 }', 
					'${total11 }',
					'${total12 }',
					'${total13 }'
				]
			}, {
				type: 'bar',
				label: 'Dataset 2',
				backgroundColor: window.chartColors.orange,
				data: [
					'${vgIncrease0 }', 
					'${vgIncrease1 }', 
					'${vgIncrease2 }', 
					'${vgIncrease3 }', 
					'${vgIncrease4 }', 
					'${vgIncrease5 }', 
					'${vgIncrease6 }', 
					'${vgIncrease7 }', 
					'${vgIncrease8 }', 
					'${vgIncrease9 }', 
					'${vgIncrease10 }', 
					'${vgIncrease11 }',
					'${vgIncrease12 }',
					'${vgIncrease13 }'
				],
				borderColor: 'white',
				borderWidth: 2
			}, {
				type: 'bar',
				label: 'Dataset 3',
				backgroundColor: window.chartColors.grey,
				data: [
					randomScalingFactor(),
					randomScalingFactor(),
					randomScalingFactor(),
					randomScalingFactor(),
					randomScalingFactor(),
					randomScalingFactor(),
					randomScalingFactor(),
					randomScalingFactor(),
					randomScalingFactor(),
					randomScalingFactor(),
					randomScalingFactor(),
					randomScalingFactor(),
					randomScalingFactor(),
					randomScalingFactor()
				]
			}]

		};
		
	
	/* 구독상품 파이 */
	var config = {
		type: 'doughnut',
		data: {
			datasets: [{
				data: [ '${dngData0 }', '${dngData1 }', '${dngData2 }', '${dngData3 }', '${dngData4 }'],
				backgroundColor: [
					window.chartColors.red,
					window.chartColors.orange,
					window.chartColors.blue,
					window.chartColors.purple,
					window.chartColors.green,
					
				],
				label: 'Dataset 1'
			}],
			labels: [
				'platinum',
				'gold',
				'silver',
				'2month',
				'1month'
			]
		},
		options: {
			responsive: true,
			legend: {
				position: 'bottom',
			},
			title: {
				display: false,
			},
			animation: {
				animateScale: true,
				animateRotate: true
			}
		}
	};

	/* 커뮤니티 게시글 */
	var config4 = {
			type: 'line',
			data: {
				labels: ['${cpDay0 }', '${cpDay1 }', '${cpDay2 }', '${cpDay3 }', '${cpDay4 }', '${cpDay5 }', '${cpDay6 }'],
				datasets: [{
					label: 'My First dataset',
					backgroundColor: 'rgb(255, 99, 132, 0.6)',
					borderColor: window.chartColors.red,
					data: [
						'${totalcp0 }', 
						'${totalcp1 }', 
						'${totalcp2 }', 
						'${totalcp3 }', 
						'${totalcp4 }', 
						'${totalcp5 }', 
						'${totalcp6 }'
					],
					fill: 'start',
					lineTension: 0,
				//	steppedLine: 'middle', //계단식 그래프
				}/* , {
					label: 'My Second dataset',
					fill: false,
					backgroundColor: window.chartColors.blue,
					borderColor: window.chartColors.blue,
					data: [
						randomScalingFactor(),
						randomScalingFactor(),
						randomScalingFactor(),
						randomScalingFactor(),
						randomScalingFactor(),
						randomScalingFactor(),
						randomScalingFactor()
					],
				} */]
			},
			options: {
				responsive: true,
				title: {
					display: false,
				},
				tooltips: {
					mode: 'index',
					intersect: false,
				},
				hover: {
					mode: 'nearest',
					intersect: true
				},
				scales: {
					xAxes: [{
						display: true,
						scaleLabel: {
							display: true,
							labelString: 'Day'
						}
					}],
					yAxes: [{
						display: true,
						scaleLabel: {
							display: true,
							labelString: 'Value'
						}
					}]
				}
			}
		};

	
	
	
	
	window.onload = function() {
		/* 영업이익 그래프  ebitGraph */
		var ctx1 = document.getElementById('ebitGraph').getContext('2d');
		window.myMixedChart = new Chart(ctx1, {
				type: 'bar',
				data: chartData,
				options: {
					responsive: true,
					maintainAspectRatio: false, //상위 <div>에 속하게 됨.
					legend: {
						position: 'bottom',
					},
					title: {
						display: false,
					},
					tooltips: {
						mode: 'index',
						intersect: true
					},
					scales: {
						yAxes: [{
							type: 'linear', // only linear but allow scale type registration. This allows extensions to exist solely for log scale for instance
							display: true,
							position: 'left',
							id: 'y-axis-1',
						}, {
							type: 'linear', // only linear but allow scale type registration. This allows extensions to exist solely for log scale for instance
							display: true,
							position: 'right',
							id: 'y-axis-2',
							labelString: '%',
							gridLines: {
								drawOnChartArea: false
							}
						}]
					}
				}
			});
		/* 회원 변동 추이 */
		var ctx2 = document.getElementById('variationGraph').getContext('2d');
		window.myMixedChart = new Chart(ctx2, {
			type: 'bar',
			data: chartData2,
			options: {
				responsive: true,
				maintainAspectRatio: false,
				title: {
					display: false,
				},
				tooltips: {
					mode: 'index',
					intersect: true
				}
			}
		});
		
		/*구독상품 파이 subscriberGraph */
		var ctx3 = document.getElementById('subscriberGraph').getContext('2d');
		window.myDoughnut = new Chart(ctx3, config);
		
		/* 커뮤니티 게시글 */
		var ctx4 = document.getElementById('postGraph').getContext('2d');
		window.myLine = new Chart(ctx4, config4);
		
		
	};
	</script>
</head>
<body>
	<nav class="navbar navbar-custom navbar-fixed-top" role="navigation">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#sidebar-collapse"><span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span></button>
				<a class="navbar-brand" href="#"><span>Lumino</span>Admin</a>
				<ul class="nav navbar-top-links navbar-right">
					<li class="dropdown"><a class="dropdown-toggle count-info" data-toggle="dropdown" href="#">
						<em class="fa fa-envelope"></em><span class="label label-danger">15</span>
					</a>
						<ul class="dropdown-menu dropdown-messages">
							<li>
								<div class="dropdown-messages-box"><a href="profile.se" class="pull-left">
									<img alt="image" class="img-circle" src="http://placehold.it/40/30a5ff/fff">
									</a>
									<div class="message-body"><small class="pull-right">3 mins ago</small>
										<a href="#"><strong>John Doe</strong> commented on <strong>your photo</strong>.</a>
									<br /><small class="text-muted">1:24 pm - 25/03/2015</small></div>
								</div>
							</li>
							<li class="divider"></li>
							<li>
								<div class="dropdown-messages-box"><a href="profile.se" class="pull-left">
									<img alt="image" class="img-circle" src="http://placehold.it/40/30a5ff/fff">
									</a>
									<div class="message-body"><small class="pull-right">1 hour ago</small>
										<a href="#">New message from <strong>Jane Doe</strong>.</a>
									<br /><small class="text-muted">12:27 pm - 25/03/2015</small></div>
								</div>
							</li>
							<li class="divider"></li>
							<li>
								<div class="all-button"><a href="#">
									<em class="fa fa-inbox"></em> <strong>All Messages</strong>
								</a></div>
							</li>
						</ul>
					</li>
					<li class="dropdown"><a class="dropdown-toggle count-info" data-toggle="dropdown" href="#">
						<em class="fa fa-bell"></em><span class="label label-info">5</span>
					</a>
						<ul class="dropdown-menu dropdown-alerts">
							<li><a href="#">
								<div><em class="fa fa-envelope"></em> 1 New Message
									<span class="pull-right text-muted small">3 mins ago</span></div>
							</a></li>
							<li class="divider"></li>
							<li><a href="#">
								<div><em class="fa fa-heart"></em> 12 New Likes
									<span class="pull-right text-muted small">4 mins ago</span></div>
							</a></li>
							<li class="divider"></li>
							<li><a href="#">
								<div><em class="fa fa-user"></em> 5 New Followers
									<span class="pull-right text-muted small">4 mins ago</span></div>
							</a></li>
						</ul>
					</li>
				</ul>
			</div>
		</div><!-- /.container-fluid -->
	</nav>
	<div id="sidebar-collapse" class="col-sm-3 col-lg-2 sidebar">
		<div class="profile-sidebar">
			<div class="profile-userpic">
				<img src="http://placehold.it/50/30a5ff/fff" class="img-responsive" alt="">
			</div>
			<div class="profile-usertitle">
				<div class="profile-usertitle-name">Username</div>
				<div class="profile-usertitle-status"><span class="indicator label-success"></span>Online</div>
			</div>
			<div class="clear"></div>
		</div>
		<div class="divider"></div>
		<form role="search">
			<div class="form-group">
				<input type="text" class="form-control" placeholder="Search">
			</div>
		</form>
		<ul class="nav menu">
			<!--Dashboard-->
			<li class="active"><a href="index.se"><em class="fa fa-dashboard">&nbsp;</em> Dashboard</a></li>

			<!--회원관리-->
			<li class="parent "><a data-toggle="collapse" href="#sub-member-1">
				<em class="fa fa-navicon">&nbsp;</em> 회원관리 <span data-toggle="collapse" href="#sub-member-1" class="icon pull-right"><em class="fa fa-plus"></em></span>
				</a>
				<ul class="children collapse" id="sub-member-1">
					<li><a class="" href="member_admin.se">
						<span class="fa fa-arrow-right">&nbsp;</span> Member
					</a></li>
					<li><a class="" href="member_group.se">
						<span class="fa fa-arrow-right">&nbsp;</span> Member Group
					</a></li>
				</ul>
			</li>
			
			<!--어린이집 관리-->
			<li><a href="kindergarten_admin.se"><em class="fa fa-bar-chart">&nbsp;</em> 어린이집 관리</a></li>

			<!--파트너 관리-->
			<li><a href="partner_admin.se"><em class="fa fa-bar-chart">&nbsp;</em> 파트너 관리</a></li>

			<!-- 쉐어 관리 -->
			<li class="active"><a href="share.se"><em class="fa fa-bar-chart">&nbsp;</em> 쉐어 관리</a></li>
			
			<!-- 결제 관리 -->
			<li><a href="payment.se"><em class="fa fa-bar-chart">&nbsp;</em> 결제관리</a></li>

			<!--로그인-->
			<li><a href="login.se"><em class="fa fa-power-off">&nbsp;</em> Logout</a></li>
		</ul>
	</div><!--/.sidebar-->
		
	<div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">
		<div class="row">
			<ol class="breadcrumb">
				<li><a href="#">
					<em class="fa fa-home"></em>
				</a></li>
				<li class="active">Dashboard</li>
			</ol>
		</div><!--/.row-->
		
		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header">Dashboard</h1>
			</div>
		</div><!--/.row-->
		
		<div class="panel panel-container">
			<div class="row">
				<div class="col-xs-6 col-md-4 col-lg-4 no-padding">
					<div class="panel panel-teal panel-widget border-right">
						<div class="row no-padding"><em class="fa fa-xl fa-shopping-cart color-blue"></em>
							<div class="large">120</div>
							<div class="text-muted">New Subscribers</div>
						</div>
					</div>
				</div>
				<div class="col-xs-6 col-md-4 col-lg-4 no-padding">
					<div class="panel panel-orange panel-widget border-right">
						<div class="row no-padding"><em class="fa fa-xl fa-users color-teal"></em>
							<div class="large"><%=new_users %></div>
							<div class="text-muted">New Users</div>
						</div>
					</div>
				</div>
				<div class="col-xs-6 col-md-4 col-lg-4 no-padding">
					<div class="panel panel-red panel-widget ">
						<div class="row no-padding"><em class="fa fa-xl fa-search color-red"></em>
							<div class="large">583</div>
							<div class="text-muted">NEW B2B</div>
						</div>
					</div>
				</div>
			</div><!--/.row-->
		</div>
		<!-- 영업 이익 그래프 -->
		<div class="row">
			<div class="col-md-12">
				<div class="panel panel-default">
					<div class="panel-heading">
						영업 이익
						<span class="pull-right clickable panel-toggle panel-button-tab-left"><em class="fa fa-toggle-up"></em></span></div>
					<div class="panel-body">
						<div class="canvas-wrapper">
							<div class="chart-container" style="position: relative; height:40vh;">
							<canvas id="ebitGraph"></canvas>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div><!--/.row-->
		
		<!-- 회원 변동 추이 -->
		<div class="row">
			<div class="col-lg-12">
				<div class="panel panel-default">
					<div class="panel-heading">
						회원 변동 추이
						<span class="pull-right clickable panel-toggle panel-button-tab-left"><em class="fa fa-toggle-up"></em></span></div>
					<div class="panel-body">
							<div class="canvas-wrapper">
							<!-- 막대 그래프 -->
								<div class="chart-container2" style="position: relative; height:40vh;">							
	 								<canvas id="variationGraph"></canvas>
	 							</div>	
							</div>
					</div>
				</div>
			</div>
		</div><!--/.row-->		

		<div class="row">
			<div class="col-md-2">
				<div class="panel panel-default">
					<div class="panel-heading">
						WishList Top5
						<span class="pull-right clickable panel-toggle panel-button-tab-left"><em class="fa fa-toggle-up"></em></span></div>
					<div class="panel-body">
						<div class="canvas-wrapper">
						<table>
							<%
								for(int i=0; i<5; i++) 
								{
									RankingVO rankingvo = (RankingVO)rankingList.get(i);
							%> 
								<tr>
									<td>&nbsp;&nbsp;&nbsp;<%=i+1 %>.&nbsp;</td>
									<td>
										<%=rankingvo.getProduct_name() %>
									</td>
								</tr>
							<%
								}
							%> 
	
						</table>	
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-5">
				<div class="panel panel-default">
					<div class="panel-heading">
						구독상품 
						<ul class="pull-right panel-settings panel-button-tab-right">
							<li class="dropdown"><a class="pull-right dropdown-toggle" data-toggle="dropdown" href="#">
								<em class="fa fa-cogs"></em>
							</a>
								<ul class="dropdown-menu dropdown-menu-right">
									<li>
										<ul class="dropdown-settings">
											<li><a href="#">
												<em class="fa fa-cog"></em> Settings 1
											</a></li>
											<li class="divider"></li>
											<li><a href="#">
												<em class="fa fa-cog"></em> Settings 2
											</a></li>
											<li class="divider"></li>
											<li><a href="#">
												<em class="fa fa-cog"></em> Settings 3
											</a></li>
										</ul>
									</li>
								</ul>
							</li>
						</ul>
						<span class="pull-right clickable panel-toggle panel-button-tab-left"><em class="fa fa-toggle-up"></em></span></div>
					<div class="panel-body">
						<div class="canvas-wrapper">
							<canvas id="subscriberGraph"> </canvas>
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-5">
				<div class="panel panel-default">
					<div class="panel-heading">
						커뮤니티 게시글
						<span class="pull-right clickable panel-toggle panel-button-tab-left"><em class="fa fa-toggle-up"></em></span></div>
					<div class="panel-body">
						<div class="canvas-wrapper">
							<canvas id="postGraph"></canvas>
						</div>
					</div>
				</div>
			</div>
		</div>	<!--/.row-->
	</div>	<!--/.main-->
	
	<script src="${pageContext.request.contextPath}/resources/js/admin/jquery-1.11.1.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/admin/bootstrap.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/admin/bootstrap-datepicker.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/admin/custom.js"></script>


		
</body>
</html>
