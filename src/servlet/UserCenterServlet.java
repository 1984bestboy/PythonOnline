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
import pojo.Admin;
import pojo.User;
import service.IUserService;
import service.impl.UserServiceImpl;

/**
 * Servlet implementation class UserCenterServlet
 */
@WebServlet("/userCenterServlet")
public class UserCenterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private IUserService userService=new UserServiceImpl();
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		String action=request.getParameter("action");	
		try {
			//ʹ�÷��䶨�巽��
			Method method=getClass().getDeclaredMethod(action, HttpServletRequest.class,HttpServletResponse.class);			
			//���÷���
			method.invoke(this, request,response);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	private void getUser(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		// ��¼�ɹ�
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("user");

		Gson gson = new Gson();
		String dataJSON = gson.toJson(user);
		response.getWriter().print("{\"res\": 1, \"data\":" + dataJSON + "}");
	}

	
	private void updatePw(HttpServletRequest request, HttpServletResponse response) throws IOException {
		//��ȡsession�е�user�û���
		User user = (User) request.getSession().getAttribute("user");
		String username=user.getUsername();
		String password=user.getPassword();
		String oldpassword=request.getParameter("oldpassword");
		//��֤session�е������Ƿ�������ľ�������ͬ
		if(password.equals(oldpassword)){
			String newpassword=request.getParameter("newpassword");
			user.setUsername(username);
			user.setPassword(newpassword);
			userService.updatePw(user);
			user.setUsername(username);
			user.setPassword(newpassword);
			request.getSession().setAttribute("user", user);
		}
		response.getWriter().print("{\"res\": 1, \"info\":\"�޸ĳɹ���\"}");
	}

	
	//�޸���Ϣ
    private void update(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	// ��ȡ����
    			String realname = request.getParameter("realname");
    			String sex = request.getParameter("sex");
    			String hobbys = request.getParameter("hobbys");
    			String birthday = request.getParameter("birthday");
    			String city = request.getParameter("city");
    			String email = request.getParameter("email");
    			String qq = request.getParameter("qq");

    			// ��ȡ��ǰ�û�����
    			HttpSession session = request.getSession();
    			User sessionUser = (User) session.getAttribute("user");
    			User user = sessionUser.clone();
    			
    			// ������ֵ
    			if (realname != null && realname.trim().length()>0){
    				user.setRealname(realname);
    			}
    			if (sex != null && sex.trim().length()>0){
    				user.setSex(sex);
    			}
    			if (hobbys != null && hobbys.trim().length()>0){
    				user.setHobbys(hobbys);
    			}
    			if (birthday != null && birthday.trim().length()>0){
    				user.setBirthday(birthday);
    			}
    			if (city != null && city.trim().length()>0){
    				user.setCity(city);
    			}
    			if (email != null && email.trim().length()>0){
    				user.setEmail(email);
    			}
    			if (qq != null && qq.trim().length()>0){
    				user.setQq(qq);
    			}
    			
    			// ����
    			int res = userService.update(user);
    			
    			if (res == 1){	// ���³ɹ�
    				// ��ȡ���º������
    				user = userService.userLogin(user.getUsername(), user.getPassword());

    				// ����Session
    				session.setAttribute("user", user);
    				
    				Gson gson = new Gson();
    				String dataJSON = gson.toJson(user);
    				
    				response.getWriter().print("{\"res\": 1, \"data\":" + dataJSON + "}");
    			}
    			else {
    				response.getWriter().print("{\"res\": "+res+", \"info\":\"�޸�ʧ��!\"}");
    			}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
