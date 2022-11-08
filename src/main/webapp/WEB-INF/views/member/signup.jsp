<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	
<style>

@import url('https://fonts.googleapis.com/css?family=Poppins');

/* BASIC */
 
html { 
  background-color: #5F4B8B !important;
}

body {
  font-family: "Poppins", sans-serif !important;
  height: 100vh !important;
}

a {
  color: #92badd !important;
  display:inline-block !important;
  text-decoration: none !important;
  font-weight: 400 !important;
}

h2 {
  text-align: center !important;
  font-size: 16px !important;
  font-weight: 600 !important;
  text-transform: uppercase !important;
  display:inline-block !important;
  margin: 40px 8px 10px 8px !important; 
  color: #cccccc !important;
}

.nli {
	text-align: center;
	color: black;
}

p {
	color: black;
}


/* STRUCTURE */

.wrapper {
  display: flex !important;
  align-items: center !important;
  flex-direction: column !important; 
  justify-content: center !important;
  width: 100% !important;
  min-height: 100% !important;
  padding: 20px !important;
}

#formContent {
  -webkit-border-radius: 10px 10px 10px 10px !important;
  border-radius: 10px 10px 10px 10px !important;
  background: #fff !important;
  padding: 30px !important;
  width: 90% !important;
  max-width: 450px !important;
  position: relative !important;
  padding: 0px !important;
  -webkit-box-shadow: 0 30px 60px 0 rgba(0,0,0,0.3) !important;
  box-shadow: 0 30px 60px 0 rgba(0,0,0,0.3) !important;
  text-align: center !important;
}

#formFooter {
  background-color: #f6f6f6 !important;
  border-top: 1px solid #dce8f1 !important;
  padding: 25px !important;
  text-align: center !important;
  -webkit-border-radius: 0 0 10px 10px !important;
  border-radius: 0 0 10px 10px !important;
}



/* TABS */

h2.inactive {
  color: #cccccc !important;
}

h2.active {
  color: #0d0d0d !important;
  border-bottom: 2px solid #5fbae9 !important;
}



/* FORM TYPOGRAPHY*/

input[type=button], input[type=submit], input[type=reset]  {
  background-color: #5F4B8B !important;
  border: none !important;
  color: white !important;
  padding: 15px 80px !important;
  text-align: center !important;
  text-decoration: none !important;
  display: inline-block !important;
  text-transform: uppercase !important;
  font-size: 13px !important;
  -webkit-box-shadow: 0 10px 30px 0 rgba(95,186,233,0.4) !important;
  box-shadow: 0 10px 30px 0 rgba(95,186,233,0.4) !important;
  -webkit-border-radius: 5px 5px 5px 5px !important;
  border-radius: 5px 5px 5px 5px !important;
  margin: 5px 20px 10px 20px !important;
  -webkit-transition: all 0.3s ease-in-out !important;
  -moz-transition: all 0.3s ease-in-out !important;
  -ms-transition: all 0.3s ease-in-out !important;
  -o-transition: all 0.3s ease-in-out !important;
  transition: all 0.3s ease-in-out !important;
}

input[type=button]:hover, input[type=submit]:hover, input[type=reset]:hover  {
  background-color: #39ace7 !important;
}

input[type=button]:active, input[type=submit]:active, input[type=reset]:active  {
  -moz-transform: scale(0.95) !important;
  -webkit-transform: scale(0.95) !important;
  -o-transform: scale(0.95) !important;
  -ms-transform: scale(0.95) !important;
  transform: scale(0.95) !important;
}

input[type=text], input[type=password]{
  background-color: #f6f6f6 !important;
  border: none !important;
  color: #0d0d0d !important;
  padding: 15px 32px !important;
  text-align: center !important;
  text-decoration: none !important;
  display: inline-block !important;
  font-size: 16px !important;
  margin: 5px !important;
  width: 85% !important;
  border: 2px solid #f6f6f6 !important;
  -webkit-transition: all 0.5s ease-in-out !important;
  -moz-transition: all 0.5s ease-in-out !important;
  -ms-transition: all 0.5s ease-in-out !important;
  -o-transition: all 0.5s ease-in-out !important;
  transition: all 0.5s ease-in-out !important;
  -webkit-border-radius: 5px 5px 5px 5px !important;
  border-radius: 5px 5px 5px 5px !important;
}

input[type=text]:focus, input[type=password]:focus {
  background-color: #fff !important;
  border-bottom: 2px solid #5fbae9 !important;
}

input[type=text]:placeholder, input[type=password]:placeholder{
  color: #cccccc !important;
}



/* ANIMATIONS */

/* Simple CSS3 Fade-in-down Animation */
.fadeInDown {
  -webkit-animation-name: fadeInDown !important;
  animation-name: fadeInDown !important;
  -webkit-animation-duration: 1s !important;
  animation-duration: 1s !important;
  -webkit-animation-fill-mode: both !important;
  animation-fill-mode: both !important;
}

@-webkit-keyframes fadeInDown {
  0% {
    opacity: 0 !important;
    -webkit-transform: translate3d(0, -100%, 0) !important;
    transform: translate3d(0, -100%, 0) !important;
  }
  100% {
    opacity: 1 !important;
    -webkit-transform: none !important;
    transform: none !important;
  }
}

@keyframes fadeInDown {
  0% {
    opacity: 0;
    -webkit-transform: translate3d(0, -100%, 0) !important;
    transform: translate3d(0, -100%, 0) !important;
  }
  100% {
    opacity: 1 !important;
    -webkit-transform: none !important;
    transform: none !important;
  }
}

/* Simple CSS3 Fade-in Animation */
@-webkit-keyframes fadeIn { from { opacity:0; } to { opacity:1; } }
@-moz-keyframes fadeIn { from { opacity:0; } to { opacity:1; } }
@keyframes fadeIn { from { opacity:0; } to { opacity:1; } }

.fadeIn {
  opacity:0;
  -webkit-animation:fadeIn ease-in 1 !important;
  -moz-animation:fadeIn ease-in 1 !important;
  animation:fadeIn ease-in 1 !important;

  -webkit-animation-fill-mode:forwards !important;
  -moz-animation-fill-mode:forwards !important;
  animation-fill-mode:forwards !important;

  -webkit-animation-duration:1s !important;
  -moz-animation-duration:1s !important;
  animation-duration:1s !important;
}

.fadeIn.first {
  -webkit-animation-delay: 0.4s !important;
  -moz-animation-delay: 0.4s !important;
  animation-delay: 0.4s !important;
}

.fadeIn.second {
  -webkit-animation-delay: 0.6s !important;
  -moz-animation-delay: 0.6s !important;
  animation-delay: 0.6s !important;
}

.fadeIn.third {
  -webkit-animation-delay: 0.8s !important;
  -moz-animation-delay: 0.8s !important;
  animation-delay: 0.8s !important;
}

.fadeIn.fourth {
  -webkit-animation-delay: 1s !important;
  -moz-animation-delay: 1s !important;
  animation-delay: 1s !important;
}

/* Simple CSS3 Fade-in Animation */
.underlineHover:after {
  display: block !important;
  left: 0 !important;
  bottom: -10px !important;
  width: 0 !important;
  height: 2px !important;
  background-color: #56baed !important;
  content: "" !important;
  transition: width 0.2s !important;
}

.underlineHover:hover {
  color: #0d0d0d !important;
}

.underlineHover:hover:after{
  width: 100% !important;
}



/* OTHERS */

*:focus {
    outline: none !important;
} 

#icon {
  width:60% !important;
}

* {
  box-sizing: border-box !important;
}

*{font-family: 'Roboto', sans-serif;}

@keyframes click-wave {
  0% {
    height: 40px;
    width: 40px;
    opacity: 0.35;
    position: relative;
  }
  100% {
    height: 200px;
    width: 200px;
    margin-left: -80px;
    margin-top: -80px;
    opacity: 0;
  }
}

.option-input {
  -webkit-appearance: none;
  -moz-appearance: none;
  -ms-appearance: none;
  -o-appearance: none;
  appearance: none;
  position: relative;
  top: 8px;
  right: 0;
  bottom: 0;
  left: 0;
  height: 40px;
  width: 40px;
  transition: all 0.15s ease-out 0s;
  background: #cbd1d8;
  border: none;
  color: #fff;
  cursor: pointer;
  display: inline-block;
  margin-right: 0.5rem;
  outline: none;
  position: relative;
  z-index: 1000;
}
.option-input:hover {
  background: #9faab7;
}
.option-input:checked {
  background: #40e0d0;
}
.option-input:checked::before {
  height: 40px;
  width: 40px;
  position: absolute;
  content: '✔';
  display: inline-block;
  font-size: 26.66667px;
  text-align: center;
  line-height: 40px;
}
.option-input:checked::after {
  -webkit-animation: click-wave 0.65s;
  -moz-animation: click-wave 0.65s;
  animation: click-wave 0.65s;
  background: #40e0d0;
  content: '';
  display: block;
  position: relative;
  z-index: 100;
}
.option-input.radio {
  border-radius: 50%;
}
.option-input.radio::after {
  border-radius: 50%;
}
body label {
  display: block;
  line-height: 50px;
}

</style>





</head>
<body>

	<%@ include file="../common/headBar.jsp"%>


<div class="wrapper fadeInDown">
  <div id="formContent">
  
    <!-- Tabs Titles -->
    <h2 class="inactive underlineHover"><a href="login.me"> Sign In</a></h2>
    <h2 class="active"><a href="signUp.me">Sign Up</a></h2>

    <!-- Icon -->
    <div class="fadeIn first">
      <img src="${ contextPath }/resources/images/usericons02.gif" id="icon" alt="User Icon" />
    </div>

    <!-- Signup Form -->
    <form action="insert.me" method="POST">
      <input type="text" id="email" class="fadeIn third" name="email" placeholder="* email" required onkeyup="checkSame()">
      <div id="checkSame"></div>
      <input type="button" class="fadeIn fourth" value="이메일 인증" id="emailBtn" onclick="checkMail()">
      <input type="text" id="authNum" class="fadeIn third" name="authNum" placeholder="* 인증번호" required onkeyup="checkAuth()">
      <!-- <input type="button" class="fadeIn fourth" value="이메일 인증" > -->
      <div id="checkCode"></div>
      <input type="hidden" name="authNumOrig" id="authNumOrig" value=""/>
      
      <input type="password" id="user_pwd" class="fadeIn second" class="pass" name="user_pwd" placeholder="* password" required onkeyup="checkPwd()">
      <input type="password" id="user_pwd2" class="fadeIn second" class="pass" name="user_pwd2" placeholder="* password check" required onkeyup="checkPwd()">
      <div id="check"></div>
      <input type="text" id="user_name" class="fadeIn third" name="user_name" placeholder="name">
  	  <input type="text" id="birthday" name="birthday" maxlength="8" class="fadeIn third" placeholder="생년월일 (20180919 형식으로 적어주세요.)">

   <label>
    <input type="radio" class="option-input radio fadeIn second" name="gender" value="F"/>
    F 
    <input type="radio" class="option-input radio fadeIn second" name="gender" value="M"/>
    M
  </label>
  
      <input type="text" id="phone" class="fadeIn second" name="phone" placeholder="phone">
      <input type="text" id="nickname" class="fadeIn second" name="nickname" placeholder="* nickname" required onkeyup="checkNick()">
      <div id="checkName"></div>
      <input type="button" onclick="return check()" class="fadeIn fourth" id="signupBtn" value="회원가입">
      
    </form>

    <!-- Remind Passowrd -->
    <div id="formFooter">
      <a class="underlineHover" href="#">Forgot Password?</a>
    </div>

<script>

//이메일과 비밀번호가 맞지 않을 경우 가입버튼 비활성화를 위한 변수 설정
var emailCheck = 0;
var authCheck = 0;
var pwdCheck = 0;
var nickCheck = 0;


//이메일 중복 확인
function checkSame(){
	
var email = $("#email").val();
	
	if(email==""){
		document.getElementById('checkSame').innerHTML = "<span style='color: red;'> 메일을 입력해 주세요. </span>"
	}
	
	$.ajax({
		data : {
			email:email
		},
		url: "checkSame.me",
		success: function(data){
			
			
			 if (data == 1){
				document.getElementById('checkSame').innerHTML = "<span style='color: red;'> 중복되는 이메일입니다. 다른 이메일을 입력해주세요.  </span>"
				emailCheck = 0;
			} else if (data == 0){
				document.getElementById('checkSame').innerHTML = "<span style='color: green;'> 사용 가능한 이메일입니다. </span>"
				emailCheck = 1;
			}
		}
	});
}


//유저 이메일로 인증번호 발송~~
function checkMail(){
	 
	var email = $("#email").val();
	var count = 0;
	
	if(email == ""){
		alert("메일을 입력해 주세요.");
		return false;
	}
	
	if(emailCheck == 1){
	$.ajax({
		url:"checkMail.me",
		type:"post",
		data:{email:email},
		success:function(data){
			alert("이메일 인증 번호가 발급되었습니다. 이메일을 확인해주세요.");
			authNumOrig = data;	
			
			}
	});
	} else {
		alert("이미 같은 이메일로 가입한 이력이 있습니다. 다른 이메일을 사용해 주세요.");
	}
}

//인증 번호 확인 절차
  function checkAuth(){
	
	var authNum = $("#authNum").val();
	
	console.log(authNumOrig);
	
	if(authNum != "" && authNum != authNumOrig){
		document.getElementById('checkCode').innerHTML = "<span style='color: red;'>인증번호가 일치하지 않습니다.</span>"
	} else if (authNum != "" && authNum == authNumOrig){
		document.getElementById('checkCode').innerHTML = "<span style='color: green;'>인증번호가 일치합니다.</span>"
		authCheck = 1;
	}
	
} 



//재입력 비밀번호 체크하여 가입버튼 비활성화 또는 맞지않음을 알림.
function checkPwd() {
    var input = $('#user_pwd').val();
    var reinput = $('#user_pwd2').val();
    
    if(reinput != "" && input == reinput){
    	document.getElementById('check').innerHTML = "<span style='color: green;'>비밀번호가 일치합니다.</span>"
    	pwdCheck = 1;
    } else if(reinput != "" && input != reinput){
    	document.getElementById('check').innerHTML = "<span style='color: red;'>비밀번호가 일치하지 않습니다.</span>"
    }
    
    
}

//닉네임 중복 확인
function checkNick(){
	
	var nickname = $("#nickname").val();
	
	if(nickname==""){
		document.getElementById('checkName').innerHTML = "<span style='color: red;'> 닉네임을 입력해 주세요. </span>"
	}
	
	$.ajax({
		data : {
			nickname:nickname
		},
		url: "checkNick.me",
		success: function(data){
			
			console.log("닉네임 data: " + data);
			
			 if (data == '1'){
				document.getElementById('checkName').innerHTML = "<span style='color: red;'> 중복되는 닉네임입니다. 다른 닉네임을 입력해주세요.  </span>"
			} else if (data == '0'){
				document.getElementById('checkName').innerHTML = "<span style='color: green;'> 사용 가능한 닉네임입니다. </span>"
				nickCheck = 1;
			}
		}
	});
	
	
}


function check(){
	
	if(emailCheck == 1 && nickCheck == 1 && authCheck == 1 && pwdCheck == 1){
		$("#signupBtn").attr("type", "submit");
	} else {
		alert("조건을 충족하지 않으셨습니다.");
	}
	
	
}




</script>



  </div>
</div>








</body>
</html>