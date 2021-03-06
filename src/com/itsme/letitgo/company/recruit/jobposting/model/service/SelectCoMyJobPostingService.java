package com.itsme.letitgo.company.recruit.jobposting.model.service;

import static com.itsme.letitgo.common.mybatis.Template.getSqlSession;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.itsme.letitgo.company.recruit.jobposting.model.dto.ExposureProductDTO;
import com.itsme.letitgo.company.recruit.jobposting.model.dto.JpSkillsDTO;
import com.itsme.letitgo.company.recruit.jobposting.model.dto.RequestJobPostingDTO;
import com.itsme.letitgo.company.recruit.jobposting.model.dto.SelectCoMyJobPostingDTO;
import com.itsme.letitgo.company.recruit.jobposting.model.dto.UseExposureProductDTO;
import com.itsme.letitgo.company.recruit.jobposting.model.mapper.SelectCoMyJobPostingMapper;


public class SelectCoMyJobPostingService {

	public Map<String, List<Object>> selectMyJobPosting(SelectCoMyJobPostingDTO selectCoMyJobPostingDTO) {
		
		SqlSession session = getSqlSession();
		
		SelectCoMyJobPostingMapper mapper = session.getMapper(SelectCoMyJobPostingMapper.class);
		
		/* 전체공고, 진행중인 공고, 요청중인 공고 조회 */
		Map<String, List<Object>> selectJobPosting = new HashMap<>();
		List<Object> allJobPosting = mapper.selectCoMyJobPosting(selectCoMyJobPostingDTO);
		List<Object> recruitingJopPosting = mapper.selectRecruitingMyJobPosting(selectCoMyJobPostingDTO);
		List<Object> requestJobPosting = mapper.selectRequestMyJobPosting(selectCoMyJobPostingDTO);
		
		selectJobPosting.put("allJobPosting", allJobPosting);
		selectJobPosting.put("recruitingJopPosting", recruitingJopPosting);
		selectJobPosting.put("requestJobPosting", requestJobPosting);
		
		session.close();
		
		return selectJobPosting;
	}

	public Map<String, List<Object>> selectRecruitOption() {
		
		SqlSession session = getSqlSession();
		
		SelectCoMyJobPostingMapper mapper = session.getMapper(SelectCoMyJobPostingMapper.class);
		
		/* 공고 등록 화면에 출력을 위해 DB에 있는 직무, 스킬 카테고리 조회  */
		List<Object> jobNameList = mapper.selectJobName();
		List<Object> skillsCategoryList = mapper.selectSkillsCategory();
		
		/* 조회한 List를 map에 담아서 리턴 */
		Map<String, List<Object>> recruitOption = new HashMap<>();
		recruitOption.put("jobNameList", jobNameList);
		recruitOption.put("skillsCategoryList", skillsCategoryList);

		session.close();
				
		return recruitOption;
	}

	public boolean RequestInsertJobPosting(RequestJobPostingDTO dto) {
		
		SqlSession session = getSqlSession();
		
		SelectCoMyJobPostingMapper mapper = session.getMapper(SelectCoMyJobPostingMapper.class);
		
		// TBL_JOB_POSTING에 insert한 후 결과 리턴 받음 
		int result1 = mapper.insertJobPosting(dto);
		int result2 = 0;
		int result3 = 0;
		System.out.println("insert한 jobPostNo : " + dto.getJobPostNo());
		
		
		if(result1 > 0) {
			
			JpSkillsDTO skillsDTO = new JpSkillsDTO();
			
			// TBL_JOB_POSTING_REQ_SKILLS에 가져온 skills 모두를 insert
			result2 = 0;
			for(int skillsNo : dto.getSkillsCodeList()) {
				// 위에서 insert한 getJobPostNo를 이용해 그 채용공고에 해당하는 요구 스킬 insert 하기 위해 dto에 담아준다.
				skillsDTO.setJobPostNo(dto.getJobPostNo());
				skillsDTO.setSkillsNo(skillsNo);
				
				// insert 결과를 모두 result2에 합
				result2 += mapper.insertSkills(skillsDTO);
				
			}
			// result2의 결과가 list의 사이즈보다 크면 모두 insert 성공
			// 이때 TBL_JOB_POSTING_APP_HISTORY에 insert
			if(result2 >= dto.getSkillsCodeList().size()) {
				
				result3 = mapper.insertJobPostingAppHistory(dto.getJobPostNo());
				
				if(result3 > 0) {
					
					session.commit();
				}
			}
			
		} else {
			session.rollback();
		}
		
		session.close();
		
		
		return result3 > 0? true : false;
	}
	public boolean RequestUpdateJobPosting(RequestJobPostingDTO dto) {
		
		SqlSession session = getSqlSession();
		
		SelectCoMyJobPostingMapper mapper = session.getMapper(SelectCoMyJobPostingMapper.class);
		
		/* TBL_JOB_POSTING에 insert한 후 결과 리턴 받음 */ 
		int result1 = mapper.insertJobPosting(dto);
		int result2 = 0;
		int result3 = 0;
		
		if(result1 > 0) {
			
			JpSkillsDTO skillsDTO = new JpSkillsDTO();
			
			/* TBL_JOB_POSTING_REQ_SKILLS에 가져온 skills 모두를 insert */
			result2 = 0;
			for(int skillsNo : dto.getSkillsCodeList()) {
				
				/* 위에서 insert한 getJobPostNo를 이용해 그 채용공고에 해당하는 요구 스킬 insert 하기 위해 dto에 담아준다. */
				skillsDTO.setJobPostNo(dto.getJobPostNo());
				skillsDTO.setSkillsNo(skillsNo);
				
				/* insert 결과를 모두 result2에 합 */
				result2 += mapper.insertSkills(skillsDTO);
				
			}
			
			/* 
			 * result2의 결과가 list의 사이즈보다 크면 모두 insert 성공 
			 * 이때 TBL_JOB_POSTING_APP_HISTORY에 insert
			 * */
			if(result2 >= dto.getSkillsCodeList().size()) {
				
				result3 = mapper.updateJobPostingAppHistory(dto);
				
				if(result3 > 0) {
					
					session.commit();
				}
			}
		} else {
			session.rollback();
		}
		
		session.close();
		
		return result3 > 0? true : false;
	}

	public SelectCoMyJobPostingDTO updateRecruit(int jobPostNo) {
		
		SqlSession session = getSqlSession();
		
		SelectCoMyJobPostingMapper mapper = session.getMapper(SelectCoMyJobPostingMapper.class);
		
		
		SelectCoMyJobPostingDTO dto = mapper.updateRecruit(jobPostNo);
		
		session.close();
		
		
		return dto;
	}

	public ArrayList<JpSkillsDTO> selectSkillsFromCategory(int categoryNo) {

		SqlSession session = getSqlSession();
		
		SelectCoMyJobPostingMapper mapper = session.getMapper(SelectCoMyJobPostingMapper.class);
		
		ArrayList<JpSkillsDTO> skills = mapper.selectSkillsFromCategory(categoryNo);
		

		return skills;
	}

	public String selectJobName(int jobNo) {
		
		SqlSession session = getSqlSession();
		
		SelectCoMyJobPostingMapper mapper = session.getMapper(SelectCoMyJobPostingMapper.class);
		
		String jobName = mapper.selectJobNameFromJobNo(jobNo);
		 
		return jobName;
	}

	public List<ExposureProductDTO> selectExposureProduct(int memNo) {
		
		SqlSession session = getSqlSession();
		
		SelectCoMyJobPostingMapper mapper = session.getMapper(SelectCoMyJobPostingMapper.class);
		
		List<ExposureProductDTO> exposureProduct = mapper.selectExposureProduct(memNo);
		
		session.close();
		
		return exposureProduct;
	}

	public boolean selectExposureHistory(UseExposureProductDTO dto) {
		
		SqlSession session = getSqlSession();
		
		SelectCoMyJobPostingMapper mapper = session.getMapper(SelectCoMyJobPostingMapper.class);
		
		int result = mapper.selectExposureHistory(dto);
		
		if(result > 0) {
			session.commit();
		} else {
			session.rollback();
		}
		session.close();
		
		return result > 0? true : false;
	}

	public int updateExposureUsageHistory(UseExposureProductDTO dto) {
		SqlSession session = getSqlSession();
		
		SelectCoMyJobPostingMapper mapper = session.getMapper(SelectCoMyJobPostingMapper.class);
		
		int result = mapper.updateExposureUsageHistory(dto);
		
		if(result > 0) {
			session.commit();
		} else {
			session.rollback();
		}
		return result;
	}

	public int insertExposureUsageHistory(UseExposureProductDTO dto) {
		SqlSession session = getSqlSession();
		
		SelectCoMyJobPostingMapper mapper = session.getMapper(SelectCoMyJobPostingMapper.class);
		
		int result = mapper.insertExposureUsageHistory(dto);
		
		if(result > 0) {
			session.commit();
		} else {
			session.rollback();
		}
		return result;
	}

	public Integer selectExposureRestTime(UseExposureProductDTO dto) {
		SqlSession session = getSqlSession();
		
		SelectCoMyJobPostingMapper mapper = session.getMapper(SelectCoMyJobPostingMapper.class);
		
		Integer restTime = mapper.selectExposureRestTime(dto);
		
		session.close();
		
		return restTime;
	}

	public boolean updateMemberHoldingProduct(UseExposureProductDTO dto) {
		SqlSession session = getSqlSession();
		
		SelectCoMyJobPostingMapper mapper = session.getMapper(SelectCoMyJobPostingMapper.class);
		
		int result = mapper.updateMemberHoldingProduct(dto);
		
		if(result > 0) {
			session.commit();
		} else {
			session.rollback();
		}
		session.close();
	
		return result > 0? true : false;
		
	}

	public Map<String, String> selectFilePath(int memNo) {
		
		SqlSession session = getSqlSession();
		
		SelectCoMyJobPostingMapper mapper = session.getMapper(SelectCoMyJobPostingMapper.class);
		
		String titlePath = mapper.selectTitleFilePath(memNo);
		String logoPath = mapper.selectLogoFilePath(memNo);
		
		Map<String, String> filePath = new HashMap<>();
		
		filePath.put("titlePath", titlePath);
		filePath.put("logoPath", logoPath);
		
		
		return filePath;
	}

	
}
