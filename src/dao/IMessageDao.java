package dao;

import java.util.Date;

import pojo.Message;
import pojo.MessageCriteria;
import pojo.MessageInfo;
import util.Page;
/*
 * ������Ϣ���ݷ��ʽӿ�
 */
public interface IMessageDao {
	/**
	 * �������
	 * @param msg ������Ϣ
	 * @return
	 */
	int add(Message msg);
	
	/**
	 * ɾ������
	 * @param msgid ����ID
	 * @return
	 */
	int delete(int msgid);
	
	/**
	 * ��������
	 * @param msg ������Ϣ
	 * @return
	 */
	int update(Message msg);
	
	/**
	 * ����״̬
	 * @param msgid ����ID
 	 * @param state ״̬
	 * @return
	 */
	int updateState(int msgid,int state);
	
	/**
	 * ��ѯָ��������Ϣ
	 * @param msgid ����ID
	 * @return
	 */
	MessageInfo get(int msgid);
	
	/**
	 * ��������ѯ������Ϣ
	 * @param messageCriteria ��������
	 * @param page ��ҳ��Ϣ
	 * @return ��ѯ���
	 */
	Page query(MessageCriteria messageCriteria,Page page);
	
	/**
	 * ��ѯ���µ�������Ϣ
	 * @param page ��ҳ��Ϣ
	 * @return
	 */
	Page queryNew(Page page);
	
	/**
	 * ��ѯ���ȵ�������Ϣ
	 * @param page
	 * @return
	 */
	Page queryHot(Page page);
	
	/**
	 * ��ѯ����������Ϣ
	 * @param page
	 * @return
	 */
	Page queryTheme(Page page);
	
	/**
	 * ����ʱ���ѯ��������
	 * @param startDate ��ʼʱ��
	 * @param endDate ����ʱ��
	 * @return
	 */
	long queryCountByDate(Date startDate,Date endDate);
	
}
