package com.example.demo.vo;

public class MemberVo {
	
	private int member_no;
	private String id;
	private String pwd;
	private String name;
	private String rr_no;
	private String tel;
	private String email;
	
	public int getMember_no() {
		return member_no;
	}
	public void setMember_no(int member_no) {
		this.member_no = member_no;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getRr_no() {
		return rr_no;
	}
	public void setRr_no(String rr_no) {
		this.rr_no = rr_no;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public MemberVo(int member_no, String id, String pwd, String name, String rr_no, String tel, String email) {
		super();
		this.member_no = member_no;
		this.id = id;
		this.pwd = pwd;
		this.name = name;
		this.rr_no = rr_no;
		this.tel = tel;
		this.email = email;
	}
	
	public MemberVo() {
		super();
		// TODO Auto-generated constructor stub
	}

	
}
