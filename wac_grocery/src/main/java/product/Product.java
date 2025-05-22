package product;

public class Product {

	private int id;
	private String name;
	private String price;
	private String des;
	private String img;
	private String stock;
	
	
	public Product(String name, String price, String des, String img, String stock) {
		super();
		this.name = name;
		this.price = price;
		this.des = des;
		this.img = img;
		this.stock = stock;
	}
	
	


	public Product(int id, String name, String price, String des, String img, String stock) {
		super();
		this.id = id;
		this.name = name;
		this.price = price;
		this.des = des;
		this.img = img;
		this.stock = stock;
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


	public String getPrice() {
		return price;
	}


	public void setPrice(String price) {
		this.price = price;
	}


	public String getDes() {
		return des;
	}


	public void setDes(String des) {
		this.des = des;
	}


	public String getImg() {
		return img;
	}


	public void setImg(String img) {
		this.img = img;
	}


	public String getStock() {
		return stock;
	}


	public void setStock(String stock) {
		this.stock = stock;
	}
	
	
	
	

}
