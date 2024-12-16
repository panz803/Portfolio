package ch10_1411031011;

public class Ccar {
	public double gas, tbo;
	public double max_dist = 0;
	
	public void MaxDist() {
		max_dist = gas * tbo;
	}
	
	public double Dist(double oil) {
		return oil * tbo;
	}
}
