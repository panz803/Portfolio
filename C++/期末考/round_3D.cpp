#include<iostream>
#include<stdexcept>
#include"rect_3D.h"

using namespace std;
rect_3d::rect_3d(double l, double h){
    setradius(l);
    setheight(h);
}

void rect_3d::setheight(const double h){
    height = h;
}

double rect_3d::getheight(){
    return height;
}

//Åé¿n­pºâ¡G¥b®|*¥b®|*3.14*°ª
double rect_3d::compute_volume() const{
    return radius * radius * 3.14 * height;
}

