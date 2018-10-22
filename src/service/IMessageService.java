package service;

import java.util.Date;

import pojo.Message;
import pojo.MessageCriteria;
import pojo.MessageInfo;
import pojo.Reply;
import util.Page;
/*
 * ������Ϣҵ���ӿ�
 */
public interface IMessageService {
	/**
	 * ����
	 * @param message
	 * @return
	 */
	int addMsg(Message message);
	/**
	 * ����
	 * @param reply
	 * @return
	 */
	int replyMsg(Reply reply);
	
	/**
	 * ��������ID��ѯ������Ϣ 
	 * @param msgid
	 * @return
	 */
	MessageInfo getMsg(int msgid);
	
	/**
	 * ��������ID��ѯ�ظ���Ϣ
	 * @param msgid ����ID
	 * @param page
	 * @return
	 */
	Page getReply(int msgid,Page page);
	
	/**
	 * ��ѯ����
	 * @param page
	 * @return
	 */
	Page queryNew(Page page);
	
	Page queryHot(Page page);
	
	Page queryTheme(Page page);
	
	int deleteMsg(int msgid);
	
	int restoreMsg(int msgid);
	
	int updateMsg(Message message);
	
	Page search(MessageCriteria messageCriteria, Page page);
	
	long queryMsgCountByDate(Date startDate, Date endDate);	// ����ʱ��鷢������
	
	long queryReplyCountByDate(Date startDate, Date endDate);	// ����ʱ���������
}
