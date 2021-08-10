package com.itsme.letitgo.personal.regist.model.dto;

import java.io.Serializable;
import java.sql.Date;

public class CoMemberDTO implements Serializable{

	

		private String Coid;
		private String Coemail;
		private String Copwd;
		private String CoName;
		private String CoPhone;
		private String CoKinds;
		private Date CoEnrollDate;
		private Integer CoEntYn;
		private Date CoEntDate;
		
		//이따 변수명 coMem으로 시작하게 만들기
		private int memNo;			//기업회원번호
		private String intro;		//회사 소개글
		private String coNo;		//사업자 등록 번호
		private String comName;		//기업 이름
		private String ceoName;     //대표자 이름
		private String address; 	//주소
		private String ComPhone; 	//사업장 전화번호
		private String fax;			//사업장 팩스번호
		private String sectors;		//업종
		private String status;		//업태
		
		public CoMemberDTO() {}

		public CoMemberDTO(String coid, String coemail, String copwd, String coName, String coPhone, String coKinds,
				Date coEnrollDate, Integer coEntYn, Date coEntDate, int memNo, String intro, String coNo, String comName,
				String ceoName, String address, String comPhone, String fax, String sectors, String status) {
			super();
			Coid = coid;
			Coemail = coemail;
			Copwd = copwd;
			CoName = coName;
			CoPhone = coPhone;
			CoKinds = coKinds;
			CoEnrollDate = coEnrollDate;
			CoEntYn = coEntYn;
			CoEntDate = coEntDate;
			this.memNo = memNo;
			this.intro = intro;
			this.coNo = coNo;
			this.comName = comName;
			this.ceoName = ceoName;
			this.address = address;
			ComPhone = comPhone;
			this.fax = fax;
			this.sectors = sectors;
			this.status = status;
		}

		public String getCoid() {
			return Coid;
		}

		public void setCoid(String coid) {
			Coid = coid;
		}

		public String getCoemail() {
			return Coemail;
		}

		public void setCoemail(String coemail) {
			Coemail = coemail;
		}

		public String getCopwd() {
			return Copwd;
		}

		public void setCopwd(String copwd) {
			Copwd = copwd;
		}

		public String getCoName() {
			return CoName;
		}

		public void setCoName(String coName) {
			CoName = coName;
		}

		public String getCoPhone() {
			return CoPhone;
		}

		public void setCoPhone(String coPhone) {
			CoPhone = coPhone;
		}

		public String getCoKinds() {
			return CoKinds;
		}

		public void setCoKinds(String coKinds) {
			CoKinds = coKinds;
		}

		public Date getCoEnrollDate() {
			return CoEnrollDate;
		}

		public void setCoEnrollDate(Date coEnrollDate) {
			CoEnrollDate = coEnrollDate;
		}

		public Integer getCoEntYn() {
			return CoEntYn;
		}

		public void setCoEntYn(Integer coEntYn) {
			CoEntYn = coEntYn;
		}

		public Date getCoEntDate() {
			return CoEntDate;
		}

		public void setCoEntDate(Date coEntDate) {
			CoEntDate = coEntDate;
		}

		public int getMemNo() {
			return memNo;
		}

		public void setMemNo(int memNo) {
			this.memNo = memNo;
		}

		public String getIntro() {
			return intro;
		}

		public void setIntro(String intro) {
			this.intro = intro;
		}

		public String getCoNo() {
			return coNo;
		}

		public void setCoNo(String coNo) {
			this.coNo = coNo;
		}

		public String getComName() {
			return comName;
		}

		public void setComName(String comName) {
			this.comName = comName;
		}

		public String getCeoName() {
			return ceoName;
		}

		public void setCeoName(String ceoName) {
			this.ceoName = ceoName;
		}

		public String getAddress() {
			return address;
		}

		public void setAddress(String address) {
			this.address = address;
		}

		public String getComPhone() {
			return ComPhone;
		}

		public void setComPhone(String comPhone) {
			ComPhone = comPhone;
		}

		public String getFax() {
			return fax;
		}

		public void setFax(String fax) {
			this.fax = fax;
		}

		public String getSectors() {
			return sectors;
		}

		public void setSectors(String sectors) {
			this.sectors = sectors;
		}

		public String getStatus() {
			return status;
		}

		public void setStatus(String status) {
			this.status = status;
		}

		@Override
		public String toString() {
			return "CoMemberDTO [Coid=" + Coid + ", Coemail=" + Coemail + ", Copwd=" + Copwd + ", CoName=" + CoName
					+ ", CoPhone=" + CoPhone + ", CoKinds=" + CoKinds + ", CoEnrollDate=" + CoEnrollDate + ", CoEntYn="
					+ CoEntYn + ", CoEntDate=" + CoEntDate + ", memNo=" + memNo + ", intro=" + intro + ", coNo=" + coNo
					+ ", comName=" + comName + ", ceoName=" + ceoName + ", address=" + address + ", ComPhone=" + ComPhone
					+ ", fax=" + fax + ", sectors=" + sectors + ", status=" + status + "]";
		}

	}
