package tyut.bean;

import java.util.Date;

public class Person {
	private Long id;
	private String username;
	private String password;
	private String name;
	private String sex;
	private String birthday;
	private String phone;
	private String email;
	private String school;
	private String trade;
	private String salary;
	private String tip;
	private Date pubtime;
	
	public Person() {
		super();
	}
	
	public Person(String username, String password, String name, String sex, String birthday, String phone,
			String email, String school, String trade, String salary, String tip) {
		super();
		this.username = username;
		this.password = password;
		this.name = name;
		this.sex = sex;
		this.birthday = birthday;
		this.phone = phone;
		this.email = email;
		this.school = school;
		this.trade = trade;
		this.salary = salary;
		this.tip = tip;
	}

	public Person(Long id, String username, String password, String name, String sex, String birthday, String phone,
			String email, String school, String trade, String salary, String tip,Date pubtime) {
		super();
		this.id = id;
		this.username = username;
		this.password = password;
		this.name = name;
		this.sex = sex;
		this.birthday = birthday;
		this.phone = phone;
		this.email = email;
		this.school = school;
		this.trade = trade;
		this.salary = salary;
		this.tip = tip;
		this.pubtime = pubtime;
	}

	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getBirthday() {
		return birthday;
	}
	public void setBirthday(String birthday) {
		this.birthday = birthday;
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
	public String getSchool() {
		return school;
	}
	public void setSchool(String school) {
		this.school = school;
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

	public Date getPubtime() {
		return pubtime;
	}

	public void setPubtime(Date pubtime) {
		this.pubtime = pubtime;
	}

	@Override
	public String toString() {
		return "Person [id=" + id + ", username=" + username + ", password=" + password + ", name=" + name + ", sex="
				+ sex + ", birthday=" + birthday + ", phone=" + phone + ", email=" + email + ", school=" + school
				+ ", trade=" + trade + ", salary=" + salary + ", tip=" + tip + ", pubtime=" + pubtime + "]";
	}
	
}
