package tyut.service;

import java.util.List;

import tyut.bean.Company;
import tyut.bean.Employee;
import tyut.bean.Person;

public interface IEmployeeService {
	public void insert(long p_id,long c_id);
	public Employee query(long p_id,long c_id);
	public List<Person> candidateQuery(long c_id);
	public List<Company> companyQuery(long p_id);
	public void update(long isAgreed,long id);
}
