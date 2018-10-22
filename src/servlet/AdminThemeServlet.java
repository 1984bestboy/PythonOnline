package servlet;

import java.io.IOException;
import java.lang.reflect.Method;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import pojo.Theme;
import service.IThemeService;
import service.impl.ThemeServiceImpl;
import util.Page;

/**
 * Servlet implementation class ThemeServlet
 */
/*@WebServlet(name = "adminThemeServlet", urlPatterns = { "/adminThemeServlet" })*/
@WebServlet("/adminThemeServlet")
public class AdminThemeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Theme theme=new Theme();
	private IThemeService themeService=new ThemeServiceImpl();
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
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

	//����������Ϣ
	private void searchTheme(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String key=request.getParameter("key");//�ؼ���
		String pageNum=request.getParameter("pageNum");//��ǰҳ
		if(pageNum==null|| pageNum.equals("")){
			pageNum="1";
		}
		Page page=new Page();
		page.setCurPage(Integer.parseInt(pageNum));//���õ�ǰҳ
		page=themeService.query(key, page);//���ݹؼ��ֺͷ�ҳ��Ϣ��ѯ������Ϣ
		Gson gson=new Gson();
		String json=gson.toJson(page);//��pageת��Ϊjson
		//{"curPage":1,totalPage:5,"data":[{"theid":1,"thename":"java"},{"theid":1,"thename":"java"}]}
		response.getWriter().println("{\"theme\":"+json+"}");
	}
	
	//�����Ϣ
	private void add(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String thename=request.getParameter("thename");
		Theme theme = new Theme();
		theme.setThename(thename);
		int result = themeService.add(theme);
		if (result > 0) {
			response.getWriter().print("{\"res\":1,\"info\":\"�������ɹ���\"}");
		} else {
			response.getWriter().print("{\"res\":-1,\"info\":\"�������ʧ�ܣ�\"}");
		}
	}
	
	//ɾ����Ϣ
	private void delete(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String theid=request.getParameter("theid");
		int result = themeService.delete(Integer.parseInt(theid));
		if (result > 0) {
			response.getWriter().print("{\"res\":1,\"info\":\"ɾ������ɹ���\"}");
		} else {
			response.getWriter().print("{\"res\":-1,\"info\":\"ɾ������ʧ�ܣ�\"}");
		}
	}
	
	//��ȡȫ��������Ϣ
		private void getAllTheme(HttpServletRequest request, HttpServletResponse response)
				throws ServletException, IOException {
			List<Theme> list=themeService.getAll();
			Gson gson=new Gson();
			String json=gson.toJson(list);
			response.getWriter().print("{\"theme\":"+json+"}");
		}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
