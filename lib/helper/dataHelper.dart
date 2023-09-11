import 'package:flutter/material.dart';
import 'package:dynamic_avarage_not/model/course.dart';

class DataHelper {
  static  List<String> nots() {
    return["AA","BA","BB","CB","CC","DC","DD","FF"];
  }
  static double _changeNots(String not)
  {
    switch (not) {
      case "AA": return 4;
      case "BA": return 3.5;
      case "BB": return 3;
      case "CB": return 2.5;
      case "CC": return 2;
      case "DC": return 1.5;
      case "DD": return 1;
      case "FD": return 0.5;
      case "FF": return 0;
      default: return 0;
    }
  } 
  static  List<int> akts () {
    return [1,2,3,4,5,6,7,8,9,10];
    }

  static List<DropdownMenuItem<double>> allLessonNotsAlp()
  {
    return nots().map((e) => DropdownMenuItem(child: Text(e), value: _changeNots(e),),).toList();
  }
  static List<DropdownMenuItem<double>> allLessonAKTS()
  {
    return akts().map((e) => DropdownMenuItem(child: Text(e.toString()),value:(e.toDouble()),),).toList();
  }


  static List<Courese> allLessons = [];

  static void addList(Courese newlist)
  {
    allLessons.add(newlist);
  }

  static double notAvarage()
  {
    if(allLessons.length == 0)
      return 0;
    double totalNot = 0 ;
    double totalAkts = 0;
    for (var element in allLessons) {
      totalNot += element.not * element.akts;
      totalAkts += element.akts;
    }
    return totalNot / totalAkts;
  }

  static int? leng ()
  {
    if(allLessons.length == 0)
      return 0;
    else
      return allLessons.length;
  }
}