package service;

import java.util.List;

import pojo.Theme;
import util.Page;

/*
 * ����ҵ���ӿ�
 */
public interface IThemeService {
	int add(Theme theme);

	int delete(int theid);

	List getAll();

	Page query(String key, Page page);
}
