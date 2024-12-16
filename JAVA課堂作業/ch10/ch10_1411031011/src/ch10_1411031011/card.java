package ch10_1411031011;

class IcCard{
	private long id;
	int money;
	
	IcCard(){
		id = 999999999;
		money = 0;
	}
	
	IcCard(long i, int m){
		id = i;
		money = m;
	}
	
	void showInfo(){
		System.out.println("卡片卡號: "+ id);
		System.out.println("卡片餘額: "+ money + "元");
	}
	
	int addMoney(int value) {
		money += value;
		System.out.println("加值成功, 本次加值: "+ value + "元");
		return money;
	}
	void deduMoney(int value) {
		money -= value;
		System.out.println("扣款成功, 本次扣款: "+ value + "元");
		System.out.println("卡片卡號: "+ id +", 餘額:"+ money + "元");
	}
}

public class card {

	public static void main(String[] args) {
		
		
		System.out.println("建立一個IcCard類別的物件, 名為Jack_Card,呼叫建構子，使用預設值");
		IcCard Jack_Card = new IcCard();
		
		
		System.out.println("外部讀取卡片餘額: "+ Jack_Card.money + "元");
		
		Jack_Card.showInfo();
		
		int amount = Jack_Card.addMoney(99);
		System.out.println("儲值後傳回之卡片餘額: "+ amount + "元");
		
		Jack_Card.deduMoney(50);
		
		System.out.println("\n建立一個IcCard類別的物件, 名為Amy_Card,呼叫建構子，傳入自訂初始值");
		IcCard Amy_Card = new IcCard(109000001,100);
		System.out.println("外部讀取卡片餘額: "+ Amy_Card.money + "元");
		
		Amy_Card.showInfo();
		
		amount = Amy_Card.addMoney(1000);
		System.out.println("儲值後傳回之卡片餘額: "+ amount + "元");
		
		Amy_Card.deduMoney(99);
	}

}
