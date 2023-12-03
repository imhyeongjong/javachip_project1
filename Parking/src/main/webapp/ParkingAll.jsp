<%@page import="model.PARKING"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./style.css">
    <script src="main.js" defer></script>
    <script src="https://kit.fontawesome.com/10601bc38f.js" crossorigin="anonymous"></script>
    <title>Document</title>
</head>

<body>
    <% PARKING parking = (PARKING)session.getAttribute("Parking"); %>
    <nav class="nav2">
        <ul class="nav2_center">
            <li class="nav2_searchbox">
                <button class="nav2_input--button"><i class="fa-solid fa-magnifying-glass"></i></button>
                <input type="text" class="nav2_input--text" placeholder="주차장 검색"autocomplete='off'>
            </li>
        </ul>
        <ul class="nav2_imgbox">
            <div class="nav2_img">
                <img src="./img/img_present03_fix2.jpg">
            </div>
        </ul>

        <ul class="nav2_infobox">
        <!-- 주차장 이름이 들어 가는 곳 -->
            <li class="nav2_name">
                <span>주차장 명 : <%=parking.getP_PLACE() %></span>
            </li>
            
            <!-- 현재 주차 가능 -->
            <li class="nav2_info">
                <span> 주차 가능 : <%=parking.getP_YN() %></span>
            </li>
            
            <!-- 상세정보 들어 가는 곳 -->
            <li class="nav2_info">
                <span>상세정보 : <%=parking.getP_INFO() %></span>
            </li>
            
            <!-- 주소 -->
            <li class="nav2_info">
                <span>주소 : <%=parking.getP_ADDRESS() %></span>
            </li>
            
            <!-- 주차장 구분 -->
            <li class="nav2_info">
                <span>주차장 구분 <%=parking.getP_TYPE() %></span>
            </li>
            
            <!-- 운영시간 -->
            <li class="nav2_info">
                <span> 운영시간 : <%=parking.getP_TIME() %></span>
            </li>
            
            <!-- 주차 수용 대수 -->
            <li class="nav2_info">
                <span> 주차 수용 대수 : <%=parking.getP_FULL() %></span>
            </li>
            
            <!-- 주차 가능 대수 -->
            <li class="nav2_info">
                <span> 주차 가능 대수 : <%=parking.getP_POS() %></span>
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
        <div class="nav2_btnframe">
            <div class="nav2_button">
                <button>예약하기</button>
            </div>

        </div>
    </nav>
    <button class="nav2_toggle"><i class="fa-solid fa-caret-left"></i></button>

</body>

</html>