<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
#modalTop{
  border-top: 6px solid RGB(112, 217, 223);
}


#bookMarkImg>img{
    width: 35x;
    height: 35px;
    border-radius: 50%;
}

.folderInfo{
  height: 30px;
}

.folderInfo>.folderName,.place{
  height: 5px;
}

#bookMarkWrap{
  margin: auto;
  margin-bottom: 10px;
}

#folderAdd{
  background-color: RGB(112, 217, 223);
  border: none;
  height: 35px;
  text-align: center;

}

#folderWrap{
  cursor: pointer;
}
</style>
</head>
<body>
<jsp:include page="../common/header.jsp"/>


<div id="bookMark" tabindex="-1" role="dialog" aria-label="signupModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-sm modal-dialog-centered" role="document">
     <div class="modal-subin">
      <div class="modal-content" style="width:360px;">
        <div class="modal-header rounded" id="modalTop">
          <h3 class="modal-title text-uppercase font-weight-bold">내 즐겨찾기 폴더</h3>
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>

        <div class="modal-body">
            <h4 style="font-weight: bold;">전체폴더 N</h4>

            <button class="btn btn-facebook text-uppercase text-white" id="folderAdd">새폴더추가</button>
            <div id="folderContainer">
            <div style="height: 1px;">
              <hr>
            </div>
              </div>
        </div>
      </div>
    </div>
  </div>
  </div>
      




</div>
</div>
</div>
</div>
</div>

</div>
<!-- 폴더 템플릿 -->
<template id="folderTemplate">
  <div id="folderWrap">
  <div class="mb-3" id="bookMarkImg" style="float: left; height: 40px;">
    <img src="${pageContext.request.contextPath}/resources/img/bookMark.png" style="width: 35x; height: 35px; border-radius: 50%;">
  </div>
  <div class="folderInfo">
    <div class="folderName">
      <h5 style="padding-left: 45px; margin-top: 15px;">폴더명</h5>
    </div>
    <div class="place">
      <p style="padding-left: 40px; margin-top: 15px;">📍n(개)</p>
    </div>
  </div>
  <div style="height: 1px;">
    <hr>
  </div>
</div>
</template>
</div>
</div>
</section>
</div>

<script>
	document.getElementById("folderAdd").addEventListener("click", function() {
	  // 새로운 폴더를 위한 템플릿 엘리먼트 복제
	  const folderTemplate = document.getElementById("folderTemplate");
	  const newFolder = folderTemplate.content.cloneNode(true);
	
	  // 폴더명을 입력받는 프롬프트 창 표시
	  const folderName = prompt("폴더명을 입력하세요.");
	  newFolder.querySelector(".folderName h5").textContent = folderName;
	
	  // 새로운 폴더를 폴더 컨테이너에 추가
	  const folderContainer = document.getElementById("folderContainer");
	  folderContainer.appendChild(newFolder);
	});
</script>
<jsp:include page="../common/footer.jsp"/>
</body>
</html>