import 'package:flutter/material.dart';

class ChangeSize extends ChangeNotifier{
double height=30;
double width=30;

  void increment(){
    if(width<=70&&height<=70){
    width=width*2;
    height=height*2;}
    notifyListeners();
  }

  void reset(){
    width=30;
    height=30;
    notifyListeners();
  }
}