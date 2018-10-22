package service;

import pojo.User;
import util.Page;

public interface IUserService {
	/**
	 * �û�ע��
	 * @param user
	 * @return
	 */
	int userRegister(User user);
	
	/**
	 * �û���¼
	 * @param username
	 * @param password
	 * @return
	 */
	User userLogin(String username,String password);
	
	/**
	 * �����û���Ϣ
	 * @param user
	 * @return
	 */
	int update(User user);
	
	/**
	 * �����û����ͷ�ҳ��Ϣ��ѯ����
	 * @param username
	 * @param page
	 * @return
	 */
	Page searchByName(String username,Page page);
	
	/**
	 * ɾ����Ϣ
	 * @param userid
	 * @return
	 */
	int deleteUser(int userid);
	
	/**
	 * �ָ�״̬
	 * @param userid
	 * @return
	 */
	int restoreUser(int userid);
	//�޸�����
	int updatePw(User user);

	int modifyUser(int userid, int state);
	/**
	 * ��֤�û����Ƿ����
	 * @param username �û���
	 * @return  true������ false��������
	 */
    boolean isExist(String username);
}

 
