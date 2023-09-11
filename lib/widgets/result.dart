import 'package:dynamic_avarage_not/constants/constantsClass.dart';
import 'package:dynamic_avarage_not/helper/dataHelper.dart';
import 'package:flutter/material.dart';

Widget ResultWidget()
  {
    double notAverage = DataHelper.notAvarage();
    String formattedNotAverage = notAverage.toStringAsFixed(2);
    return Center(
      child: Column(
        children: [
          Text("${DataHelper.leng()} Ders Girildi",style: Constansts.resultTextStyle,),
          Text("${formattedNotAverage}",style: Constansts.result2TextStyle,),
          Text("Ortalama",style: Constansts.resultTextStyle,)
        ]
        ),
    );
  }