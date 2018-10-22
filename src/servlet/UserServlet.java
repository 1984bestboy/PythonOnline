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
import pojo.User;
import service.IUserService;
import service.impl.UserServiceImpl;

@WebServlet("/userServlet")
public class UserServlet extends HttpServlet {
    IUserService userService = new UserServiceImpl();
	private static final long serialVersionUID = 4122206234828080374L;

	/**
     * @see HttpServlet#HttpServlet()
     */
    public UserServlet() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
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

	//��֤�û����Ƿ����
	private void isExist(HttpServletRequest request, HttpServletResponse response) throws IOException {
		String username=request.getParameter("username");
		boolean result=userService.isExist(username);
		response.getWriter().print("{\"valid\":"+result+"}");
	}


	private void logout(HttpServletRequest request, HttpServletResponse response) throws IOException {
		request.getSession().invalidate();//ʹsession��Ч
		response.getWriter().print("{\"res\": 1, \"info\":\"��ӭ�´ε�¼��\"}");
	}

	private void register(HttpServletRequest request, HttpServletResponse response) throws IOException {
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String realname = request.getParameter("realname");
		String sex = request.getParameter("sex");

		String hobbys = request.getParameter("hobbys");
		String birthday = request.getParameter("birthday");
		String city = request.getParameter("city");
		String email = request.getParameter("email");
		String qq = request.getParameter("qq");
		
		User user = new User();
		user.setUsername(username);
		user.setPassword(password);
		user.setRealname(realname);
		user.setSex(sex);
		
		user.setHobbys(hobbys);
		user.setBirthday(birthday);
		user.setCity(city);
		user.setEmail(email);
		user.setQq(qq);
		
		int res = userService.userRegister(user);
		
		if (res == 1){
			// �Զ���¼
			user = userService.userLogin(username, password);
			// ��¼�ɹ�
			HttpSession session = request.getSession();
			session.setAttribute("user", user);

			Gson gson = new Gson();
			String dataJSON = gson.toJson(user);
			response.getWriter().print("{\"res\": 1, \"data\":" + dataJSON + "}");
		}
		else {
			response.getWriter().print("{\"res\": " + res + ", \"info\":\"ע��ʧ��\"}");
		}
		
	}

	private void login(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		if (username == null || username.trim().length() < 6 || username.trim().length() > 16 || password == null
				|| password.trim().length() < 6 || password.trim().length() > 16) {
			// ��Ϣ���������µ�¼
			response.getWriter().print("{\"res\": -1, \"info\":\"��¼��Ϣ��д�����벻Ҫ���зǷ��ַ���\"}");
		}
		
		User user = userService.userLogin(username, password);
		
		if (user == null){
			// ��¼ʧ�� �û������������
			response.getWriter().print("{\"res\": -1, \"info\":\"�û���������������������룡\"}");
		}
		else if(user.getState() == -1){
			// ��¼ʧ�� �ʺű���
			response.getWriter().print("{\"res\": -1, \"info\":\"����˺��ѱ����ã�\"}");
		}
		else{
			// �û���¼�ظ��ж�
			
			// ��¼�ɹ�
			HttpSession session = request.getSession();
			session.setAttribute("user", user);
			
			Gson gson = new Gson();
			String dataJSON = gson.toJson(user);
			response.getWriter().print("{\"res\": 1, \"data\":" + dataJSON + "}");
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
