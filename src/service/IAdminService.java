package service;

import pojo.Admin;


/*
 * 管理员业务逻辑接口
 */
public interface IAdminService {
	/**
	 * 管理员登录
	 * @param name
	 * @param pwd
	 * @return
	 */
	Admin login(String name,String pwd);
	
	/**
	 * 修改密码
	 * @param name
	 * @param pwd
	 * @return
	 */
	int updatepwd(Admin admin);
}
