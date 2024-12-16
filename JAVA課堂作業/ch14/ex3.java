package ch14;

class BasePay
{
	protected int hours;
	protected int rate;
	BasePay()
	{
		hours=0;
		rate=168;
	}
	BasePay(int a, int b)
	{
		hours=a;
		rate=b;
	}
	void setValue(int c, int d)
	{
		hours=c;
		rate=d;
	}
	int hourPay()
	{
		
		return hours*rate;
	}	
}
class Amount extends BasePay
{
	protected int bonus;
	Amount(int g, int h)
	{
		super.hours=g;
		super.rate=h;
	}
	void setBonus(int i)
	{
		bonus=i;
	}
	int totPay()
	{
		int n= hourPay();
		return n + bonus;
	}
}

public class ex3 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		 Amount Peter = new Amount(10,176);
	     Amount Tom = new Amount(10,168);
	     System.out.println("Peter薪資總額:"+Peter.totPay());
	     System.out.println("Tom薪資總額:"+Tom.totPay());
	     Peter.setValue(20,176);
	     Tom.setValue(15,168);
	     Tom.setBonus(200);
	     System.out.println("Peter薪資總額:"+Peter.totPay());
	     System.out.println("Tom薪資總額:"+Tom.totPay());
	}
}