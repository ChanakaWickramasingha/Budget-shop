package cart;

public class Cart {

	private int id;
	private int uid;
	private String item;
	private String itemid;
	private String qty;
	private String iprice;
	
	public Cart(int id, int uid, String item, String itemid, String qty, String iprice) {
		super();
		this.id = id;
		this.uid = uid;
		this.item = item;
		this.itemid = itemid;
		this.qty = qty;
		this.iprice = iprice;
	}

	public Cart(int uid, String item, String itemid, String qty, String iprice) {
		super();
		this.uid = uid;
		this.item = item;
		this.itemid = itemid;
		this.qty = qty;
		this.iprice = iprice;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getUid() {
		return uid;
	}

	public void setUid(int uid) {
		this.uid = uid;
	}

	public String getItem() {
		return item;
	}

	public void setItem(String item) {
		this.item = item;
	}

	public String getItemid() {
		return itemid;
	}

	public void setItemid(String itemid) {
		this.itemid = itemid;
	}

	public String getQty() {
		return qty;
	}

	public void setQty(String qty) {
		this.qty = qty;
	}

	public String getIprice() {
		return iprice;
	}

	public void setIprice(String iprice) {
		this.iprice = iprice;
	}
	
	
	
	
	
	

}
