package util;

import java.util.ArrayList;
import java.util.List;

/**
 * ��ҳ�࣬��װ��ҳ������Ϣ����ҳĬ��1
 * @author Administrator
 * @version v1.0
 */
public class Page {
	//��ǰҳ
	private int curPage = 1;
	//��ҳ��
	private int totalPage;
	//���ݿ��¼��
	private int rows;
	//ÿҳ������
	private int pageNumber = 5;
	//Ҫչʾ��List����
	private List data = new ArrayList();
	
	public int getCurPage() {
		return curPage;
	}
	public void setCurPage(int curPage) {
		this.curPage = curPage;
	}
	public int getTotalPage() {
		return totalPage;
	}
	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}
	public int getRows() {
		return rows;
	}
	public void setRows(int rows) {
		this.rows = rows;
	}
	public int getPageNumber() {
		return pageNumber;
	}
	public void setPageNumber(int pageNumber) {
		this.pageNumber = pageNumber;
	}
	public List getData() {
		return data;
	}
	public void setData(List data) {
		this.data = data;
	}
	
}
