import java.util.Scanner;

public class ex1 {

	public static void main(String[] args) {
		
		Scanner keyin = new Scanner(System.in);
		int n=0;
		String str,x,y;
		System.out.print("輸入數學運算式");
		str = keyin.nextLine();
		
		if(str.indexOf("+")!=-1) {
			String[] splitarray=str.split("\\+");
			x=splitarray[0];
			y=splitarray[1];
			n=Integer.parseInt(x) + Integer.parseInt(y);
			System.out.print(str+"="+n);
		}
		else if(str.indexOf("-")!=-1){
			String[] splitarray=str.split("\\-");
			x=splitarray[0];
			y=splitarray[1];
			n=Integer.parseInt(x) - Integer.parseInt(y);
			System.out.print(str+"="+n);
		}
		else if(str.indexOf("*")!=-1){
			String[] splitarray=str.split("\\*");
			x=splitarray[0];
			y=splitarray[1];
			n=Integer.parseInt(x) * Integer.parseInt(y);
			System.out.print(str+"="+n);
		}
		else if(str.indexOf("/")!=-1){
			String[] splitarray=str.split("\\/");
			x=splitarray[0];
			y=splitarray[1];
			n=Integer.parseInt(x) / Integer.parseInt(y);
			System.out.print(str+"="+n);
		}
		keyin.close();
	}
}
