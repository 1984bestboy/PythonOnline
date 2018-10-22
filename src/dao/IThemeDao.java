package dao;

import java.util.List;

import pojo.Theme;
import util.Page;

/**
 * �������ݷ��ʽӿ�
 * @author Administrator
 *
 */
public interface IThemeDao {
	
	/**
	 * ��������
	 * @param theme
	 * @return
	 */
	int add(Theme theme);
	
	/**
	 * ɾ������
	 * @param theid
	 * @return
	 */
	int delete(int theid);
	
	/**
	 * ��ѯȫ������
	 * @return
	 */
	List getAll();
	
	/**
	 * ���ݹؼ��ֲ�ѯ������Ϣ
	 * @param key
	 * @param page
	 * @return
	 */
	Page query(String key,Page page);
}
