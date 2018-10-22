package service.impl;

import java.util.Date;

import dao.ICountDao;
import dao.IMessageDao;
import dao.IReplyDao;
import dao.impl.CountDaoImpl;
import dao.impl.MessageDaoImpl;
import dao.impl.ReplyDaoImpl;
import pojo.Message;
import pojo.MessageCriteria;
import pojo.MessageInfo;
import pojo.Reply;
import service.IMessageService;
import util.Page;

public class MessageServiceImpl implements IMessageService{
	private IMessageDao messagedao=new MessageDaoImpl();
	private ICountDao countdao=new CountDaoImpl();
	private IReplyDao replydao=new ReplyDaoImpl();
@Override
public int addMsg(Message message) {
	return messagedao.add(message);
}

@Override
public int replyMsg(Reply reply) {
	return replydao.replyMsg(reply);
}

@Override
public MessageInfo getMsg(int msgid) {
	//‘ˆº”‰Ø¿¿¡ø
	countdao.updateAccessCount(msgid);
	return messagedao.get(msgid);
}

@Override
public Page getReply(int msgid, Page page) {
	return replydao.queryBymsgid(msgid, page);
}

@Override
public Page queryNew(Page page) {
	return messagedao.queryNew(page);
}

@Override
public Page queryHot(Page page) {
	return messagedao.queryHot(page);
}

@Override
public Page queryTheme(Page page) {
	return messagedao.queryTheme(page);
}

@Override
public int deleteMsg(int msgid) {
	return messagedao.updateState(msgid, -1);
}

@Override
public int restoreMsg(int msgid) {
	return messagedao.updateState(msgid, 0);
}

@Override
public int updateMsg(Message message) {
	return 0;
}

@Override
public Page search(MessageCriteria messageCriteria, Page page) {
	return messagedao.query(messageCriteria, page);
}

@Override
public long queryMsgCountByDate(Date startDate, Date endDate) {
	return messagedao.queryCountByDate(startDate, endDate);
}

@Override
public long queryReplyCountByDate(Date startDate, Date endDate) {
	return replydao.queryCountByDate(startDate, endDate);
}

}
