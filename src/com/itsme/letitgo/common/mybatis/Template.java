package com.itsme.letitgo.common.mybatis;



import org.apache.ibatis.datasource.pooled.PooledDataSource;
import org.apache.ibatis.mapping.Environment;
import org.apache.ibatis.session.Configuration;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.apache.ibatis.transaction.jdbc.JdbcTransactionFactory;

import com.itsme.letitgo.admin.board.notice.model.mapper.NoticeMapper;
import com.itsme.letitgo.admin.board.notice.model.mapper.PersonalInfoPolicyMapper;
import com.itsme.letitgo.admin.info.model.mapper.BoxCountMapper;
import com.itsme.letitgo.admin.info.model.mapper.InsertRequestMapper;
import com.itsme.letitgo.admin.info.model.mapper.JoinMapper;
import com.itsme.letitgo.admin.info.model.mapper.MemberWithdrawalMapper;
import com.itsme.letitgo.admin.info.model.mapper.RequestComInfoMapper;
import com.itsme.letitgo.admin.payment.model.mapper.AdminPaymentMapper;
import com.itsme.letitgo.admin.question.model.mapper.AdminInquiryMapper;
import com.itsme.letitgo.admin.recruit.jobposting.model.mapper.AdminJobPostMapper;
import com.itsme.letitgo.admin.resume.model.mapper.JobFieldMapper;
import com.itsme.letitgo.admin.resume.model.mapper.SelfIntroductionItemMapper;
import com.itsme.letitgo.admin.resume.model.mapper.SkillsCategoryMapper;
import com.itsme.letitgo.admin.resume.model.mapper.SkillsMapper;
import com.itsme.letitgo.company.info.model.mapper.CompanyInfoMapper;
import com.itsme.letitgo.company.info.model.mapper.ModifyPassworMapper;
import com.itsme.letitgo.company.payment.model.mapper.PaymentMapper;
import com.itsme.letitgo.company.recruit.applicant.model.mapper.RecruitApplicantMapper;
import com.itsme.letitgo.company.recruit.jobposting.model.mapper.SelectCoMyJobPostingMapper;
import com.itsme.letitgo.company.regist.model.mapper.RegistCoMemberMapper;
import com.itsme.letitgo.company.scout.model.mapper.CompanyScoutMapper;
import com.itsme.letitgo.login.model.mapper.CoMemberWithdrawalYnMapper;
import com.itsme.letitgo.login.model.mapper.MemberLoginMapper;

import com.itsme.letitgo.login.model.mapper.MemberWithdrawalYnMapper;

import com.itsme.letitgo.main.model.mapper.MainPageMapper;

import com.itsme.letitgo.member.board.notice.model.mapper.GuideLineMapper;
import com.itsme.letitgo.personal.info.model.mapper.PersonalInfoMapper;
import com.itsme.letitgo.personal.recruit.apply.model.mapper.PersonalApplyMapper;
import com.itsme.letitgo.personal.recruit.jobposting.model.mapper.SelectJobPostingMapper;
import com.itsme.letitgo.personal.regist.model.mapper.RegistInMemberMapper;
import com.itsme.letitgo.personal.resume.model.mapper.ResumeMapper;
import com.itsme.letitgo.personal.scout.model.mapper.PersonalScoutMapper;


public class Template {
	
	/* configuration.addMapper(??????.class); ???????????? 
	 * username, password ???????????? */
	private static String DRIVER = "net.sf.log4jdbc.DriverSpy";
	private static String URL = "jdbc:log4jdbc:oracle:thin:@tjoeunkn.iptime.org:1521:xe";
	private static String USERNAME = "SEMI_502_TEAM_3";
	private static String PASSWORD = "SEMI_502_TEAM_3";
	
	private static SqlSessionFactory sqlSessionFactory;
	
	public static SqlSession getSqlSession() {
		
		if(sqlSessionFactory == null) {

			Environment environment = new Environment("dev", new JdbcTransactionFactory(), new PooledDataSource(DRIVER, URL, USERNAME, PASSWORD));
			
			Configuration configuration = new Configuration(environment);
			
			configuration.addMapper(CompanyInfoMapper.class);
			configuration.addMapper(CompanyScoutMapper.class);
			configuration.addMapper(AdminInquiryMapper.class);
			configuration.addMapper(NoticeMapper.class);
			configuration.addMapper(RequestComInfoMapper.class);
			configuration.addMapper(BoxCountMapper.class);
			//configuration.addMapper(PersonalMemberMapper.class);
			

			// ??????
			configuration.addMapper(ResumeMapper.class);
			configuration.addMapper(PersonalScoutMapper.class);
			
			//??????
			configuration.addMapper(PaymentMapper.class);
			configuration.addMapper(AdminPaymentMapper.class);
			configuration.addMapper(PersonalInfoMapper.class);
			configuration.addMapper(PersonalApplyMapper.class);
			configuration.addMapper(AdminJobPostMapper.class);
			configuration.addMapper(MemberLoginMapper.class);
			configuration.addMapper(RegistInMemberMapper.class);
			configuration.addMapper(RegistCoMemberMapper.class);

			// ??????
			configuration.addMapper(SelectJobPostingMapper.class);
			configuration.addMapper(SelectCoMyJobPostingMapper.class);
			configuration.addMapper(RecruitApplicantMapper.class);
			configuration.addMapper(MainPageMapper.class);

			//??????

			configuration.addMapper(JoinMapper.class);
			configuration.addMapper(InsertRequestMapper.class);
			configuration.addMapper(ModifyPassworMapper.class);

			
			//?????? ????????? ????????? (????????? ?????????, view????????? ??????????????? ???????????????)
			configuration.addMapper(JobFieldMapper.class);
			configuration.addMapper(SkillsMapper.class);
			configuration.addMapper(SkillsCategoryMapper.class);
			configuration.addMapper(SelfIntroductionItemMapper.class);
			configuration.addMapper(PersonalInfoPolicyMapper.class);
			configuration.addMapper(GuideLineMapper.class);
			configuration.addMapper(MemberWithdrawalMapper.class);
			configuration.addMapper(MemberWithdrawalYnMapper.class);
			configuration.addMapper(CoMemberWithdrawalYnMapper.class);
		  //configuration.addMapper(CheckPwdMapper.class);
			 



			
			sqlSessionFactory = new SqlSessionFactoryBuilder().build(configuration);
		}
		
		return sqlSessionFactory.openSession(false);
	}

}

