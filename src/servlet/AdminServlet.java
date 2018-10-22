package servlet;

import java.io.IOException;
import java.lang.reflect.Method;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import pojo.Admin;
import service.IAdminService;
import service.impl.AdminServiceImpl;

/**
 * Servlet implementation class AdminServlet
 */
@WebServlet("/adminServlet")
public class AdminServlet extends HttpServlet {
	private IAdminService adminService = new AdminServiceImpl();
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
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
	
	//��¼
	private void login(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 String username=request.getParameter("name");
		 String password=request.getParameter("pwd");
		 Admin admin=adminService.login(username, password);
		 if(admin == null){
			 //�û��������������  json��ʽ���
			 response.getWriter().print("{\"res\":-1,\"info\":\"�û������������\"}");
		 }else{
			 //��¼�ɹ�
			 //��session��������
			request.getSession().setAttribute("admin", admin);
			 response.getWriter().print("{\"res\":1,\"info\":\"��¼�ɹ�\"}");
				
		 }
		 
	}

	//�˳�
	private void logout(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		  HttpSession session=request.getSession();
		  session.removeAttribute("admin");
		response.getWriter().println("�˳��ɹ���");
	}

	//�޸�����
	private void update(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {		
		 //��ȡsession�е�admin
		Admin admin= (Admin) request.getSession().getAttribute("admin");
		String name=admin.getName();
		String pwd=admin.getPwd();
		String oldpassword=request.getParameter("oldpassword");
		//��֤session�е������Ƿ�������ľ�������ͬ
		if(pwd.equals(oldpassword)){
			String newpassword=request.getParameter("newpassword");
			admin.setName(name);
			admin.setPwd(newpassword);
			int res=adminService.updatepwd(admin);
			//��session�е�pwd������
			admin.setName(name);
			admin.setPwd(newpassword);
			request.getSession().setAttribute("admin", admin);
		}
		response.getWriter().print("{\"res\": 1, \"info\":\"�޸ĳɹ���\"}");
		}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
