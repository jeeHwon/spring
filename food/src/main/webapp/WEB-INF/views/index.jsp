<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="resources/chartjs/dist/Chart.js"></script>
<!-- page content -->
<div class="right_col" role="main">
	<!-- top tiles -->
	<div class="row tile_count">
		<div class="col-md-2 col-sm-4 col-xs-6 tile_stats_count">
			<span class="count_top"><i class="fa fa-user"></i> Total Users Count</span>
			<div class="count">${user }</div>
			<span class="count_bottom"><i class="green">4% </i> From last
				Week</span>
		</div>
		<div class="col-md-2 col-sm-4 col-xs-6 tile_stats_count">
			<span class="count_top"><i class="fa fa-clock-o"></i>Total Recipe Count</span>
			<div class="count">${recipe }</div>
			<span class="count_bottom"><i class="green"><i
					class="fa fa-sort-asc"></i>3% </i> From last Week</span>
		</div>
		<div class="col-md-2 col-sm-4 col-xs-6 tile_stats_count">
			<span class="count_top"><i class="fa fa-user"></i> Total Diet Count</span>
			<div class="count green">${diet }</div>
			<span class="count_bottom"><i class="green"><i
					class="fa fa-sort-asc"></i>34% </i> From last Week</span>
		</div>
		<div class="col-md-2 col-sm-4 col-xs-6 tile_stats_count">
			<span class="count_top"><i class="fa fa-user"></i> Total
				Food Count</span>
			<div class="count">${food }</div>
			<span class="count_bottom"><i class="red"><i
					class="fa fa-sort-desc"></i>12% </i> From last Week</span>
		</div>
		<div class="col-md-2 col-sm-4 col-xs-6 tile_stats_count">
			<span class="count_top"><i class="fa fa-user"></i> Total
				Trend Data</span>
			<div class="count">${trend }</div>
			<span class="count_bottom"><i class="green"><i
					class="fa fa-sort-asc"></i>34% </i> From last Week</span>
		</div>
		<div class="col-md-2 col-sm-4 col-xs-6 tile_stats_count">
			<span class="count_top"><i class="fa fa-user"></i> Total
				Price Data</span>
			<div class="count">${price }</div>
			<span class="count_bottom"><i class="green"><i
					class="fa fa-sort-asc"></i>34% </i> From last Week</span>
		</div>
	</div>
	<!-- /top tiles -->

	<!-- 트렌드 -->
	<div class="row">
		<div class="col-md-8 col-sm-8 col-xs-12">
			<div class="x_panel tile fixed_height_320">
				<div class="x_title">
					<h2>음식 트렌드</h2>
					<ul class="nav navbar-right panel_toolbox">
						<li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
						</li>
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown" role="button" aria-expanded="false"><i
								class="fa fa-wrench"></i></a>
							<ul class="dropdown-menu" role="menu">
								<li><a href="#">Settings 1</a></li>
								<li><a href="#">Settings 2</a></li>
							</ul></li>
						<li><a class="close-link"><i class="fa fa-close"></i></a></li>
					</ul>
					<div class="clearfix"></div>
				</div>
				<div class="x_content">
					
					<canvas id="canvas" class="col-md-12 col-sm-12 col-xs-12" style="height:250px;"></canvas>

				</div>
			</div>
		</div>

		<div class="col-md-4 col-sm-4 col-xs-12">
			<div class="x_panel tile fixed_height_320 overflow_hidden">
				<div class="x_title">
					<h2>음식 트렌드 순위</h2>
					<ul class="nav navbar-right panel_toolbox">
						<li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
						</li>
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown" role="button" aria-expanded="false"><i
								class="fa fa-wrench"></i></a>
							<ul class="dropdown-menu" role="menu">
								<li><a href="#">Settings 1</a></li>
								<li><a href="#">Settings 2</a></li>
							</ul></li>
						<li><a class="close-link"><i class="fa fa-close"></i></a></li>
					</ul>
					<div class="clearfix"></div>
				</div>
				<div class="x_content">
					<table class="table">
						<tbody>
							<tr>
								<th>음식명</th>
								<th>월 검색량</th>
								<th>월별 블로그 작성량</th>
								<th>월별 View 작성량</th>
							</tr>
							<c:forEach var="dto" items="${tlist}">
								<tr>
									<td>${dto.trend_keyword }</td>
									<td>${dto.trend_month_vol }</td>
									<td>${dto.trend_blog_vol }</td>
									<td>${dto.trend_view_vol }</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</div>

	</div>

	<div class="row">
		<div class="col-md-12 col-sm-12 col-xs-12">
			<div class="dashboard_graph">

				<div class="row x_title">
					<div class="col-md-6">
						<h3>
							Network Activities <small>Graph title sub-title</small>
						</h3>
					</div>
					<div class="col-md-6">
						<div id="reportrange" class="pull-right"
							style="background: #fff; cursor: pointer; padding: 5px 10px; border: 1px solid #ccc">
							<i class="glyphicon glyphicon-calendar fa fa-calendar"></i> <span>December
								30, 2014 - January 28, 2015</span> <b class="caret"></b>
						</div>
					</div>
				</div>

				<div class="col-md-9 col-sm-9 col-xs-12">
					<div id="chart_plot_01" class="demo-placeholder"></div>
				</div>
				<div class="col-md-3 col-sm-3 col-xs-12 bg-white">
					<div class="x_title">
						<h2>Top Campaign Performance</h2>
						<div class="clearfix"></div>
					</div>

					<div class="col-md-12 col-sm-12 col-xs-6">
						<div>
							<p>Facebook Campaign</p>
							<div class="">
								<div class="progress progress_sm" style="width: 76%;">
									<div class="progress-bar bg-green" role="progressbar"
										data-transitiongoal="80"></div>
								</div>
							</div>
						</div>
						<div>
							<p>Twitter Campaign</p>
							<div class="">
								<div class="progress progress_sm" style="width: 76%;">
									<div class="progress-bar bg-green" role="progressbar"
										data-transitiongoal="60"></div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-12 col-sm-12 col-xs-6">
						<div>
							<p>Conventional Media</p>
							<div class="">
								<div class="progress progress_sm" style="width: 76%;">
									<div class="progress-bar bg-green" role="progressbar"
										data-transitiongoal="40"></div>
								</div>
							</div>
						</div>
						<div>
							<p>Bill boards</p>
							<div class="">
								<div class="progress progress_sm" style="width: 76%;">
									<div class="progress-bar bg-green" role="progressbar"
										data-transitiongoal="50"></div>
								</div>
							</div>
						</div>
					</div>

				</div>

				<div class="clearfix"></div>
			</div>
		</div>

	</div>
	<br />

	<div class="row">


		<div class="col-md-4 col-sm-4 col-xs-12">
			<div class="x_panel tile fixed_height_320">
				<div class="x_title">
					<h2>공지 사항</h2>
					<ul class="nav navbar-right panel_toolbox">
						<li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
						</li>
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown" role="button" aria-expanded="false"><i
								class="fa fa-wrench"></i></a>
							<ul class="dropdown-menu" role="menu">
								<li><a href="#">Settings 1</a></li>
								<li><a href="#">Settings 2</a></li>
							</ul></li>
						<li><a class="close-link"><i class="fa fa-close"></i></a></li>
					</ul>
					<div class="clearfix"></div>
				</div>
				<div class="x_content" id="notice">
					<h4><a href="<%=request.getContextPath()%>/notice/list">리스트 보러가기</a></h4>
					<table align="center">
					  <tr>
						 	<td width=60%>제목</td>
						 	<td width=20%>관리자명</td>
						 	<td width=15% align="right">작성일</td>
						 </tr>
						
						 <c:forEach items="${list }" var="ndto">
						  <tr>
						     <td><a href="notice/content?notice_id=${ndto.notice_id}">${ndto.notice_title}</a></td>
						     <td>${ndto.notice_name}</td>
						     <td>${ndto.notice_writeday}</td>
						  </tr>
						 </c:forEach>
				</table>
				</div>
			</div>
		</div>

		<div class="col-md-4 col-sm-4 col-xs-12">
			<div class="x_panel tile fixed_height_320 overflow_hidden">
				<div class="x_title">
					<h2>영양성분 검색</h2>
					<ul class="nav navbar-right panel_toolbox">
						<li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
						</li>
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown" role="button" aria-expanded="false"><i
								class="fa fa-wrench"></i></a>
							<ul class="dropdown-menu" role="menu">
								<li><a href="#">Settings 1</a></li>
								<li><a href="#">Settings 2</a></li>
							</ul></li>
						<li><a class="close-link"><i class="fa fa-close"></i></a></li>
					</ul>
					<div class="clearfix"></div>
				</div>
				<div class="x_content" >
					<span>여기다가 영양성분 검색 넣어야함</span>
				</div>
			</div>
		</div>


		<div class="col-md-4 col-sm-4 col-xs-12">
			<div class="x_panel tile fixed_height_320">
				<div class="x_title">
					<h2>영양 성분 표</h2>
					<ul class="nav navbar-right panel_toolbox">
						<li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
						</li>
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown" role="button" aria-expanded="false"><i
								class="fa fa-wrench"></i></a>
							<ul class="dropdown-menu" role="menu">
								<li><a href="#">Settings 1</a></li>
								<li><a href="#">Settings 2</a></li>
							</ul></li>
						<li><a class="close-link"><i class="fa fa-close"></i></a></li>
					</ul>
					<div class="clearfix"></div>
				</div>
				<div class="x_content">
					<nutrition align="center">
					
					</nutrition>
				</div>
			</div>
		</div>

	</div>


	<div class="row">
		<div class="col-md-4 col-sm-4 col-xs-12">
			<div class="x_panel">
				<div class="x_title">
					<h2>
						Recent Activities <small>Sessions</small>
					</h2>
					<ul class="nav navbar-right panel_toolbox">
						<li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
						</li>
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown" role="button" aria-expanded="false"><i
								class="fa fa-wrench"></i></a>
							<ul class="dropdown-menu" role="menu">
								<li><a href="#">Settings 1</a></li>
								<li><a href="#">Settings 2</a></li>
							</ul></li>
						<li><a class="close-link"><i class="fa fa-close"></i></a></li>
					</ul>
					<div class="clearfix"></div>
				</div>
				<div class="x_content">
					<div class="dashboard-widget-content">

						<ul class="list-unstyled timeline widget">
							<li>
								<div class="block">
									<div class="block_content">
										<h2 class="title">
											<a>Who Needs Sundance When You’ve Got&nbsp;Crowdfunding?</a>
										</h2>
										<div class="byline">
											<span>13 hours ago</span> by <a>Jane Smith</a>
										</div>
										<p class="excerpt">
											Film festivals used to be do-or-die moments for movie makers.
											They were where you met the producers that could fund your
											project, and if the buyers liked your flick, they’d pay to
											Fast-forward and… <a>Read&nbsp;More</a>
										</p>
									</div>
								</div>
							</li>
							<li>
								<div class="block">
									<div class="block_content">
										<h2 class="title">
											<a>Who Needs Sundance When You’ve Got&nbsp;Crowdfunding?</a>
										</h2>
										<div class="byline">
											<span>13 hours ago</span> by <a>Jane Smith</a>
										</div>
										<p class="excerpt">
											Film festivals used to be do-or-die moments for movie makers.
											They were where you met the producers that could fund your
											project, and if the buyers liked your flick, they’d pay to
											Fast-forward and… <a>Read&nbsp;More</a>
										</p>
									</div>
								</div>
							</li>
							<li>
								<div class="block">
									<div class="block_content">
										<h2 class="title">
											<a>Who Needs Sundance When You’ve Got&nbsp;Crowdfunding?</a>
										</h2>
										<div class="byline">
											<span>13 hours ago</span> by <a>Jane Smith</a>
										</div>
										<p class="excerpt">
											Film festivals used to be do-or-die moments for movie makers.
											They were where you met the producers that could fund your
											project, and if the buyers liked your flick, they’d pay to
											Fast-forward and… <a>Read&nbsp;More</a>
										</p>
									</div>
								</div>
							</li>
							<li>
								<div class="block">
									<div class="block_content">
										<h2 class="title">
											<a>Who Needs Sundance When You’ve Got&nbsp;Crowdfunding?</a>
										</h2>
										<div class="byline">
											<span>13 hours ago</span> by <a>Jane Smith</a>
										</div>
										<p class="excerpt">
											Film festivals used to be do-or-die moments for movie makers.
											They were where you met the producers that could fund your
											project, and if the buyers liked your flick, they’d pay to
											Fast-forward and… <a>Read&nbsp;More</a>
										</p>
									</div>
								</div>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</div>


		<div class="col-md-8 col-sm-8 col-xs-12">
			<div class="row">
				<div class="col-md-12 col-sm-12 col-xs-12">
					<div class="x_panel">
						<div class="x_title">
							<h2>
								Visitors location <small>geo-presentation</small>
							</h2>
							<ul class="nav navbar-right panel_toolbox">
								<li><a class="collapse-link"><i
										class="fa fa-chevron-up"></i></a></li>
								<li class="dropdown"><a href="#" class="dropdown-toggle"
									data-toggle="dropdown" role="button" aria-expanded="false"><i
										class="fa fa-wrench"></i></a>
									<ul class="dropdown-menu" role="menu">
										<li><a href="#">Settings 1</a></li>
										<li><a href="#">Settings 2</a></li>
									</ul></li>
								<li><a class="close-link"><i class="fa fa-close"></i></a></li>
							</ul>
							<div class="clearfix"></div>
						</div>
						<div class="x_content">
							<div class="dashboard-widget-content">
								<div class="col-md-4 hidden-small">
									<h2 class="line_30">125.7k Views from 60 countries</h2>

									<table class="countries_list">
										<tbody>
											<tr>
												<td>United States</td>
												<td class="fs15 fw700 text-right">33%</td>
											</tr>
											<tr>
												<td>France</td>
												<td class="fs15 fw700 text-right">27%</td>
											</tr>
											<tr>
												<td>Germany</td>
												<td class="fs15 fw700 text-right">16%</td>
											</tr>
											<tr>
												<td>Spain</td>
												<td class="fs15 fw700 text-right">11%</td>
											</tr>
											<tr>
												<td>Britain</td>
												<td class="fs15 fw700 text-right">10%</td>
											</tr>
										</tbody>
									</table>
								</div>
								<div id="world-map-gdp" class="col-md-8 col-sm-12 col-xs-12"
									style="height: 230px;"></div>
							</div>
						</div>
					</div>
				</div>

			</div>
			<div class="row">


				<!-- Start to do list -->
				<div class="col-md-6 col-sm-6 col-xs-12">
					<div class="x_panel">
						<div class="x_title">
							<h2>
								To Do List <small>Sample tasks</small>
							</h2>
							<ul class="nav navbar-right panel_toolbox">
								<li><a class="collapse-link"><i
										class="fa fa-chevron-up"></i></a></li>
								<li class="dropdown"><a href="#" class="dropdown-toggle"
									data-toggle="dropdown" role="button" aria-expanded="false"><i
										class="fa fa-wrench"></i></a>
									<ul class="dropdown-menu" role="menu">
										<li><a href="#">Settings 1</a></li>
										<li><a href="#">Settings 2</a></li>
									</ul></li>
								<li><a class="close-link"><i class="fa fa-close"></i></a></li>
							</ul>
							<div class="clearfix"></div>
						</div>
						<div class="x_content">

							<div class="">
								<ul class="to_do">
									<li>
										<p>
											<input type="checkbox" class="flat"> Schedule meeting
											with new client
										</p>
									</li>
									<li>
										<p>
											<input type="checkbox" class="flat"> Create email
											address for new intern
										</p>
									</li>
									<li>
										<p>
											<input type="checkbox" class="flat"> Have IT fix the
											network printer
										</p>
									</li>
									<li>
										<p>
											<input type="checkbox" class="flat"> Copy backups to
											offsite location
										</p>
									</li>
									<li>
										<p>
											<input type="checkbox" class="flat"> Food truck fixie
											locavors mcsweeney
										</p>
									</li>
									<li>
										<p>
											<input type="checkbox" class="flat"> Food truck fixie
											locavors mcsweeney
										</p>
									</li>
									<li>
										<p>
											<input type="checkbox" class="flat"> Create email
											address for new intern
										</p>
									</li>
									<li>
										<p>
											<input type="checkbox" class="flat"> Have IT fix the
											network printer
										</p>
									</li>
									<li>
										<p>
											<input type="checkbox" class="flat"> Copy backups to
											offsite location
										</p>
									</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
				<!-- End to do list -->

				<!-- start of weather widget -->
				<div class="col-md-6 col-sm-6 col-xs-12">
					<div class="x_panel">
						<div class="x_title">
							<h2>
								Daily active users <small>Sessions</small>
							</h2>
							<ul class="nav navbar-right panel_toolbox">
								<li><a class="collapse-link"><i
										class="fa fa-chevron-up"></i></a></li>
								<li class="dropdown"><a href="#" class="dropdown-toggle"
									data-toggle="dropdown" role="button" aria-expanded="false"><i
										class="fa fa-wrench"></i></a>
									<ul class="dropdown-menu" role="menu">
										<li><a href="#">Settings 1</a></li>
										<li><a href="#">Settings 2</a></li>
									</ul></li>
								<li><a class="close-link"><i class="fa fa-close"></i></a></li>
							</ul>
							<div class="clearfix"></div>
						</div>
						<div class="x_content">
							<div class="row">
								<div class="col-sm-12">
									<div class="temperature">
										<b>Monday</b>, 07:30 AM <span>F</span> <span><b>C</b></span>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-sm-4">
									<div class="weather-icon">
										<canvas height="84" width="84" id="partly-cloudy-day"></canvas>
									</div>
								</div>
								<div class="col-sm-8">
									<div class="weather-text">
										<h2>
											Texas <br> <i>Partly Cloudy Day</i>
										</h2>
									</div>
								</div>
							</div>
							<div class="col-sm-12">
								<div class="weather-text pull-right">
									<h3 class="degrees">23</h3>
								</div>
							</div>

							<div class="clearfix"></div>

							<div class="row weather-days">
								<div class="col-sm-2">
									<div class="daily-weather">
										<h2 class="day">Mon</h2>
										<h3 class="degrees">25</h3>
										<canvas id="clear-day" width="32" height="32"></canvas>
										<h5>
											15 <i>km/h</i>
										</h5>
									</div>
								</div>
								<div class="col-sm-2">
									<div class="daily-weather">
										<h2 class="day">Tue</h2>
										<h3 class="degrees">25</h3>
										<canvas height="32" width="32" id="rain"></canvas>
										<h5>
											12 <i>km/h</i>
										</h5>
									</div>
								</div>
								<div class="col-sm-2">
									<div class="daily-weather">
										<h2 class="day">Wed</h2>
										<h3 class="degrees">27</h3>
										<canvas height="32" width="32" id="snow"></canvas>
										<h5>
											14 <i>km/h</i>
										</h5>
									</div>
								</div>
								<div class="col-sm-2">
									<div class="daily-weather">
										<h2 class="day">Thu</h2>
										<h3 class="degrees">28</h3>
										<canvas height="32" width="32" id="sleet"></canvas>
										<h5>
											15 <i>km/h</i>
										</h5>
									</div>
								</div>
								<div class="col-sm-2">
									<div class="daily-weather">
										<h2 class="day">Fri</h2>
										<h3 class="degrees">28</h3>
										<canvas height="32" width="32" id="wind"></canvas>
										<h5>
											11 <i>km/h</i>
										</h5>
									</div>
								</div>
								<div class="col-sm-2">
									<div class="daily-weather">
										<h2 class="day">Sat</h2>
										<h3 class="degrees">26</h3>
										<canvas height="32" width="32" id="cloudy"></canvas>
										<h5>
											10 <i>km/h</i>
										</h5>
									</div>
								</div>
								<div class="clearfix"></div>
							</div>
						</div>
					</div>

				</div>
				<!-- end of weather widget -->
			</div>
		</div>
	</div>
</div>
<!-- /page content -->

<!-- 트렌드 차트 -->
<script>
	window.chartColors = {
		red : 'rgb(255, 99, 132)',
		orange : 'rgb(255, 159, 64)',
		yellow : 'rgb(255, 205, 86)',
		green : 'rgb(75, 192, 192)',
		blue : 'rgb(54, 162, 235)',
		purple : 'rgb(153, 102, 255)',
		grey : 'rgb(201, 203, 207)',
		deepgray: '#73879c'
	};

	var label = new Array();
	var trend_month_vol = new Array();
	var trend_blog_vol = new Array();
	var trend_view_vol = new Array();
	<c:forEach var="dto" items="${tlist}">
	label.push("${dto.trend_keyword}");
	trend_month_vol.push("${dto.trend_month_vol}");
	trend_blog_vol.push("${dto.trend_blog_vol}");
	trend_view_vol.push("${dto.trend_view_vol}");
	</c:forEach>

	var barChartData = {
		labels : label,
		datasets : [ {
			label : '월간 검색량',
			backgroundColor : window.chartColors.deepgray,
			data : trend_month_vol
		}, {
			label : '블로그 월간 작성량',
			backgroundColor : window.chartColors.blue,
			data : trend_blog_vol
		}, {
			label : 'View 월간 작성량',
			backgroundColor : window.chartColors.green,
			data : trend_view_vol
		} ]

	};
	var ctx = document.getElementById('canvas').getContext('2d');
	window.myBar = new Chart(ctx, {
		type : 'bar',
		data : barChartData,
		options : {
			title : {
				display : false,
				text : '음식 트렌드'
			},
			tooltips : {
				mode : 'index',
				intersect : false
			},
			responsive : false,
			scales : {
				xAxes : [ {
					stacked : true,
				} ],
				yAxes : [ {
					stacked : true
				} ]
			}
		}
	});
	
	
</script>