package tyut.dao;

import java.util.List;
import java.util.Map;
import tyut.bean.Company;

public interface ICompanyDao {
	public List<Company> findAllCompnaies();
	public List<Company> findCompaniesByParams(Map<String, String> map);
	public void saveCompany(Company Company);
	public Company findCompanyByName(String username);
	public Company findCompanyByNameAndPassword(String username,String password);
	public void updateCompany(Company company);
	public void udpatePubtime(Company company);
	public void ZeroPubtime(Company company);
	public Company findCompanyById(long id);
}
