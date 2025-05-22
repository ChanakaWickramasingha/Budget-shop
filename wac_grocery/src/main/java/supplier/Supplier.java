package supplier;

public class Supplier {

	private int id;
	private String name;
	private String email;
	private String phone;
	private String supItem;
	private String img;
	
	
	public Supplier(int id, String name, String email, String phone, String supItem, String img) {
		super();
		this.id = id;
		this.name = name;
		this.email = email;
		this.phone = phone;
		this.supItem = supItem;
		this.img = img;
	}


	public Supplier(String name, String email, String phone, String supItem, String img) {
		super();
		this.name = name;
		this.email = email;
		this.phone = phone;
		this.supItem = supItem;
		this.img = img;
	}


	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
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


	public String getSupItem() {
		return supItem;
	}


	public void setSupItem(String supItem) {
		this.supItem = supItem;
	}


	public String getImg() {
		return img;
	}


	public void setImg(String img) {
		this.img = img;
	}
	
	
}
