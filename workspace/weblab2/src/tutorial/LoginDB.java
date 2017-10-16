package tutorial;

import java.sql.*;
import java.util.*;

public class LoginDB {
	private static String DRIVER_MYSQL = "com.mysql.jdbc.Driver";    //MySQL JDBC驱动字符串
    private static String URL="jdbc:mysql://localhost:3306/bookbd?characterEncoding=utf8&useSSL=true";
    private static Statement st; 
    private Connection connection = null;
    public void connectsql()                           //链接数据库
	{
		 try
	        {
	            Class.forName(DRIVER_MYSQL).newInstance();     //加载JDBC驱动
	            //System.out.println("Driver Load Success.");
	            connection = DriverManager.getConnection(URL,"root","971018");   //创建数据库连接对象，在使用云平台的数据库是要更改这些信息
	            st = connection.createStatement();       //创建Statement对象
	        } 
		 catch (Exception e)
	        {
	            e.printStackTrace();
	            System.out.println("failed------------------------------");
	        }
	}
    public ResultSet query(String sql)                
    {
        ResultSet result = null;
        try
        {
            result = st.executeQuery(sql);
        } catch (SQLException e)
        {
            e.printStackTrace();
        }

        return result;
    }
    public ArrayList<Book> findbks(String sql)     //按照ISBN或者作者名字搜索书获得一个动态链表 
	{
		ResultSet rs = null;
		ArrayList<Book> bklist = new ArrayList<Book>();
		try
        {
            rs = st.executeQuery(sql);
            while(rs.next())
            {
            	Book bk = new Book();
            	bk.setName(rs.getString("Name"));
            	bk.setAge(rs.getString("Age"));
            	bk.setCountry(rs.getString("Country"));
            	bk.setISBN(rs.getString("ISBN"));
            	bk.setTitle(rs.getString("Title"));
            	bk.setAuthorID(rs.getString("AuthorID"));
            	bk.setPublishDate(rs.getString("PublishDate"));
            	bk.setPrice(rs.getString("Price"));
            	bk.setPublisher(rs.getString("Publisher"));
            	bklist.add(bk);
            }
        } 
		catch (SQLException e)
        {
            e.printStackTrace();
        }
		return bklist;
	}
    public void executeSql(String sql) {     //执行一般的插入等语句
    	try
        {
            st.execute(sql);
        } catch (SQLException e)
        {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
    }
    public void close()   //断开连接
	{
		try {
			connection.close();
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
		return ;
	}
 
}
