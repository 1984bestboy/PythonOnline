package filter;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import pojo.User;


/**
 * Servlet Filter implementation class UserFilter
 */
@WebFilter(filterName="userFilter",urlPatterns = {"/user/*"})
public class UserFilter implements Filter {

    /**
     * Default constructor. 
     */
    public UserFilter() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Filter#destroy()
	 * Servlet容器在销毁过滤器实例前调用该方法，在该方法中释放Servlet过滤器占用的资源。
	 */
	public void destroy() {
		// TODO Auto-generated method stub
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 * 在 Filter 实例被 Web 容器从服务移除之前调用
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		HttpServletRequest httpRequest = (HttpServletRequest) request;
		HttpServletResponse httpResponse = (HttpServletResponse) response;
		
		HttpSession session =  ((HttpServletRequest)request).getSession();
		User user = (User)session.getAttribute("user");
		if(user == null) {
			
			if (httpRequest.getRequestURI().endsWith(".json")){
				httpResponse.getWriter().println("{\"res\":-2, \"info\":\"未登录\"}");
			}
			else{
				((HttpServletRequest)request).getRequestDispatcher("/login.jsp").forward(request, response);
			}
	}else {
			chain.doFilter(request, response);// 把请求传回过滤链
		}
	}

	/**
	 * @see Filter#init(FilterConfig)
	 * web 应用程序启动时，web 服务器将创建Filter 的实例对象，并调用其init方法，读取web.xml配置，完成对象的初始化功能，从而为后续的用户请求作好拦截的准备工作
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}
