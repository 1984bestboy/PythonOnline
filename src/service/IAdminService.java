package service;

import pojo.Admin;


/*
 * ����Աҵ���߼��ӿ�
 */
public interface IAdminService {
	/**
	 * ����Ա��¼
	 * @param name
	 * @param pwd
	 * @return
	 */
	Admin login(String name,String pwd);
	
	/**
	 * �޸�����
	 * @param name
	 * @param pwd
	 * @return
	 */
	int updatepwd(Admin admin);
}
