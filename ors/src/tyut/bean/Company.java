package tyut.bean;

import java.util.Date;


public class Company {
	private Long id;
	private String username;
	private String password;
	private String name;
	private String phone;
	private String email;
	private String location;
	private String trade;
	private String salary;
	private String tip;
	private Date pubtime;
	
	public Company(Long id, String username, String password, String name, String phone, String email, String location,
			String trade, String salary, String tip, Date pubtime) {
		super();
		this.id = id;
		this.username = username;
		this.password = password;
		this.name = name;
		this.phone = phone;
		this.email = email;
		this.location = location;
		this.trade = trade;
		this.salary = salary;
		this.tip = tip;
		this.pubtime = pubtime;
	}
	public Company(String username, String password, String name, String phone, String email, String location,
			String trade, String salary, String tip) {
		super();
		this.username = username;
		this.password = password;
		this.name = name;
		this.phone = phone;
		this.email = email;
		this.location = location;
		this.trade = trade;
		this.salary = salary;
		this.tip = tip;
	}
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public String getTrade() {
		return trade;
	}
	public void setTrade(String trade) {
		this.trade = trade;
	}
	public String getSalary() {
		return salary;
	}
	public void setSalary(String salary) {
		this.salary = salary;
	}
	public String getTip() {
		return tip;
	}
	public void setTip(String tip) {
		this.tip = tip;
	}
	public Date getPubtime() {
		return pubtime;
	}
	public void setPubtime(Date pubtime) {
		this.pubtime = pubtime;
	}
	public Company() {
		super();
	}
	
}
