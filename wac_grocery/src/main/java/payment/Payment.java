package payment;

public class Payment {

	private  int id;
	private  String type;
	private  String cno;
	private  String exp;
	private  String cvv;
	private String img;
	
	public Payment(int id, String type, String cno, String exp, String cvv, String img) {
		super(); 
		this.id = id;
		this.type = type;
		this.cno = cno;
		this.exp = exp;
		this.cvv = cvv;
		this.img = img;
	}

	public Payment(String type, String cno, String exp, String cvv, String img) {
		super();
		this.type = type;
		this.cno = cno;
		this.exp = exp;
		this.cvv = cvv;
		this.img = img;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getCno() {
		return cno;
	}

	public void setCno(String cno) {
		this.cno = cno;
	}

	public String getExp() {
		return exp;
	}

	public void setExp(String exp) {
		this.exp = exp;
	}

	public String getCvv() {
		return cvv;
	}

	public void setCvv(String cvv) {
		this.cvv = cvv;
	}

	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}
	
	
	
	

}
