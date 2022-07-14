package tyut.bean;

public class Employee {
	private Long id;
	private Long p_id;
	private Long c_id;
	private Long isAgreed;
	
	public Employee() {
		super();
	}
	public Employee(Long p_id, Long c_id) {
		super();
		this.p_id = p_id;
		this.c_id = c_id;
	}
	public Employee(Long id, Long p_id, Long c_id,Long isAgreed) {
		super();
		this.id = id;
		this.p_id = p_id;
		this.c_id = c_id;
		this.isAgreed = isAgreed;
	}
	public Long getIsAgreed() {
		return isAgreed;
	}
	public void setIsAgreed(Long isAgreed) {
		this.isAgreed = isAgreed;
	}
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public Long getP_id() {
		return p_id;
	}
	public void setP_id(Long p_id) {
		this.p_id = p_id;
	}
	public Long getC_id() {
		return c_id;
	}
	public void setC_id(Long c_id) {
		this.c_id = c_id;
	}
	@Override
	public String toString() {
		return "Employee [id=" + id + ", p_id=" + p_id + ", c_id=" + c_id + ", isAgreed=" + isAgreed + "]";
	}
	
}
