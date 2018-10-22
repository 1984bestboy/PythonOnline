package pojo;

import java.util.Date;

/*
 * ����������Ϣ
 */
public class MessageInfo {
	private int msgid;				// ����id
	private String msgtopic;		// ���ӱ���
	private String msgcontents;		// ����
	private Date msgtime;			// ʱ��
	private String msgip;			// �������������˵�IP
	private int state;				// ����״̬
	
	private int theid;				// ����ID
	private String thename;			// ������
	
	private int userid;				// �û�ID
	private String username;		// �û���
	private String realname;		// �û��ǳ�
	private String sex;				// �Ա�
	private String city;			// ����
	
	private int accessCount;		// �����
	private int replyCount;			// �ظ���
	private Date replytime;			// ���»ظ�ʱ��
	
	public int getMsgid() {
		return msgid;
	}
	public void setMsgid(int msgid) {
		this.msgid = msgid;
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
	public int getState() {
		return state;
	}
	public void setState(int state) {
		this.state = state;
	}
	public int getTheid() {
		return theid;
	}
	public void setTheid(int theid) {
		this.theid = theid;
	}
	public String getThename() {
		return thename;
	}
	public void setThename(String thename) {
		this.thename = thename;
	}
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
	
	public String getRealname() {
		return realname;
	}
	public void setRealname(String realname) {
		this.realname = realname;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public int getAccessCount() {
		return accessCount;
	}
	public void setAccessCount(int accessCount) {
		this.accessCount = accessCount;
	}
	public int getReplyCount() {
		return replyCount;
	}
	public void setReplyCount(int replyCount) {
		this.replyCount = replyCount;
	}
	public Date getReplytime() {
		return replytime;
	}
	public void setReplytime(Date replytime) {
		this.replytime = replytime;
	}
	
	@Override
	public String toString() {
		return "MessageInfo [msgid=" + msgid + ", msgtopic=" + msgtopic + ", msgcontents=" + msgcontents + ", msgtime="
				+ msgtime + ", msgip=" + msgip + ", state=" + state + ", theid=" + theid + ", thename=" + thename
				+ ", userid=" + userid + ", username=" + username + ", realname=" + realname + ", sex=" + sex
				+ ", city=" + city + ", accessCount=" + accessCount + ", replyCount=" + replyCount + ", replytime="
				+ replytime + "]";
	}	
}
