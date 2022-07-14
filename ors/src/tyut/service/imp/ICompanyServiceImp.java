package tyut.service.imp;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import tyut.bean.Company;
import tyut.dao.ICompanyDao;
import tyut.service.ICompanyService;
import tyut.tools.MyBatisSqlSessionFactory;

public class ICompanyServiceImp implements ICompanyService{

	@Override
	public List<Company> listAllCompanies() {
		// TODO Auto-generated method stub
		SqlSession session = MyBatisSqlSessionFactory.getSqlSessionFactory();
		ICompanyDao companyDao = session.getMapper(ICompanyDao.class);
		List<Company> companies = companyDao.findAllCompnaies();
		return companies;
	}

	@Override
	public List<Company> listAllCompaniesByParams(Map<String, String> map) {
		// TODO Auto-generated method stub
		SqlSession session = MyBatisSqlSessionFactory.getSqlSessionFactory();
		ICompanyDao companyDao = session.getMapper(ICompanyDao.class);
		List<Company> companies = companyDao.findCompaniesByParams(map);
		return companies;	
	}

	@Override
	public boolean register(Company company) {
		// TODO Auto-generated method stub
		SqlSession session = MyBatisSqlSessionFactory.getSqlSessionFactory();
		ICompanyDao companyDao = session.getMapper(ICompanyDao.class);
		Company c = companyDao.findCompanyByName(company.getUsername());
		if(c==null){
			companyDao.saveCompany(company);
			session.commit();
			return true;
		}else{
			return false;
		}
	}

	@Override
	public Company login(String username, String password) {
		// TODO Auto-generated method stub
		SqlSession session = MyBatisSqlSessionFactory.getSqlSessionFactory();
		ICompanyDao companyDao = session.getMapper(ICompanyDao.class);
		Company c = companyDao.findCompanyByNameAndPassword(username, password);		
		if(c!=null){
			return c;
		}else{
			return null;
		}
	}

	@Override
	public void update(Company company) {
		// TODO Auto-generated method stub
		SqlSession session = MyBatisSqlSessionFactory.getSqlSessionFactory();
		ICompanyDao companyDao = session.getMapper(ICompanyDao.class);
		companyDao.updateCompany(company);
		session.commit();
	}

	@Override
	public void publish(Company company) {
		// TODO Auto-generated method stub
		SqlSession session = MyBatisSqlSessionFactory.getSqlSessionFactory();
		ICompanyDao companyDao = session.getMapper(ICompanyDao.class);
		companyDao.udpatePubtime(company);
		session.commit();
	}

	@Override
	public void deleteInfo(Company company) {
		// TODO Auto-generated method stub
		SqlSession session = MyBatisSqlSessionFactory.getSqlSessionFactory();
		ICompanyDao companyDao = session.getMapper(ICompanyDao.class);
		companyDao.ZeroPubtime(company);
		session.commit();
	}

	@Override
	public Company query(long id) {
		// TODO Auto-generated method stub
		SqlSession session = MyBatisSqlSessionFactory.getSqlSessionFactory();
		ICompanyDao companyDao = session.getMapper(ICompanyDao.class);
		Company company = companyDao.findCompanyById(id);
		return company;
	}
	
}
