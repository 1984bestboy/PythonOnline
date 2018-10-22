package pojo;

import java.util.Date;

/*
 * �ظ���Ϣʵ����
 */
public class Reply {
	private int replyid;
	private int msgid;
	private int userid;
	private String replycontents;	// ����������
	private Date replytime;			// ����ʱ��
	private String replyip;			// ������ip
	
	public int getReplyid() {
		return replyid;
	}
	public void setReplyid(int replyid) {
		this.replyid = replyid;
	}
	public int getMsgid() {
		return msgid;
	}
	public void setMsgid(int msgid) {
		this.msgid = msgid;
	}
	public int getUserid() {
		return userid;
	}
	public void setUserid(int userid) {
		this.userid = userid;
	}

	public String getReplycontents() {
		return replycontents;
	}
	public void setReplycontents(String replycontents) {
		this.replycontents = replycontents;
	}
	public Date getReplytime() {
		return replytime;
	}
	public void setReplytime(Date replytime) {
		this.replytime = replytime;
	}
	public String getReplyip() {
		return replyip;
	}
	public void setReplyip(String replyip) {
		this.replyip = replyip;
	}
	
	@Override
	public String toString() {
		return "Reply [replyid=" + replyid + ", msgid=" + msgid + ", userid=" + userid + ", replycontents="
				+ replycontents + ", replytime=" + replytime + ", replyip=" + replyip + "]";
	}
}
