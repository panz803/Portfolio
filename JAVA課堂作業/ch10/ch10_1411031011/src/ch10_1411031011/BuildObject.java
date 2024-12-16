package ch10_1411031011;

public class BuildObject {

	public static void main(String[] args) {
		Ccar car1;
		car1 = new Ccar();
		car1.gas = 40.7;
		car1.tbo = 13.6;
		car1.MaxDist();
		double distance = car1.Dist(10);
		
		Ccar car2 = new Ccar();
		car2.gas = 60;
		car2.tbo = 9.5;
		
		System.out.println("car1汽車資訊:");
		System.out.println("最大載油量:" + car1.gas + " L");
		System.out.println("平均耗油量:" + car1.tbo + " km/L");
		System.out.println("加滿油可行駛 " + car1.max_dist + " km");
		System.out.println("加滿10L可行駛 " + distance + " km");
	}

}
