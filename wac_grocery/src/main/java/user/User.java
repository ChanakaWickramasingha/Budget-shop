package user;

public class User {
	private int id;
    private String email;
    private String pw;
	
    
    
    public User(int id, String email, String pw) {
		super();
		this.id = id;
		this.email = email;
		this.pw = pw;
	}
    
    public User( String email, String pw) {
		super();
		this.email = email;
		this.pw = pw;
	}
    
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
    
    

}
