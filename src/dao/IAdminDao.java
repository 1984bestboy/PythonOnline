package dao;

import pojo.Admin;
/*
 * ����Ա���ݷ��ʽӿ�
 */
public interface IAdminDao {
	/**
	 * �����û����������ѯ����Ա��Ϣ
	 * @param username �û���
	 * @param password  ����
	 * @return  ����Ա��Ϣ
	 */
	
		Admin login(String username,String password);
		int updatepwd(Admin admin);
		
}
