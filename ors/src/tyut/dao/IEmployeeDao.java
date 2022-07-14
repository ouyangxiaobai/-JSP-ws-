package tyut.dao;

import java.util.List;
import tyut.bean.Company;
import tyut.bean.Employee;
import tyut.bean.Person;

public interface IEmployeeDao {
	public void save(long p_id,long c_id);
	public Employee findEmployeeByIds(long p_id,long c_id);
	public List<Person> findPersonsByCompanyId(long c_id);
	public List<Company> findCompanysByPersonId(long p_id);
	public void updateisAgreed(long id,long isAgreed);
}
