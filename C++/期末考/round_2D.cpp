#include<iostream>
#include<stdexcept>
#include"round_2D.h"

using namespace std;
round_2d::round_2d(const double l){
    setradius(l);
}

void round_2d::setradius(const double l){
    radius = l;
}

double round_2d::getradius(){
    return radius;
}

//­±¿n­pºâ¡G¥b®|*¥b®|*3.14 
double round_2d::compute_area() const{
    return radius * radius * 3.14;
}
