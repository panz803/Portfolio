package ch13_1411031011;

class book{
	public static int total=0;
	private String title;
	private double price;

	public book(String a,double b) {
		title=a;
		price=b;
		total++;
	}
	String getTitle() {
		return title;
	}
	double getPrice() {
		return price;
	}
	double raisePrice(double c) {
		return price+=c;
	}
}


public class ex1 {

	public static void main(String[] args) {

		book b1 = new book("JAVA程式設計",300.5);
		System.out.println("新增書籍:"+b1.getTitle()+"訂價為"+b1.getPrice());
		System.out.println("訂價增加0.1後為:"+b1.raisePrice(300.5*0.1));
		System.out.println("目前共有"+b1.total+"本書");

		book b2 = new book("資料庫管理系統",450.6);
		System.out.println("新增書籍:"+b2.getTitle()+"訂價為"+b2.getPrice());
		System.out.println("訂價增加50後為:"+b2.raisePrice(50));
		System.out.println("目前共有"+b2.total+"本書");
	}

}
