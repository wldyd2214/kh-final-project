<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
<meta name="viewport" content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width"/>
<title>Insert title here</title>
<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>

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
  margin: 5px 20px 40px 20px !important;
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

input[type=text], input[type=password] {
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

input[type=text]:placeholder, input[type=password]:placeholder {
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



</style>


</head>
<body>

<%@ include file="../common/headBar.jsp"%>

<div id="blankspace"></div>

<div class="wrapper fadeInDown">
  <div id="formContent">
    <!-- Tabs Titles -->
    <h2 class="active"> Sign In </h2>
    <h2 class="inactive underlineHover"><a href="signUp.me">Sign Up</a></h2>

    <!-- Icon -->
    <div class="fadeIn first">
      <img src="${ contextPath }/resources/images/usericons02.gif" id="icon" alt="User Icon" />
    </div>

    <!-- Login Form --> 
    <div>
    	<form action="loginCheck.me" method="post">
      		<input type="text" id="email" class="fadeIn second" name="email" placeholder="email">
      		<input type="password" id="user_pwd" class="fadeIn third" name="user_pwd" placeholder="password">
      		<input type="submit" class="fadeIn fourth" value="login">
    	</form>
	</div>
	
	
	<div class="fadeIn second">
		<a id="kakao-login-btn"></a>
		<script type='text/javascript'>
    			Kakao.init('faa355a32a09b6c1847ad4dc9444637b');
    			Kakao.Auth.createLoginButton({
      				container: '#kakao-login-btn',
      				success: function(authObj) {
      					var accessToken = Kakao.Auth.getAccessToken();
      					var refreshToken = authObj.refresh_token;
      					console.log("accessToken : " + accessToken);
      					console.log("refreshToken : " + refreshToken);
      					
      				if(accessToken){
        			Kakao.API.request({
          				url: '/v2/user/me',
          				success: function(res) {
            				
            				var str = JSON.stringify(res);
            				var id = str.substring(str.indexOf('id'), str.length);
            				var start_id = id.indexOf(':');
            				var end_id = id.indexOf(',');
            				var idNum = id.substring(start_id + 1, end_id);
            				
            				var email = str.substring(str.indexOf('"email"'), str.length);
            				var start_email = email.indexOf(':');
            				var end_email = email.indexOf(',');
            				var useremail1 = email.substring(start_email + 1, end_email);
            				var useremail = useremail1.substring(1, useremail1.length-1);
            				
            				var nickEnd = str.substring(str.indexOf('nickname'), str.length);
            				var start_nick = nickEnd.indexOf(':');
            				var end_nick = nickEnd.indexOf(',');
            				var nickname = nickEnd.substring(start_nick + 2, end_nick - 1);
            				
            				document.kakaoform.email.value = useremail;
            				document.kakaoform.idNum.value = idNum;
            				document.kakaoform.nickname.value = nickname;
            				document.kakaoform.refreshToken.value = refreshToken;
            				document.kakaoform.submit();
          				},
          				fail: function(error) {
            				alert(JSON.stringify(error));
          				}
        			});
      				}
      			},
      			fail: function(err) {
        			alert(JSON.stringify(err));
      			}
    		});
		</script>
		
		<form action="kakaologin.me" form="post" name="kakaoform">
			<input type="hidden" name="email">
			<input type="hidden" name="idNum">
			<input type="hidden" name="nickname">
			<input type="hidden" name="refreshToken">
		</form>
    </div>
	


    <!-- Remind Passowrd -->
    <div id="formFooter">
      <a class="underlineHover" href="findIdPassword.me">Forgot Password?</a>
    </div>

  </div>
</div>
</body>
</html>