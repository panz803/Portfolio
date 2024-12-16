#include<iostream>
#include<stdexcept>
#include"round_2D.h"
#include"rect_3D.h"

using namespace std;
int main(void){
    double radius;
    double height;
    cout <<"請輸入圓的半徑："<< endl;
    cout << "半徑=";
    cin >> radius;
    round_2d userenter(radius);
    cout <<"-------------------------------------------------"<< endl;
    cout << "請輸入圓柱體的高:"<< endl;
    cout << "高度=";
    cin >> height;
    rect_3d userenter2(radius, height);
    cout << "-------------------------------------------------" << endl;
    cout << "結果為:\n\n";
    cout << "圓形結果:\n";
    cout << "半徑：" << userenter.getradius() << " cm" << "\n面積為 "
	<< userenter.compute_area() <<" cm2\n"<< endl;
    cout << "圓柱體結果為:\n";
    cout << "半徑：" << userenter2.getradius() << " cm"  << " | 柱體高度：" << userenter2.getheight()
	<< "cm" << "\n體積為 "<< userenter2.compute_volume() <<" cm2\n"<< endl;
    system("pause");
}
