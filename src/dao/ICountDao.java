package dao;

/*
 * ����ͳ�����ݷ��ʲ�ӿ�
 */
public interface ICountDao {
	
	/**
	 * �������ӷ�����
	 * @param msgid
	 * @return
	 */
	int updateAccessCount(int msgid);
}
