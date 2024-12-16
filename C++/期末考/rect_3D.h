#ifndef round3d_H
#define round3d_H
#include"round_2D.h"

using namespace std;/*繼承類別的宣告方法為「衍生類別：基礎類別」*/
//繼承round_2d類別的rect_3d類別(包含5個成員函數與1個資料成員 + round_2d內的函數與資料成員)

class rect_3d:public round_2d{
public:
    rect_3d(double = 0, double = 0 );//建構子
    void setheight(const double);//設定高度
    double getheight();//取得高度   
    double compute_volume() const;//計算體積
    double height;//高
};
#endif
