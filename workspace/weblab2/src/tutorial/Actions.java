package tutorial;

import java.util.*;

import com.opensymphony.xwork2.ActionSupport;
public class Actions extends ActionSupport{
	public ArrayList<Book> rslst1 = new ArrayList<Book>();
	public ArrayList<Book> rslst2 = new ArrayList<Book>();
	public String AuName;
	public String ISbnn;
	public String deISB;
	public String searchbks(){
		LoginDB ldb=new LoginDB();
		ldb.connectsql();
		String sql="select * from author a join book b where a.AuthorID= b.AuthorID and Name="+"\""+AuName+"\"";
		rslst1=ldb.findbks(sql);
		ldb.close();
		return SUCCESS;
	}
	public String showall(){
		LoginDB ldb=new LoginDB();
		ldb.connectsql();
		String sql="select * from book where a.AuthorID= b.AuthorID and b.ISBN="+ISbnn;
		rslst2=ldb.findbks(sql);
		ldb.close();
		return SUCCESS;
	}
	public String dele(){
		LoginDB ldb=new LoginDB();
		ldb.connectsql();
		String sql="delete from book where ISBN="+"\""+deISB+"\"";
		ldb.executeSql(sql);
		ldb.close();
		return SUCCESS;
	}
	public ArrayList<Book> getRslst1() {
		return rslst1;
	}
	public void setRslst1(ArrayList<Book> rslst1) {
		this.rslst1 = rslst1;
	}
	public ArrayList<Book> getRslst2() {
		return rslst2;
	}
	public void setRslst2(ArrayList<Book> rslst2) {
		this.rslst2 = rslst2;
	}
	public String getAuName() {
		return AuName;
	}
	public void setAuName(String auName) {
		AuName = auName;
	}
	public String getISbnn() {
		return ISbnn;
	}
	public void setISbnn(String iSbnn) {
		ISbnn = iSbnn;
	}
	public String getDeISB() {
		return deISB;
	}
	public void setDeISB(String deISB) {
		this.deISB = deISB;
	}
}
