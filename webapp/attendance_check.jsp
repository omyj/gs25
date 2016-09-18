<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="/gs25/assets/css/gs25site.css" rel="stylesheet" type="text/css">
<link href="/gs25/assets/css/sub.css" rel="stylesheet" type="text/css">
<script src="http://code.jquery.com/jquery-latest.min.js"></script>

<title>attendance_check</title>
<style type="text/css">
	em{font-style: normal;}
	.title h1 {font-size: 35px; padding-top: 70px;}
	.event_cal{margin: 20px 0px;}
	.count    {float:left; font-size: 16px; font-family: NanumBarunGothicRegular !important;}
	.count em {color:orange;}
	.select_cal {margin-left: 390px;}
	.select_cal select{font-family: NanumBarunGothicRegular !important; padding: 6px 8px; margin-right: 10px;}
	.float_clear{clear:both;}
	table,tbody,tfoot,thead,tr,th,td {border:0 none}
	table{width:100%;table-layout:fixed; border-collapse:collapse; border-spacing:0; border:0;}
	.cal_box{margin-bottom: 25px;}
	.cal_box th{border: 1px solid #dfdfdf; background-color: #fbfbfb;}
	.cal_box td{border: 1px solid #dfdfdf;}
	
	.th_wrap{font-size: 16px; height: 45px; line-height: 45px;}
	.td_wrap{height: 214px;}
	.td_date{padding: 10px 0 0 10px; color: #d04001; font-weight: bold; font-size:14px;}
	.td_img{margin: 0px 10px;}
	.gift_txt{font-family: NanumBarunGothicRegular !important; margin: 8px 10px 0px 10px; text-align: center;font-size: 13px;}
	.prs_num{margin: 0px 10px; padding-top:5px; color: #00857c; font-size: 16px; text-align: center;}
</style>
</head>
<body>
	<jsp:include page="/WEB-INF/views/include/subheader.jsp" />
	<div class="container">
		<div class="title"><h1>매일매일 출석체크</h1></div>
			<form class="event_cal" action="#">
				<div class="count">나의 출석횟수:<em>0</em> &nbsp;회</div>
				
					<div class="select_cal">
						<select>
						<option  value="2016" >2016년</option>
						<option  value="2015" >2015년</option>
						<option  value="2014" >2014년</option>
						<option  value="2013" >2013년</option>
						</select>
						<select>
							<script language="JavaScript">
							for (var i = 1; i <= 12; i++) {
								document.write(
								"<option value="+i+">"+
								i+"월</option>"
								)
							}
							</script>
						</select>
					
					</div>
			</form>
		
		<div class="float_clear"></div>
		
		<div class="cal_box">
			<table>
				<thead>
					<tr>
						<th><div class="th_wrap">일요일</div></th>
						<th><div class="th_wrap">월요일</div></th>
						<th><div class="th_wrap">화요일</div></th>
						<th><div class="th_wrap">수요일</div></th>
						<th><div class="th_wrap">목요일</div></th>
						<th><div class="th_wrap">금요일</div></th>
						<th><div class="th_wrap">토요일</div></th>
					</tr>
				</thead>
				
				<tbody>
<%-- 					<tr>
						<td>
						<div class="td_wrap" style="background-color: rgb(253, 237, 161);">
							<div class='td_date'>25</div>
							<div class='td_img'>
								<img src='https://hpsimg.gsretail.com/medias/sys_master/images/images/h7a/h58/8924642541598.png' alt='유어스)<br />뉴공화춘자장(용기)' width='114px' height='77px' id='giftImgNum_25'>
							</div>
							<div class='gift_txt' id='giftTitleNum_25'>	
								<em>유어스)<br>뉴공화춘자장(용기)</em>
							</div>
							<div class='prs_num'>30명</div>
						</div>
						</td>
						
					</tr> --%>

					<script language="JavaScript">
					var y = 2016; // 현재 연도
					var m = 9 - 1; // 현재 월에서 -1 을 해야합니다.
					    // 현재 년(y)월(m)의 1일(1)의 요일을 구합니다.
					var theDate = new Date(y,m,1);
					    // 그 날의 요일은?
					var theDay = theDate.getDay();

					/* 현재 월의 마지막 일을 구합니다. */
					    // 1월부터 12월까지의 마지막 일을 배열로 만듭니다.
					var last = [31,28,31,30,31,30,31,31,30,31,30,31];
					    // 4년마다 있는 윤년을 계산합니다.(100년||400년 주기는 제외)
					if (y%4 && y%100!=0 || y%400===0) {
					    lastDate = last[1] = 29;
					}
					    // 현재 월의 마지막 일이 며칠인지 구합니다.
					var lastDate = last[m];


					/* 현재 월의 달력에 필요한 행의 개수를 구합니다. */
					    // theDay(빈 칸의 수), lastDate(월의 전체 일수)
					var row = Math.ceil((theDay+lastDate)/7);
					
					var date = 1;
						for (var i = 1; i <= row; i++) {
							document.write(
									"<tr>"
								)
							for(var j = 1; j <= 7; j++){
								if(i===1 && j<=theDay || date>lastDate){
									document.write("<td> <div class='td_wrap'>&nbsp</div></td>")
								}else{
								document.write(
										"<td>"+
										"<div class='td_wrap' style='background-color: rgb(253, 237, 161);'>"+
											"<div class='td_date'>"+date+"</div>"+
											"<div class='td_img'>"+
												"<img src='https://hpsimg.gsretail.com/medias/sys_master/images/images/h7a/h58/8924642541598.png' width='114px' height='77px' id='giftImgNum_25'>"+
											"</div>"+
											"<div class='gift_txt' id='giftTitleNum_25'>"+
												"<em>유어스)<br>뉴공화춘자장(용기)</em>"+
											"</div>"+
											"<div class='prs_num'>30명</div>"+
										"</div>"+
										"</td>"
									)
									date++;
								}
							}
							document.write(
									"</tr>"
								)
						}
						
						
/* 					var date = 1;
						for (i = 0; i < 5; i++) {
							document.write(
									"<tr>"
								)
							for(j = 0; j < 7; j++){
								document.write(
										"<td>"+
										"<div class='td_wrap' style='background-color: rgb(253, 237, 161);'>"+
											"<div class='td_date'>"+date+"</div>"+
											"<div class='td_img'>"+
												"<img src='https://hpsimg.gsretail.com/medias/sys_master/images/images/h7a/h58/8924642541598.png' width='114px' height='77px' id='giftImgNum_25'>"+
											"</div>"+
											"<div class='gift_txt' id='giftTitleNum_25'>"+
												"<em>유어스)<br>뉴공화춘자장(용기)</em>"+
											"</div>"+
											"<div class='prs_num'>30명</div>"+
										"</div>"+
										"</td>"
									)
									date++;
							}
							document.write(
									"</tr>"
								)
						} */

/* 						// Display the month, day, and year. getMonth() returns a 0-based number.
						var month = dt.getMonth()+1;
						var day = dt.getDate();
						var year = dt.getFullYear();
						document.write(month + '-' + day + '-' + year); */
						
					</script>
				</tbody>
			</table>
		</div>
	</div>
		
	<jsp:include page="/WEB-INF/views/include/footer.jsp" />
<!-- 	<div class="fontTest">fontTestfontTest</div> -->
</body>

</html>