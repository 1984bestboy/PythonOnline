package dao;

import java.util.List;

import pojo.Theme;
import util.Page;

/**
 * 主题数据访问接口
 * @author Administrator
 *
 */
public interface IThemeDao {
	
	/**
	 * 新增主题
	 * @param theme
	 * @return
	 */
	int add(Theme theme);
	
	/**
	 * 删除主题
	 * @param theid
	 * @return
	 */
	int delete(int theid);
	
	/**
	 * 查询全部主题
	 * @return
	 */
	List getAll();
	
	/**
	 * 根据关键字查询主题信息
	 * @param key
	 * @param page
	 * @return
	 */
	Page query(String key,Page page);
}
