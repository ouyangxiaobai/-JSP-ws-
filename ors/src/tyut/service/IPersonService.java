package tyut.service;

import java.util.List;
import java.util.Map;

import tyut.bean.Company;
import tyut.bean.Person;

public interface IPersonService {
	public boolean register(Person person);
	public Person login(String username,String password);
	public void update(Person person);
	public void publish(Person person);
	public void deleteResume(Person person);
	public List<Person> listAllPersons();
	public List<Person> listAllPersonsByParams(Map<String, String> map);
	public Person query(long id);
}
