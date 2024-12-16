package ch11_1411031011;

import java.util.Scanner;

public class ex1 {

	public static void main(String[] args) {
		Scanner keyin = new Scanner(System.in);
		double z;
		System.out.printf("請輸入第1點座標xy(空白隔開):");
		double x1 = keyin.nextDouble();
		double y1 = keyin.nextDouble();
		System.out.printf("請輸入第2點座標xy(空白隔開):");
		double x2 = keyin.nextDouble();
		double y2 = keyin.nextDouble();
		z = Math.sqrt(Math.pow((x1-x2),2)+Math.pow((y1-y2),2));
		System.out.printf("兩點座標的距離為:%.2f",z);
		keyin.close();
	}

}
