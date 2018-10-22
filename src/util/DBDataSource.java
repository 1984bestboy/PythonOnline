package util;

import java.sql.Connection;
import java.util.Properties;

import com.mchange.v2.c3p0.ComboPooledDataSource;

/**
 * 数据库连接池 
 * @author Administrator
 *
 */
public class DBDataSource {
	
	//修改 数据库连接参
	public static String DRIVER;
	public static String URL;
	public static String USER;
	public static String PWD;
	public static int maxPoolSize;
	public static int minPoolSize;
	public static int initialPoolSize;
	public static int checkoutTimeout;
	
	private static ComboPooledDataSource cpDataSource = null;
	
 	//加载驱动
	static {
		try {
			//读取配置文件，加载JDBC四大参数
			Properties config = new Properties();
			config.load(DBDataSource.class.getClassLoader().getResourceAsStream("db.properties"));//加载db.properties配置文件中的信息
			DRIVER = config.getProperty("drivername");//连接数据库所需的驱动
			URL = config.getProperty("url");//连接数据库的URL
			USER = config.getProperty("username");//连接数据库的用户名
			PWD	= config.getProperty("password");//连接数据库的密码

			maxPoolSize	= Integer.parseInt(config.getProperty("maxPoolSize"));//连接池的最大连接数
			minPoolSize	= Integer.parseInt(config.getProperty("minPoolSize"));//连接池的最小连接数
			initialPoolSize = Integer.parseInt(config.getProperty("initialPoolSize"));//连接池的初始连接数
			checkoutTimeout = Integer.parseInt(config.getProperty("checkoutTimeout"));//延迟时间
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	/**************** c3p0 数据库连接池 启动方法******************/
	private static void c3p0DataSource() throws Exception {
		cpDataSource = new ComboPooledDataSource();
		cpDataSource.setDriverClass(DRIVER);//设置
		cpDataSource.setJdbcUrl(URL);
		cpDataSource.setUser(USER);
		cpDataSource.setPassword(PWD);
		cpDataSource.setMaxPoolSize(maxPoolSize);
		cpDataSource.setMinPoolSize(minPoolSize);
		cpDataSource.setInitialPoolSize(initialPoolSize);
		cpDataSource.setCheckoutTimeout(checkoutTimeout);
	}

	/**
	 * c3p0数据库连接入
	 * 
	 * @return
	 * @throws Exception
	 */
	public static Connection getConnectionC3P0() throws Exception {
		if (cpDataSource == null) {
			c3p0DataSource();
		}
		Connection conn = null;
		if (cpDataSource != null) {
			conn = cpDataSource.getConnection();
		}
		return conn;
	}

}
