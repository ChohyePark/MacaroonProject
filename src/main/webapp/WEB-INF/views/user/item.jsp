<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.min.js"></script>
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css"
	rel="stylesheet">
<title>Insert title here</title>

<style>
@import
	url('https://fonts.googleapis.com/css2?family=Jost:ital,wght@0,200;0,300;0,400;0,500;1,200;1,400&display=swap')
	;

@import
	url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700&display=swap')
	;

* {
	font-family: 'Jost', sans-serif;
}

input {
	font-family: 'Noto Sans KR', sans-serif;
	font-size: 14px;
}

ul {
	margin: 0px;
	padding: 0px;
	list-style-type: none;
}

li {
	float: left;
}

#thumbnail {
	height: 500px;
	width: 500px;
	border-radius: 10%;
	border: 1px solid #aaaaaa;
}

#detail {
	width: 800px;
	height: 500px;
	border-radius: 10%;
	border: 1px solid #aaaaaa;
}

#shop {
	color: #eb1062;
}

#search {
	border: none;
	border-bottom: solid #aaaaaa 1px;
}

.btn-warning {
	font-size: 14px;
	color: white;
}

.btn-light {
	color: #eb1062
}

.footli {
  float: none;
  font-family: 'Noto Sans KR', sans-serif;
  font-size: 12px;
}

.faq {
  font-size: 13px;
  background-color: black;
  color: white;
}


.small-font {
  font-size: 10px;
}
</style>
</head>

<body>

 <div class="container-fluid">
    <div class="row sticky-top header" style="height: 120px; background-color: white;">
      <div class="d-none d-md-block col-2">
        <div style="height: 120px;">
          <img src="/resources/image/macaronLOGO.png" class="w-100 h-70 mt-4">
        </div>
      </div>
      <div class="d-block d-md-none col-4">
        <div style="height: 100px;" class="mt-3">
          <img src="/resources/image/macaronLOGO.png" class="w-100 h-70 mt-4">
        </div>
      </div>
      <div class="d-none d-md-block col-8">
        <nav class="navbar navbar-expand-lg mt-5">
          <div class="container-fluid">
            <a class="navbar-brand" href="/">Macaroon</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
              aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
              <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
              <ul class="navbar-nav">
                <li class="nav-item">
                  <a class="nav-link active" aria-current="page" href="#">Home</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="#" id="shop">Shop</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="#">Event</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">LookBook</a>
                </li>
              </ul>
            </div>
          </div>
        </nav>
      </div>
      <div class="d-none d-md-block col-2">
        <ul class="m-4 w-100">
          <li style="float: left;" class="text-center mt-4">
            <a href="/" class="text-reset text-decoration-none">
              <i class="fa-solid fa-user"></i></a>
            <div style="font-size: xx-small; text-align: center;">Login</div>
          </li>
          <li style="float: left;" class="text-center mt-4 ms-4">
            <a href="/" class="text-reset text-decoration-none">
              <i class="fa-solid fa-house-user"></i></a>
            <div style="font-size: xx-small; text-align: center;">My Page</div>
          </li>
          <li style="float: left;" class="text-center mt-4 ms-4">
            <a href="/" class="text-reset text-decoration-none">
              <i class="fa-solid fa-hand-holding-heart" style="color: #04a9ad;"></i></a>
            <div style="font-size: xx-small; text-align: center;">Help</div>
          </li>
        </ul>
      </div>
      <div class="d-block d-md-none col-8 d-flex justify-content-center">
        <ul class="mt-5">
          <li class="mt-2">
            <input type="text" id="search" placeholder="Macaroon.com">
            <i class="fa-solid fa-magnifying-glass" style="color: #aaaaaa;"></i>
          </li>
          <li class="mt-2 ms-3">
            <i class="fa-solid fa-user" style="color:#aaaaaa;"></i>
          </li>
          <li class="mt-2 ms-3">
            <i class="fa-solid fa-cart-shopping" style="color:#aaaaaa;"></i>
          </li>
          <li class="mt-2 ms-3">
            <i class="fa-solid fa-heart" style="color: #eb1062;"></i>
          </li>
        </ul>
      </div>
    </div>
    <div class="row body">
      <div class="col-12 col-md-6 d-flex justify-content-center mt-3" style="border-right: 1px solid #ebebeb">
        <div id="thumbnail" class="mb-3"></div>
      </div>
      <div class="col-12 col-md-6 d-flex mt-3">
        <div id="product_info" style="margin-top: 100px;" class="ms-3">
          <p style="font-weight: 100; color: #aaaaaa;">Product category</p>
          <p style="font-size: 32px; border-bottom: 2px solid black;">Product Name</p>
          <p style="font-size: 24px;">$ Product Price</p>
          <div class="mt-5">Summary</div>
          <div id="button" style="margin-top: 150px;" class="mb-3">
            <button type="button" class="btn btn-warning">BUY NOW</button>
            <button type="button" class="btn btn-warning">ADD TO CART </button>
            <button type="button" class="btn btn-light ms-2">
              <i class="fa-solid fa-heart" style="font-size: 12px;"></i>
            </button>
          </div>
        </div>
      </div>
    </div>
    <div class="row body" style="border-top: 1px solid #ebebeb; border-bottom: 1px solid #ebebeb;">
      <div class="col-12 d-flex justify-content-center mt-3 mb-3">
        <div id="detail_info">
          <div id="detail"></div>
        </div>
      </div>
    </div>
    <hr class="mt-5 mb-5">
    <div class="row footer mt-5">
      <div class="d-none d-md-block col-12 service_area mb-4">
        <div class="row">
          <div class="col-3">
            <ul>
              <strong>이용안내</strong>
              <li class="mt-2 footli"><a href=""
                class="text-reset text-decoration-none">검수기준</a></li>
              <li class="mt-2 footli"><a href=""
                class="text-reset text-decoration-none">이용정책</a></li>
              <li class="mt-2 footli"><a href=""
                class="text-reset text-decoration-none">패널티 정책</a></li>
              <li class="mt-2 footli"><a href=""
                class="text-reset text-decoration-none">커뮤니티 가이드라인</a></li>
            </ul>
          </div>
          <div class="col-4">
            <ul>
              <strong>고객지원</strong>
              <li class="mt-2 footli"><a href=""
                class="text-reset text-decoration-none">공지사항</a></li>
              <li class="mt-2 footli"><a href=""
                class="text-reset text-decoration-none">서비스 소개</a></li>
              <li class="mt-2 footli"><a href=""
                class="text-reset text-decoration-none">쇼룸 안내</a></li>
              <li class="mt-2 footli"><a href=""
                class="text-reset text-decoration-none">판매자 방문접수</a></li>
            </ul>
          </div>
          <div class="col-2"></div>
          <div class="col-3">
            <strong>고객센터 <a href="">1599-4666</a></strong>
            <p class= 'footli mt-2'>운영시간 평일 11:00 ~ 18:00 (토.일 공휴일 휴무) 점심시간 평일 13:00 - 14:00</p>
            <button class="btn btn-light faq">자주 묻는 질문</button>
          </div>
        </div>
      </div>
      <div class="col-12 corporation_area me-4">
        <div class="row">
          <div class="col-12 mb-4">
            <p class="small-font">
              마카롱 주식회사 · 대표 장길웅<br> 사업자등록번호 : 620-01-203284 사업자정보확인통신판매업 :
              제 2021-성남분당<br> 사업장소재지 : 경기도 성남시 분당구 분당내곡로<br> 호스팅 서비스
              : 네이버 클라우드 ㈜
            </p>
          </div>
        </div>
      </div>
    </div>
  </div>
</body>
</html>