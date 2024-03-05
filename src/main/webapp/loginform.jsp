<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>로그인 페이지</title>
    <!-- 부트스트랩 및 폰트어썸 CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css" rel="stylesheet">
    <!-- Custom CSS -->
    <style>
        body {
            background-image: linear-gradient(to right, #11998e, #38ef7d);
            font-family: 'Nanum Gothic', sans-serif;
            color: #fff;
        }
        .login-container {
            max-width: 400px;
            margin: 150px auto;
            background-color: rgba(255, 255, 255, 0.1);
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0px 0px 10px rgba(0,0,0,0.1);
        }
        .login-heading {
            text-align: center;
            margin-bottom: 40px;
        }
        .login-form {
            margin-bottom: 20px;
        }
        .form-control {
            border: none;
            border-radius: 25px;
            background-color: rgba(255, 255, 255, 0.1);
            color: #fff;
            padding-left: 20px;
            box-shadow: none;
        }
        .form-control:focus {
            background-color: rgba(255, 255, 255, 0.3);
            color: #fff;
            box-shadow: none;
        }
        .btn-login {
            border-radius: 25px;
            padding: 10px 20px;
            background-color: #fff;
            color: #333;
            font-weight: bold;
            transition: all 0.3s ease;
        }
        .btn-login:hover {
            background-color: #f8f9fa;
        }
        .forgot-password {
            text-align: right;
            font-size: 14px;
            color: rgba(255, 255, 255, 0.8);
        }
        .forgot-password:hover {
            color: rgba(255, 255, 255, 1);
        }
        .social-login {
            margin-top: 20px;
            text-align: center;
        }
        .social-login-btn {
            border-radius: 50%;
            width: 40px;
            height: 40px;
            line-height: 40px;
            font-size: 20px;
            margin: 0 5px;
            color: #fff;
            background-color: rgba(255, 255, 255, 0.1);
        }
        .social-login-btn.facebook {
            background-color: #3b5998;
        }
        .social-login-btn.facebook:hover {
            background-color: #2d4373;
        }
        .social-login-btn.google {
            background-color: #dd4b39;
        }
        .social-login-btn.google:hover {
            background-color: #c1351d;
        }
        .social-login-btn.youtube {
            background-color: #FF0000;
        }
        .social-login-btn.youtube:hover {
            background-color: #D80000;
        }
        .signup-link {
            margin-top: 20px;
            text-align: center;
            color: rgba(255, 255, 255, 0.8);
        }
        .signup-link:hover {
            color: rgba(255, 255, 255, 1);
            text-decoration: none;
        }
    </style>
</head>
<body>
  <div class="container login-container">
    <h2 class="login-heading">로그인</h2>
    <form class="login-form" action="loginProcess.jsp" method="post">
        <div class="form-group">
            <input type="text" class="form-control" name="username" placeholder="아이디" required>
        </div>
        <div class="form-group">
            <input type="password" class="form-control" name="password" placeholder="비밀번호" required>
        </div>
        <button type="submit" class="btn btn-login btn-block">로그인</button>
        <div class="text-right forgot-password">
            <a href="forgotPassword.jsp">비밀번호를 잊으셨나요?</a>
        </div>
    </form>
    <div class="social-login">
        <button type="button" class="social-login-btn facebook"><i class="fab fa-facebook-f"></i></button>
        <button type="button" class="social-login-btn google"><i class="fab fa-google"></i></button>
        <button type="button" class="social-login-btn youtube"><i class="fab fa-youtube"></i></button>
    </div>
    <div class="signup-link">
        계정이 없으신가요? <a href="signup.jsp">회원가입</a>
    </div>
</div>
    <!-- 부트스트랩 및 폰트어썸 JS -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <!-- 폰트어썸 JS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/js/all.min.js"></script>
    <!-- 추가된 기능을 위한 JavaScript -->
    <script>
        // 로그인 버튼 클릭시 애니메이션 효과 추가
        $(document).ready(function(){
            $('.btn-login').click(function(){
                $(this).addClass('animate__animated animate__bounce');
                setTimeout(function(){
                    $('.btn-login').removeClass('animate__animated animate__bounce');
                }, 1000);
            });
        });

        // 비밀번호 강도 검사
        function checkPasswordStrength(password) {
            var strength = 0;
            if (password.length >= 6) {
                strength += 1;
            }
            if (password.match(/[a-z]+/)) {
                strength += 1;
            }
           