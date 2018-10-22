package pojo;

import pojo.MessageCriteria.OrderRuleEnum;

/*
 * ���Ӳ�ѯ����
 */
public class MessageCriteria {
	
	/**
	 * �û�ID
	 */
	private int userid = -1;
	/**
	 * �û���
	 */
	private String username;
	/**
	 * ����ID
	 */
	private int theid = -1;
	/**
	 * ״̬
	 */
	private int state = -1;
	/**
	 * �ؼ��ֲ�ѯ
	 */
	private String key;
	/**
	 * �������
	 */
	private OrderRuleEnum orderRule = OrderRuleEnum.ORDER_BY_ACCESS_COUNT;
	/**
	 * ������
	 */
	private boolean asc = false;
	
	public int getUserid() {
		return userid;
	}
	public void setUserid(int userid) {
		this.userid = userid;
	}
	
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public int getTheid() {
		return theid;
	}
	public void setTheid(int theid) {
		this.theid = theid;
	}
	public int getState() {
		return state;
	}
	public void setState(int state) {
		this.state = state;
	}
	public String getKey() {
		return key;
	}
	public void setKey(String key) {
		this.key = key;
	}	
	
	public OrderRuleEnum getOrderRule() {
		return orderRule;
	}
	public void setOrderRule(OrderRuleEnum orderRule) {
		this.orderRule = orderRule;
	}
	public boolean isAsc() {
		return asc;
	}
	public void setAsc(boolean asc) {
		this.asc = asc;
	}

	
	/**
	 * �������ö��ֵ(��������ʱ��)
	 * @author Administrator
	 *
	 */
	public enum OrderRuleEnum{
		ORDER_BY_ACCESS_COUNT,
		ORDER_BY_MSG_TIME
	}
}
