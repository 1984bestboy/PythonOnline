package service.impl;

import dao.IAdminDao;
import dao.impl.AdminDaoImpl;
import pojo.Admin;
import service.IAdminService;

/*
 * ����Աҵ��ʵ����
 */
public class AdminServiceImpl implements IAdminService {
		IAdminDao adminDao= new AdminDaoImpl();
	@Override
	public Admin login(String username, String password) {
		return adminDao.login(username, password);
	}
	@Override
	public int updatepwd(Admin admin) {
		return adminDao.updatepwd(admin);
	}


}
