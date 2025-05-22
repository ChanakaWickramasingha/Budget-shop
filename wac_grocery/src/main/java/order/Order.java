package order;

public class Order {

	private int oid;
	private int uid;
	private String email;
	private String phone;
	private String total;
	private String adress;
	
	public Order(int oid, int uid, String email, String phone, String total, String adress) {
		super();
		this.oid = oid;
		this.uid = uid;
		this.email = email;
		this.phone = phone;
		this.total = total;
		this.adress = adress;
	}

	public Order(int uid, String email, String phone, String total, String adress) {
		super();
		this.uid = uid;
		this.email = email;
		this.phone = phone;
		this.total = total;
		this.adress = adress;
	}

	public int getOid() {
		return oid;
	}

	public void setOid(int oid) {
		this.oid = oid;
	}

	public int getUid() {
		return uid;
	}

	public void setUid(int uid) {
		this.uid = uid;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getTotal() {
		return total;
	}

	public void setTotal(String total) {
		this.total = total;
	}

	public String getAdress() {
		return adress;
	}

	public void setAdress(String adress) {
		this.adress = adress;
	}
	
	
	

}
