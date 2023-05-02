<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>

	#enroll{
	    background-color:  RGB(112, 217, 223);
	    border:none;
	    font-size: 16px;
	}
	
	#enrollBtn{
	  background-color: RGB(112, 217, 223);
	  border: none;
	  width: 400px;
	}
	
	
	#modal-body{
	    padding: 25px 25px;
	}
	
	#modalTop{
	  border-top: 6px solid RGB(112, 217, 223);
	}


		
</style>
</head>
<jsp:include page = "../common/header.jsp"/>

<body id="body" class="up-scroll">
	<section class="py-9">
		<div class="container">
		<div class="bg-smoke p-2 p-md-6 pb-6 pb-md-8 mb-9 rounded">
			<div class="row">
				<div class="col-12">
				  <div class="row">
					<div class="col-lg-6" style="margin: auto;">
					  <div class="mb-4" style="padding-top:40px;"  align="center" >
						<h3 class="text-uppercase mb-3">회원가입</h3>
						<p>회원가입을 통해 해당 홈페이지를 이용하실 수 있습니다.</p>
					  </div>

		<form class="" action="index.html" method="post">
		<div class="mb-3"  style="width: 400px; margin: auto;">
			아이디⭐ <br>
			<input type="text" class="form-control bg-smoke" required placeholder="아이디를 입력해주세요.">
		</div>

		<div class="mb-3" style="width: 400px; margin: auto;">
			이름⭐<br>
			<input type="text" class="form-control bg-smoke" required placeholder="이름">
		</div>

		<div class="mb-3" style="width: 400px; margin: auto;">
			비밀번호⭐<br>
			<input type="password" class="form-control bg-smoke" required placeholder="비밀번호">
		</div>

		<div class="mb-3" style="width: 400px; margin: auto;">
			비밀번호 확인⭐<br>
			<input type="password" class="form-control bg-smoke" required placeholder="비밀번호 확인">
			<p>(영문 대소문자/숫자/특수문자중 2가지 이상 조합, 8자~16자)</p>
			</div>

		<div class="mb-3" style="width: 400px; margin: auto;">
			이메일⭐<br>
			<input type="email" class="form-control bg-smoke" required placeholder="이메일을 입력해주세요.">
		</div>

		<div class="mb-3" style="width: 400px; margin: auto;">
			닉네임 <br>
			<input type="text" class="form-control bg-smoke" required placeholder="닉네임을 입력해주세요.">
		</div>

		<div class="mb-3" style="padding-bottom: 15px; width: 400px; margin: auto;">
			성별 <br>
			<input type="radio" name="gender" id="m" value="M">
			<label for="m">남자</label>
			<input type="radio" name="gender" id="f" value="F">
			<label for="f">여자</label>
		</div>

		<div class="mb-3" style="width: 400px; margin: auto;" >
			<h5>이용약관 동의</h5>
			<input type="checkbox" name="agreeAll" id="agreeAll" />
			<label for="agreeAll">약관 전체 동의</label><br />
			<input type="checkbox" name="agree" id="agreeAge" />
			<label for="agreeAge">[필수] 만14세 이상</label><br />
			<input type="checkbox" name="agree" id="agreeTerms" />
			<label for="agreeTerms">[필수] 이용약관 동의</label><br />
			<input type="checkbox" name="agree" id="agreePrivacy"  />
			<label for="agreePrivacy">[필수] 개인정보 수집 및 이용 동의</label><br />
			<input type="checkbox" name="agree" id="agreeMarketing" />
			<label for="agreeMarketing">[선택] 광고성 정보 수신 및 마케팅 활용 동의</label><br />
		</div>

			<script>
			$(document).ready(function() {
				$("#agreeAll").click(function() {
				if($("#agreeAll").is(":checked")) $("input[name=agree]").prop("checked", true);
					else $("input[name=agree]").prop("checked", false);
				});

				$("input[name=agree]").click(function() {
				var total = $("input[name=agree]").length;
				var checked = $("input[name=agree]:checked").length;

				if(total != checked) $("#agreeAll").prop("checked", false);
				else $("#agreeAll").prop("checked", true); 
				});
			});
			</script>

	<div class="d-grid" style="padding-bottom: 40px; width: 400px; margin: auto;">
		<button type="submit" class="btn btn-primary btn-block text-uppercase" disabled id="enrollBtn">가입하기</button>
	</div>
	</form>
	</div>
	</div>
	</div>
	</div>
	</div>
	</div>
</section>
	  
<jsp:include page = "../common/footer.jsp"/>
</body>
</html>