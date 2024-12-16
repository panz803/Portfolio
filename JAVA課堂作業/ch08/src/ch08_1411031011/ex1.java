package ch08_1411031011;

import java.util.Scanner;

public class ex1 {

	public static void main(String[] args) {
		Scanner keyin = new Scanner(System.in);
		String a,b;
		int x,y,z;
		try {
			System.out.print("請輸入兩個整數(以空白間隔)=>");
			a = keyin.next();
			b = keyin.next();
			x = Integer.parseInt(a);
			y = Integer.parseInt(b);
			z = x/y;
			System.out.printf("%d",z);
		}
		catch(ArithmeticException e){
			System.out.println("例外內容:"+e.toString());
			System.out.println("為:數學運算錯誤，如除數為0");
			
		}
		catch(NumberFormatException e){
			System.out.println("例外內容:"+e.getMessage());
			System.out.println("為:字串轉換成整數發生錯誤");
			
		}
		catch(Exception e){
			System.out.println("例外內容:"+e.toString());
			System.out.println("例外發生!");
			
		}
		finally {
			System.out.println("\n離開try...catch，程式結束!");
			keyin.close();
		}
	}

}
