package servlet;

import java.io.IOException;
import java.lang.reflect.Method;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import pojo.Message;
import pojo.MessageCriteria;
import pojo.MessageCriteria.OrderRuleEnum;
import pojo.Reply;
import pojo.User;
import service.IMessageService;
import service.impl.MessageServiceImpl;
import util.HTMLReplace;
import util.IPUtil;
import util.Page;

/**
 * Servlet implementation class UserMessageServlet
 */
@WebServlet("/userMessageServlet")
public class UserMessageServlet extends HttpServlet {
	private IMessageService messageservice=new MessageServiceImpl();
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//��������  �ָ�����  �鿴�ҵ�����
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		String action=request.getParameter("action");
		try {
			//ʹ�÷��䶨�巽��
			Method method=getClass().getDeclaredMethod(action, HttpServletRequest.class,
					HttpServletResponse.class);
			//���÷���
			method.invoke(this, request,response);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
//����
	private void add(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			String msgtopic=request.getParameter("msgtopic");//���ӱ���
			String theid=request.getParameter("theid");//����ID
			String msgcontents=request.getParameter("msgcontents");//��������
			HttpSession session=request.getSession();
			User user=(User) session.getAttribute("user");
			int userid=user.getUserid();//�û�ID
			String msgip=IPUtil.getIP(request);//�����˵�IP
			msgcontents=HTMLReplace.replace(msgcontents);//��������ת��ΪHTML��ʽ
			Message message=new Message();
			message.setMsgtopic(msgtopic);
			message.setTheid(Integer.parseInt(theid));
			message.setMsgcontents(msgcontents);
			message.setUserid(userid);
			message.setMsgip(msgip);
		int rs=messageservice.addMsg(message);
		if(rs>0){
			response.getWriter().print("{\"res\":1,\"info\":\"�����ɹ�\"}");
		}else{
			response.getWriter().print("{\"res\":-1,\"info\":\"����ʧ��\"}");
		}
	}
	
	//��ѯ
	private void getMyMsg(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	String pageNum=request.getParameter("pageNum");
	if(pageNum == null || pageNum.equals("")){
		pageNum="1";
	}
	Page page=new Page();
	page.setCurPage(Integer.parseInt(pageNum));
	HttpSession session=request.getSession();
	User user=(User) session.getAttribute("user");
	int  userid=user.getUserid();
	//������װ��ѯ��������
	MessageCriteria messageCriteria=new MessageCriteria();
	messageCriteria.setUserid(userid);
	messageCriteria.setOrderRule(OrderRuleEnum.ORDER_BY_MSG_TIME);//��������
	messageCriteria.setState(0);//��ѯ�ǽ���״̬
	page=messageservice.search(messageCriteria,page);
	Gson gson=new GsonBuilder().setDateFormat("yy-MM-dd").create();
	String json=gson.toJson(page);
	response.getWriter().print("{\"res\":1,\"message\":" + json + "}");
	
	}
	
	//����
	private void replyMsg(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String msgId=request.getParameter("msgId");
		String replycontent=request.getParameter("replycontent");
		HttpSession session=request.getSession();
		User user=(User) session.getAttribute("user");
		int userid=user.getUserid();//�û�ID
		String replyip=IPUtil.getIP(request);//��ȡIP
		replycontent=HTMLReplace.replace(replycontent);
		Reply reply=new Reply();
				reply.setUserid(userid);
				reply.setMsgid(Integer.parseInt(msgId));
				reply.setReplycontents(replycontent);
				reply.setReplyip(replyip);
				int rs=messageservice.replyMsg(reply);
				if(rs>0){
					response.getWriter().print("{\"res\":1,\"info\":\"�����ɹ�\"}");
				}else{
					response.getWriter().print("{\"res\":-1,\"info\":\"����ʧ��\"}");
				}
	}
	
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
