package service;

import java.util.List;

import pojo.Theme;
import util.Page;

/*
 * 主题业务层接口
 */
public interface IThemeService {
	int add(Theme theme);

	int delete(int theid);

	List getAll();

	Page query(String key, Page page);
}
