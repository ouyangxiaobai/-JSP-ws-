package tyut.service.imp;


import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import tyut.bean.Person;
import tyut.dao.IPersonDao;
import tyut.service.IPersonService;
import tyut.tools.MyBatisSqlSessionFactory;

public class IPersonServiceImp implements IPersonService {

	@Override
	public boolean register(Person person) {
		// TODO Auto-generated method stub
		SqlSession session = MyBatisSqlSessionFactory.getSqlSessionFactory();
		IPersonDao personDao = session.getMapper(IPersonDao.class);
		Person p = personDao.findPersonByName(person.getUsername());
		if(p==null){
			personDao.savePerson(person);
			session.commit();
			return true;
		}else{
			return false;
		}
	}

	@Override
	public Person login(String username, String password) {
		// TODO Auto-generated method stub
		SqlSession session = MyBatisSqlSessionFactory.getSqlSessionFactory();
		IPersonDao personDao = session.getMapper(IPersonDao.class);
		Person p = personDao.findPersonByNameAndPassword(username, password);
		if(p!=null){
			return p;
		}else{
			return null;
		}
	}

	@Override
	public void update(Person person) {
		// TODO Auto-generated method stub
		SqlSession session = MyBatisSqlSessionFactory.getSqlSessionFactory();
		IPersonDao personDao = session.getMapper(IPersonDao.class);
		personDao.updatePerson(person);
		session.commit();
	}

	@Override
	public void publish(Person person) {
		// TODO Auto-generated method stub
		SqlSession session = MyBatisSqlSessionFactory.getSqlSessionFactory();
		IPersonDao personDao = session.getMapper(IPersonDao.class);
		personDao.udpatePubtime(person);
		session.commit();
	}

	@Override
	public void deleteResume(Person person) {
		// TODO Auto-generated method stub
		SqlSession session = MyBatisSqlSessionFactory.getSqlSessionFactory();
		IPersonDao personDao = session.getMapper(IPersonDao.class);
		personDao.ZeroPubtime(person);
		session.commit();
	}

	@Override
	public List<Person> listAllPersons() {
		// TODO Auto-generated method stub
		SqlSession session = MyBatisSqlSessionFactory.getSqlSessionFactory();
		IPersonDao personDao = session.getMapper(IPersonDao.class);
		List<Person> persons = personDao.findAllPersons();
		return persons;
	}

	@Override
	public List<Person> listAllPersonsByParams(Map<String, String> map) {
		// TODO Auto-generated method stub
		SqlSession session = MyBatisSqlSessionFactory.getSqlSessionFactory();
		IPersonDao personDao = session.getMapper(IPersonDao.class);
		List<Person> persons = personDao.findPersonsByParams(map);
		return persons;
	}

	@Override
	public Person query(long id) {
		// TODO Auto-generated method stub
		SqlSession session = MyBatisSqlSessionFactory.getSqlSessionFactory();
		IPersonDao personDao = session.getMapper(IPersonDao.class);
		Person person = personDao.findPersonById(id);
		return person;
	}

}
