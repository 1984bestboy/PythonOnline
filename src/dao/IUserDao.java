package dao;

import pojo.User;
import util.Page;

public interface IUserDao {
	int add(User user);
	int update(User user);
	User query(String username, String pw);
	Page queryByName(String username, Page page);
	/**
	 * �����û�״̬
	 * @param userid
	 * @param state
	 * @return
	 */
	int updateState(int userid, int state);
	/**
	 * �����û�����
	 * @param user
	 * @return
	 */
	int updatePw(User user);
	/**
	 * ��֤�û����Ƿ����
	 * @param username �û���
	 * @return  true������ false��������
	 */
    boolean isExist(String username);
}
