package com.kh.tripism.partnerBoard.model.vo;

import java.sql.Date;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@NoArgsConstructor
@Getter
@Setter
@ToString
public class PnBoard {
	
	private int postNO;						// 게시글번호
	private int memNo; 						// 회원번호
	private String partnerName;	 			// 글제목	
	private String partnerType;	 			// 여행타입
	private String partnerOriginalImg; 		// 대표이미지 원본이름
	private String partnerChangeImg; 		// 대표이미지 변경이름
	private Date partnerDate; 				// 작성일
	private String partnerViews; 			// 조회수	
	private String partnerContent; 			// 글내용
	private String partnerTime; 			// 여행일정
	private String partnerLocation; 		// 여행지역
	private String partnerNumber; 			// 모집인원
	private String partnerStatus;			// 동행상태
	
}
