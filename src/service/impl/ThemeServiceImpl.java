package service.impl;

import java.util.List;

import dao.IThemeDao;
import dao.impl.ThemeDaoImpl;
import pojo.Theme;
import service.IThemeService;
import util.Page;

public class ThemeServiceImpl implements IThemeService {
		private  IThemeDao themedao= new ThemeDaoImpl();
	@Override
	public int add(Theme theme) {
		return themedao.add(theme);
	}

	@Override
	public int delete(int theid) {
		return themedao.delete(theid);
	}

	@Override
	public List getAll() {
		return themedao.getAll();
	}

	@Override
	public Page query(String key, Page page) {
		return themedao.query(key, page);
	}

}
