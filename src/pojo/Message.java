package pojo;

import java.util.Date;
/*
 * ����ʵ����
 */
public class Message {
	
	private int msgid;			// ��ID
	private int userid;			// ������
	private String msgtopic;	// ���ӱ���
	private String msgcontents;	// ��������
	private Date msgtime;		// ����ʱ��
	private String msgip;		// �������������˵�IP
	private int theid;			// ����ID
	private int state;			// ����״̬
	
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
	public String getMsgtopic() {
		return msgtopic;
	}
	public void setMsgtopic(String msgtopic) {
		this.msgtopic = msgtopic;
	}
	public String getMsgcontents() {
		return msgcontents;
	}
	public void setMsgcontents(String msgcontents) {
		this.msgcontents = msgcontents;
	}
	public Date getMsgtime() {
		return msgtime;
	}
	public void setMsgtime(Date msgtime) {
		this.msgtime = msgtime;
	}
	public String getMsgip() {
		return msgip;
	}
	public void setMsgip(String msgip) {
		this.msgip = msgip;
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
	
	@Override
	public String toString() {
		return "Message [msgid=" + msgid + ", userid=" + userid + ", msgtopic=" + msgtopic + ", msgcontents="
				+ msgcontents + ", msgtime=" + msgtime + ", msgip=" + msgip + ", theid=" + theid + ", state=" + state
				+ "]";
	}	
}
