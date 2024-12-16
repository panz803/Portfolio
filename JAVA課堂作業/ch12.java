
public class ex1 {

	public static void main(String[] args) {
		int max=49,min=1,x=7;
		ex1 c=new ex1();
		int ans[]=new int[x];
		System.out.println("上一期大樂透開獎號碼如下:");
		getRndSt(min,max,x,ans);
		System.out.println("\n本期大樂透開獎號碼如下:");
		c.getRnd(min, max, x, ans);
	}
	
	static void getRndSt(int min,int max,int x,int[] ans) {
		int[] num = new int[max];
		int a;
		for(int i=0;i<max;i++)
			num[i]=i+1;
		for(int i=0;i<x;i++) {
			a=(int)(Math.random()*max-1);
			ans[i]=num[a];
			num[a]=num[max-1];
			max--;
		}
		for(int i=0;i<x-1;i++)
			System.out.printf("%d ",ans[i]);
		System.out.printf("\n特別號:"+ans[x-1]);
	}
	
	void getRnd(int min,int max,int x,int[] ans) {
		int[] num = new int[max];
		int a;
		for(int i=0;i<max;i++)
			num[i]=i+1;
		for(int i=0;i<x;i++) {
			a=(int)(Math.random()*max-1);
			ans[i]=num[a];
			num[a]=num[max-1];
			max--;
		}
		for(int i=0;i<x-1;i++)
			System.out.printf("%d ",ans[i]);
		System.out.printf("\n特別號:"+ans[x-1]);
	}
}
