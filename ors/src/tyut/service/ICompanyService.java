package tyut.service;

import java.util.List;
import java.util.Map;
import tyut.bean.Company;

public interface ICompanyService {
	public List<Company> listAllCompanies();
	public List<Company> listAllCompaniesByParams(Map<String, String> map);
	public boolean register(Company company) ;
	public Company login(String username,String password);
	public void update(Company company);
	public void publish(Company company);
	public void deleteInfo(Company company);
	public Company query(long id);
}
