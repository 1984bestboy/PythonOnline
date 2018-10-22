package pojo;

import pojo.Admin;
/*
 *  ����Ա��Ϣʵ����
 */

public class Admin implements Cloneable{
	private int id;			// id
	private String name;	// �˺�
	private String pwd;		// ����
	private int authority;	// Ȩ��
	
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
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public int getAuthority() {
		return authority;
	}
	public void setAuthority(int authority) {
		this.authority = authority;
	}
	
	@Override
	public Admin clone() {
		Admin admin = null;
		try{
			admin = (Admin)super.clone();
		} catch (CloneNotSupportedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return admin;
	}
}
