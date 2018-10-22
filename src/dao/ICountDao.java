package dao;

/*
 * 帖子统计数据访问层接口
 */
public interface ICountDao {
	
	/**
	 * 更新帖子访问量
	 * @param msgid
	 * @return
	 */
	int updateAccessCount(int msgid);
}
