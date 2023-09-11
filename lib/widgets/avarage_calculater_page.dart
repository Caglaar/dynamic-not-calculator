import 'package:dynamic_avarage_not/constants/constantsClass.dart';
import 'package:dynamic_avarage_not/helper/dataHelper.dart';
import 'package:dynamic_avarage_not/model/course.dart';
import 'package:dynamic_avarage_not/widgets/akts_drop_down_button.dart';
import 'package:dynamic_avarage_not/widgets/alph_drop_down_button.dart';
import 'package:dynamic_avarage_not/widgets/lesson_list.dart';
import 'package:dynamic_avarage_not/widgets/result.dart';
import 'package:dynamic_avarage_not/widgets/text_form_field.dart';
import 'package:flutter/material.dart';

class AverageCalculater extends StatefulWidget {
  const AverageCalculater({super.key});

  @override
  State<AverageCalculater> createState() => _nameState();
}

class _nameState extends State<AverageCalculater> {
  GlobalKey<FormState> _textFieldKey = GlobalKey<FormState>();
  String? name;
  double? akts = 1;
  double? not = 4;
  
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      title: Center(child: Text(Constansts.headName,style: Constansts.headTextStyle,),),
      backgroundColor: Colors.transparent,
      elevation: 0,
    ),
    body: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          children: [
            Expanded(
              flex: 2,
              child: Container(
              child: _buildForm(),
                       ),
            ),
            Expanded(
              flex: 1,
              child: Container(
              child: ResultWidget(),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 5,
        ),
        Expanded(
          child: LessonList(
            onDismess: (index)
            {
              DataHelper.allLessons.removeAt(index);
              setState(() {
                
              });
              
            },
          ),
        )
      ]
      ),
  );
  }
  
  Widget _buildForm() 
  {
    return Form(
      key: _textFieldKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Padding(
            padding: Constansts.padding,
            child: LessonName(
              onName: (value){
                name = value;
              },
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Padding(
                  padding: Constansts.padding,
                  child: AlphDropwDownWidget(
                    selectedNot: (alph){
                      not = alph;
                    },
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: Constansts.padding,
                  child: AktsDropDownButton(
                    selectedAkts: (value){
                      akts = value;
                    },
                  ),
                ),
              ),
              IconButton(
                onPressed: ()
                {
                  if(_textFieldKey.currentState!.validate())
                  {
                    _textFieldKey.currentState!.save();
                    Courese newLess = Courese(name!, akts!, not!);
                    setState(() {
                      DataHelper.addList(newLess);
                      _textFieldKey.currentState!.reset();
                    });

                  }
                },
                iconSize: 30,
                icon: Icon(Icons.arrow_forward_ios_outlined,color: Constansts.mainColor,)
              ),

            ],
          )
        ]
        ),
    );
   }
   
    
  
  
  
  
}