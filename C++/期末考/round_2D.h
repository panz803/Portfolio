#ifndef round2d_H
#define round2d_H

using namespace std;//round_2d的類別(包含6個成員函數與2個資料成員)
class round_2d{
public:
    round_2d(double=0);//建構子
    void setradius(const double);//設定半徑
    double getradius();//取得半徑   
    double compute_area() const;//計算面積
    double radius;//半徑
};
#endif
