package tyut.service.imp;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import tyut.bean.Company;
import tyut.bean.Employee;
import tyut.bean.Person;
import tyut.dao.IEmployeeDao;
import tyut.service.IEmployeeService;
import tyut.tools.MyBatisSqlSessionFactory;

public class IEmployeeServiceImp implements IEmployeeService {

	@Override
	public void insert(long p_id, long c_id) {
		// TODO Auto-generated method stub
		SqlSession sesssion = MyBatisSqlSessionFactory.getSqlSessionFactory();
		IEmployeeDao employeeDao = sesssion.getMapper(IEmployeeDao.class);
		employeeDao.save(p_id, c_id);
		sesssion.commit();
		
	}
	
	@Override
	public Employee query(long p_id, long c_id) {
		// TODO Auto-generated method stub
		SqlSession sesssion = MyBatisSqlSessionFactory.getSqlSessionFactory();
		IEmployeeDao employeeDao = sesssion.getMapper(IEmployeeDao.class);
		Employee employee = employeeDao.findEmployeeByIds(p_id, c_id);
		return employee;
	}

	@Override
	public List<Person> candidateQuery(long c_id) {
		// TODO Auto-generated method stub
		SqlSession sesssion = MyBatisSqlSessionFactory.getSqlSessionFactory();
		IEmployeeDao employeeDao = sesssion.getMapper(IEmployeeDao.class);
		List<Person> persons = employeeDao.findPersonsByCompanyId(c_id);
		return persons;
	}

	@Override
	public void update(long isAgreed,long id) {
		// TODO Auto-generated method stub
		SqlSession sesssion = MyBatisSqlSessionFactory.getSqlSessionFactory();
		IEmployeeDao employeeDao = sesssion.getMapper(IEmployeeDao.class);
		employeeDao.updateisAgreed(isAgreed,id);
		sesssion.commit();
	}

	@Override
	public List<Company> companyQuery(long p_id) {
		// TODO Auto-generated method stub
		SqlSession sesssion = MyBatisSqlSessionFactory.getSqlSessionFactory();
		IEmployeeDao employeeDao = sesssion.getMapper(IEmployeeDao.class);
		List<Company> companys = employeeDao.findCompanysByPersonId(p_id);
		return companys;
	}


}
