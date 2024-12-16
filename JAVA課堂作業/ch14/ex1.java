package ch14;

import java.util.Scanner;

public class ex1 {

	public static void main(String[] args) {
		Scanner keyin = new Scanner(System.in);
		String a = new String();
		String num[];
		String sign = new String("\\+");
		int b=0,i=0;
		System.out.print("請輸入一個整數連加的公式(如：3+20+6 或 7+100+6+90+8):\n");
		a = keyin.nextLine();
		num = a.split(sign);
		try {
			for(i=0;i<num.length;i++) {
				b=b+Integer.parseInt(num[i]);
			}
			System.out.print(a+"="+b);
		}
		catch(ArithmeticException e){
			System.out.print(e.toString());
		}
		catch(NumberFormatException e){
			System.out.print(e.getMessage());
		}
		finally {
			System.out.print("\n離開try…catch，程式結束");
			keyin.close();
		}
	}
}
