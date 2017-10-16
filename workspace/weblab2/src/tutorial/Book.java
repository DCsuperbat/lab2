package tutorial;//1

public class Book {
	public String ISBN;
    public String Title;
    public String AuthorID;
    public String Publisher;
    public String PublishDate;
    public String Price;
    
    public String Name;
    public String Age;
    public String Country;
    public Book(String ISBN,String Title,String AuthorID ,String Publisher,String PublishDate,String price,String Name,String Age,String Country){
    	this.ISBN = ISBN;
    	this.Title = Title;
    	this.AuthorID = AuthorID;
    	this.Publisher = Publisher;
    	this.PublishDate = PublishDate;
    	this.Price = price;
    	this.Name = Name;
    	this.Age = Age;
    	this.Country = Country;
    }
    public Book(){
    }
    public String getISBN(){
    	return ISBN;
    }
    public void setISBN(String ISBN){
    	this.ISBN=ISBN;
    }
    public String getTitle(){
    	return Title;
    }
    public void setTitle(String Title){
    	this.Title=Title;
    }
    public String getAuthorID(){
    	return AuthorID;
    }
    public void setAuthorID(String AuthorID){
    	this.AuthorID=AuthorID;
    }
    public String getPublisher(){
    	return Publisher;
    }
    public void setPublisher(String Pushlisher){
    	this.Publisher=Pushlisher;
    }
    public String getPrice(){
    	return Price;
    }
    public void setPrice(String Price){
    	this.Price=Price;
    }
    public String getPublishDate(){
    	return PublishDate;
    }
    public void setPublishDate(String PublishDate){
    	this.PublishDate=PublishDate;
    }
    
    public String getName(){
    	return Name;
    }
    public void setName(String Name){
    	this.Name=Name;
    }
    public String getAge(){
    	return Age;
    }
    public void setAge(String Age){
    	this.Age=Age;
    }
    public String getCountry(){
    	return Country;
    }
    public void setCountry(String Country){
    	this.Country=Country;
    }
    public static void main(String[] args) {
		// TODO Auto-generated method stub

	}
}
