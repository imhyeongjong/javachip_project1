<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<nav class="nav2" id="nav2">
		<form action="booking.html" id="loginForm">
        <ul class="nav2_center">
                <form onsubmit="searchPlaces(); return false;">
                    <button type="submit" class="nav2_input--button"><i class="fa-solid fa-magnifying-glass"></i></button>
                  
                </form>
        </ul>
        <ul class="nav2_imgbox">
            <div class="nav2_img">
                <img src="./img/img_present03_fix2.jpg">
            </div>
        </ul>

        <ul class="nav2_infobox">
            <li class="nav2_name">
                <span>주차장 이름이 들어가는 곳</span>
            </li>
            <li class="nav2_info">
                <span>상세 정보가 들어가는
                    곳입니다</span>
            </li>
        </ul>
        <hr class="nav2_hr">
        <ul class="nav2_containbox">
            <div class="container">
                <div class="progress-container">
                    <div class="progress-bar">
                        <div class="progress-bar-icon"><i class="fa-solid fa-arrows-left-right-to-line"></i></div>
                        <div class="progress-bar-text">"주차자리 간격이 넓어요"</div>
                        <span data-width="70%"></span>
                    </div>
                </div>
                <div class="progress-container">
                    <div class="progress-bar">
                        <div class="progress-bar-icon"><i class="fa-solid fa-money-bill"></i></div>
                        <div class="progress-bar-text">"가격이 합리적이에요"</div>
                        <span data-width="40%"></span>
                    </div>
                </div>
                <div class="progress-container">
                    <div class="progress-bar">
                        <div class="progress-bar-icon"><i class="fa-solid fa-child"></i></div>
                        <div class="progress-bar-text">"관리인이 친절해요"</div>
                        <span data-width="20%"></span>
                    </div>
                </div>
                <div class="progress-container">
                    <div class="progress-bar">
                        <div class="progress-bar-icon"><i class="fa-solid fa-car"></i></div>
                        <div class="progress-bar-text">"발렛파킹이 가능해요"</div>
                        <span data-width="5%"></span>
                    </div>
                </div>
                <div class="progress-container">
                    <div class="progress-bar">
                        <div class="progress-bar-icon"><i class="fa-solid fa-umbrella-beach"></i></div>
                        <div class="progress-bar-text">"그늘막이 있어요"</div>
                        <span data-width="4%"></span>
                    </div>
                </div>
            </div>
        </ul>
         </form>
        <div class="nav2_btnframe">
            <div class="nav2_button">          
                <button type="submit" form="loginForm">예약하기</button>
            </div>

        </div>
        <button class="nav2_toggle" onclick="detail_trans()"><i class="fa-solid fa-caret-left"></i></button>
    </nav>
</body>
</html>