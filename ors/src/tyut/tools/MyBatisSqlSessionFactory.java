package tyut.tools;

import java.io.IOException;
import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class MyBatisSqlSessionFactory {
	private static SqlSessionFactory sessionFactory;
	private static SqlSession openSession; 
	public static SqlSession getSqlSessionFactory() {
		if (sessionFactory == null) {
			try {
				InputStream inputStream = Resources.getResourceAsStream("mybatis-config.xml");
				sessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
				openSession= sessionFactory.openSession();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		return openSession;
	}
}
