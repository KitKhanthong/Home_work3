//top-level variable
import 'dart:math';
import 'package:flutter/foundation.dart';

int a = 10;

//top-level function
void main(){
  //type inference
  var i = 90;
  var j = "hello";

  //interpolate การแทรกค่า
  j = "hello $i";
  if(kDebugMode){
    print(j);
  }

  List myList = [1, 2, 3]; //array
  //var r = Random();
  Random r = new Random();

  //dynamic x;
  var x;
  x = 1;
  x = "GG";
  //print(x.toLowerCase());
  int? y = null;
       y = 1;
  int z = y!; // ! คือไม่ใช่ null แน่นอน
}