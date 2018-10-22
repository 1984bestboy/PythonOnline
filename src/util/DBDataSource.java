package util;

import java.sql.Connection;
import java.util.Properties;

import com.mchange.v2.c3p0.ComboPooledDataSource;

/**
 * ���ݿ����ӳ� 
 * @author Administrator
 *
 */
public class DBDataSource {
	
	//�޸� ���ݿ����Ӳ�
	public static String DRIVER;
	public static String URL;
	public static String USER;
	public static String PWD;
	public static int maxPoolSize;
	public static int minPoolSize;
	public static int initialPoolSize;
	public static int checkoutTimeout;
	
	private static ComboPooledDataSource cpDataSource = null;
	
 	//��������
	static {
		try {
			//��ȡ�����ļ�������JDBC�Ĵ����
			Properties config = new Properties();
			config.load(DBDataSource.class.getClassLoader().getResourceAsStream("db.properties"));//����db.properties�����ļ��е���Ϣ
			DRIVER = config.getProperty("drivername");//�������ݿ����������
			URL = config.getProperty("url");//�������ݿ��URL
			USER = config.getProperty("username");//�������ݿ���û���
			PWD	= config.getProperty("password");//�������ݿ������

			maxPoolSize	= Integer.parseInt(config.getProperty("maxPoolSize"));//���ӳص����������
			minPoolSize	= Integer.parseInt(config.getProperty("minPoolSize"));//���ӳص���С������
			initialPoolSize = Integer.parseInt(config.getProperty("initialPoolSize"));//���ӳصĳ�ʼ������
			checkoutTimeout = Integer.parseInt(config.getProperty("checkoutTimeout"));//�ӳ�ʱ��
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	/**************** c3p0 ���ݿ����ӳ� ��������******************/
	private static void c3p0DataSource() throws Exception {
		cpDataSource = new ComboPooledDataSource();
		cpDataSource.setDriverClass(DRIVER);//����
		cpDataSource.setJdbcUrl(URL);
		cpDataSource.setUser(USER);
		cpDataSource.setPassword(PWD);
		cpDataSource.setMaxPoolSize(maxPoolSize);
		cpDataSource.setMinPoolSize(minPoolSize);
		cpDataSource.setInitialPoolSize(initialPoolSize);
		cpDataSource.setCheckoutTimeout(checkoutTimeout);
	}

	/**
	 * c3p0���ݿ�������
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
