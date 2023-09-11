import 'package:dynamic_avarage_not/constants/constantsClass.dart';
import 'package:dynamic_avarage_not/helper/dataHelper.dart';
import 'package:flutter/material.dart';

class LessonList extends StatelessWidget {
  final Function onDismess;
  const LessonList({required this.onDismess,super.key});

  @override
  Widget build(BuildContext context) {
    return DataHelper.allLessons.length > 0 ? Container(
            
            child: ListView.builder(
              itemCount: DataHelper.allLessons.length,
              itemBuilder: (context, index) {
                return Dismissible(
                  key: UniqueKey(),
                  direction: DismissDirection.startToEnd,
                  onDismissed: (a) {
                    onDismess(index);
                  },
                  child: Padding(
                    padding: EdgeInsets.all(5),
                    child: Card(
                      color: Constansts.mainColor.shade100,
                      elevation: 10,
                      child: ListTile(
                        leading: CircleAvatar(
                          child: Text("${DataHelper.allLessons[index].name.substring(0,1).toUpperCase()}",style: TextStyle(color: Colors.white),),
                          backgroundColor: Constansts.mainColor,
                        ),
                        title: Text("${DataHelper.allLessons[index].name}"),
                        subtitle: Text("AKTS Değeri : ${DataHelper.allLessons[index].akts} Not Değeri : ${DataHelper.allLessons[index].not}"),
                      ),
                    ),
                  ),
                );
              },
            ),
          ): Container(child: Center(child: Text("Enter the Lesson" ,style: Constansts.headTextStyle,)),);
  }
}