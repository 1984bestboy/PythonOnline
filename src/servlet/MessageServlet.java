package servlet;

import java.io.IOException;
import java.lang.reflect.Method;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import pojo.MessageInfo;
import service.IMessageService;
import service.impl.MessageServiceImpl;
import util.Page;

/**
 * Servlet implementation class MessageServlet
 */
@WebServlet("/messageServlet")
public class MessageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private IMessageService messageservice=new MessageServiceImpl();

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//1�鿴������ 2 ��ѯ���ӻظ���Ϣ 3 ��ѯ����5�� 4��ѯ����5��   5��ѯ����5�����������
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		String action= request.getParameter("action");
		//which  if else  ���߷��䶼����,�����÷���
	try {
		Method method=getClass().getDeclaredMethod(action,HttpServletRequest.class,HttpServletResponse.class);
		//���÷���
		method.invoke(this, request,response);
		
	} catch (Exception e) {
		e.printStackTrace();
	}
	
	
	}

	// �鿴������ϸ��Ϣ
		private void getMsg(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException  {
			String msgId=request.getParameter("msgId");//����Id
			MessageInfo messageInfo = new MessageInfo();
			messageInfo=messageservice.getMsg(Integer.parseInt(msgId));
			Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd HH:mm:ss").create();
			String json=gson.toJson(messageInfo);
			response.getWriter().print("{\"res\":1,\"message\":"+json+"}");
		}

		// ��ѯ���ӻظ�����
		private void getReply(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException  {
					String pageNum=request.getParameter("pageNum");
					if(pageNum==null || pageNum.equals("")){
						pageNum="1";
					}
					String msgId=request.getParameter("msgId");
					Page page=new Page();
					page.setCurPage(Integer.parseInt(pageNum));
					page=messageservice.getReply(Integer.parseInt(msgId), page);

					Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd HH:mm:ss").create();
					String json=gson.toJson(page);
					response.getWriter().print("{\"reply\":"+json+"}");
		}

		// ��������
		private void topNew(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException  {
				String pageNum=request.getParameter("pageNum");
				if(pageNum==null || pageNum.equals("")){
					pageNum="1";
				}
				Page page=new Page();
				page.setCurPage(Integer.parseInt(pageNum));
				page=messageservice.queryNew(page);
				Gson gson = new GsonBuilder().setDateFormat("M/d").create();
				String json=gson.toJson(page);
				response.getWriter().print("{\"res\": 1,\"newMsg\":"+json+"}");
		}

		// ��������
		private void topHot(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException  {
			String pageNum=request.getParameter("pageNum");
			if(pageNum==null || pageNum.equals("")){
				pageNum="1";
			}
			Page page=new Page();
			page.setCurPage(Integer.parseInt(pageNum));
			page=messageservice.queryHot(page);
			Gson gson = new GsonBuilder().setDateFormat("M/d").create();
			String json=gson.toJson(page);
			response.getWriter().print("{\"res\": 1,\"hotMsg\":"+json+"}");
		}

		// ��ѯ����5����ģ�������
		private void topTheme(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			String pageNum=request.getParameter("pageNum");
			if(pageNum==null || pageNum.equals("")){
				pageNum="1";
			}
			Page page=new Page();
			page.setCurPage(Integer.parseInt(pageNum));
			page=messageservice.queryTheme(page);
			Gson gson = new GsonBuilder().setDateFormat("M/d").create();
			String json=gson.toJson(page);
			response.getWriter().print("{\"res\": 1, \"themeMsg\":"+json+"}");
		}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}

