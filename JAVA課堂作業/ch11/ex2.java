package ch11_1411031011;

import java.util.Arrays;

public class ex2 {

    public static double getMid1(double...n) {
        Arrays.sort(n);
        if(n.length%2==1)
            return n[n.length/2];
        else {
            int midIndex1=n.length/2-1;
            int midIndex2=n.length/2;
            return(n[midIndex1]+n[midIndex2])/2;
        }
    }

    public double getMid2(double[] n) {
        Arrays.sort(n);
        if(n.length%2==1)
            return n[n.length/2];
        else {
            int midIndex1=n.length/2-1;
            int midIndex2=n.length/2;
            return(n[midIndex1]+n[midIndex2])/2;
        }
    }

    public static void main(String[] args) {
        double[]n1= {1.2,7.5,4.5,5.6,8.1};
        double[]n2= {1.2,7.5,4.5,5.6};

        System.out.printf("%.2f\n",getMid1(6,3,4,2,5,1));
        System.out.printf("%.2f\n",getMid1(3,4,2,5,1));

        ex2 get = new ex2();
        System.out.printf("%.2f\n",get.getMid2(n1));
        System.out.printf("%.2f\n",get.getMid2(n2));
    }

}