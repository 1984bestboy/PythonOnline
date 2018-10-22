package dao;

import java.util.Date;

import pojo.Reply;
import util.Page;

public interface IReplyDao {
	/**
	 * ����
	 * @param reply �ظ�����
	 * @return
	 */
	int replyMsg(Reply reply);
	
	/**
	 * ��������ID��ѯ�ظ�����
	 * @param msgid ����ID
	 * @param page
	 * @return
	 */
	Page queryBymsgid(int msgid,Page page);
	
	/**
	 * ����ʱ���ѯ��������
	 * @param startDate ��ʼʱ��
	 * @param endDate ����ʱ��
	 * @return 
	 */
	long queryCountByDate(Date startDate,Date endDate);
}
