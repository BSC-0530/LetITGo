package com.itsme.letitgo.common.mybatis;



import org.apache.ibatis.datasource.pooled.PooledDataSource;
import org.apache.ibatis.mapping.Environment;
import org.apache.ibatis.session.Configuration;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.apache.ibatis.transaction.jdbc.JdbcTransactionFactory;

import com.itsme.letitgo.company.info.model.mapper.CompanyTestMapper;

import com.itsme.letitgo.company.payment.model.mapper.PaymentMapper;
import com.itsme.letitgo.login.model.mapper.MemberMapper;
import com.itsme.letitgo.personal.info.model.mapper.PersonalMemberMapper;
import com.itsme.letitgo.personal.recruit.jobposting.model.mapper.SelectJobPostingMapper;
import com.itsme.letitgo.personal.regist.model.mapper.RegistMemberMapper;
import com.itsme.letitgo.personal.resume.model.mapper.ResumeMapper;


public class Template {
	
	/* configuration.addMapper(매퍼.class); 추가하기 
	 * username, password 설정하기 */
	private static String DRIVER = "net.sf.log4jdbc.DriverSpy";
	private static String URL = "jdbc:log4jdbc:oracle:thin:@tjoeunkn.iptime.org:1521:xe";
	private static String USERNAME = "SEMI_502_TEAM_3";
	private static String PASSWORD = "SEMI_502_TEAM_3";
	
	private static SqlSessionFactory sqlSessionFactory;
	
	public static SqlSession getSqlSession() {
		
		if(sqlSessionFactory == null) {

			Environment environment = new Environment("dev", new JdbcTransactionFactory(), new PooledDataSource(DRIVER, URL, USERNAME, PASSWORD));
			
			Configuration configuration = new Configuration(environment);
			
			configuration.addMapper(CompanyTestMapper.class);

			//configuration.addMapper(PersonalMemberMapper.class);
			


			configuration.addMapper(ResumeMapper.class);
			configuration.addMapper(PaymentMapper.class);
			

			configuration.addMapper(SelectJobPostingMapper.class);
			configuration.addMapper(MemberMapper.class);
//			configuration.addMapper(RegistMemberMapper.class);
			
			sqlSessionFactory = new SqlSessionFactoryBuilder().build(configuration);
		}
		
		return sqlSessionFactory.openSession(false);
	}

}

