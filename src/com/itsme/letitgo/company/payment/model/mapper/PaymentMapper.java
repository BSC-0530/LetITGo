package com.itsme.letitgo.company.payment.model.mapper;

import java.util.List;
import java.util.Map;

import com.itsme.letitgo.company.payment.model.dto.BrowseUsingHistoryDTO;
import com.itsme.letitgo.company.payment.model.dto.ExposureLeftTimeDTO;
import com.itsme.letitgo.company.payment.model.dto.ExposureUsingHistoryDTO;
import com.itsme.letitgo.company.payment.model.dto.HoldingRequestingSkillsDTO;
import com.itsme.letitgo.company.payment.model.dto.PaymentHistoryDTO;
import com.itsme.letitgo.company.payment.model.dto.ProductDTO;
import com.itsme.letitgo.company.payment.model.dto.ReadingLeftNumDTO;
import com.itsme.letitgo.company.payment.model.dto.RefundHistoryDTO;
import com.itsme.letitgo.company.payment.model.dto.RefundRequestProductDTO;

public interface PaymentMapper {

	/* 상품목록 조회 */
	List<ProductDTO> selectProductList();
	
	 /* 결제내역 조회 */
	List<PaymentHistoryDTO> selectPaymentHistory(int memNo);

	/* 보유중인 이력서열람권 조회 */
	List<ReadingLeftNumDTO> selectResumeBrowsingNum(int memNo);

	/* 노출권 사용중인 공고 조회 */
	int selectExposureUsingPostNum(int memNo);

	/* 노출권 잔여시간 조회 */
	List<ExposureLeftTimeDTO> selectExposureRestTime(int memNo);

	/* 열람권 사용내역 조회 */
	List<BrowseUsingHistoryDTO> selectBrowseUsingHistroyList(int memNo);

	/* 이력서 내 모든 보유기술 조회*/
	List<HoldingRequestingSkillsDTO> selectHoldingSkillsList();

	/* 노출권 사용이력 */
	List<ExposureUsingHistoryDTO> selectExposureUsingHistoryList(int memNo);

	/* 노촐권 사용중인 공고의 요구기술 */
	List<HoldingRequestingSkillsDTO> selectRequestingSkillsList();

	/* 결제번호, 회원번호를 통해서 환불할 상품정보를 받아옴 */
	RefundRequestProductDTO selectRefundRequestProduct(Map<String, Object> map);

	/* 환불요청을 함으로 결제상태변경이력 추가 */
	int insertRefundMessage(Map<String, Object> map);

	/* 환불요청을 함으로써 결제내역 변경 */
	int updatePaymentStatus(Map<String, Object> map);
	
	/* 환불내역 가져오기 */
	List<RefundHistoryDTO> selectRefundHistory(int memNo);

	/* 결제상태변경이력을 환불요쳥취소로 변경 */
	int updateRefundRequest(int payChangeNo);

	/* 결제내역을 변경하기위해 결제변경내역번호를 통해서 결제번호를 조회함 */
	int selectPayNo(int payChangeNo);
	
	/* 결제내역을 결제완료로 변경 */
	int updateRefundRequest2(int payNo);
	
	/* 상품이름으로 상품정보 가져오기 */
	ProductDTO SelectProduct(String productName);

	 /* 열람권 결제내역 추가*/
	int insertPaymentReadingRightHistory(Map<String, Object> map);
	
	/* 열람권  회원보유상품 추가 */
	int insertHoldingReadingRightProduct(Map<String, Object> map);

	/* 노출권 결제내역 추가*/
	int insertPaymentExposureRightHistory(Map<String, Object> map);

	/* 노출권 회원보유상품 추가 */
	int insertHoldingExposureRightProduct(Map<String, Object> map);

	/* 결제변경번호를 통해서 변경사유를 가져옴. */
	String selectRefundMessage(int payChangeNo);

}
