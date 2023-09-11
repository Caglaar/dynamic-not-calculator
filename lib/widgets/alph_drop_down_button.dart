import 'package:dynamic_avarage_not/constants/constantsClass.dart';
import 'package:dynamic_avarage_not/helper/dataHelper.dart';
import 'package:flutter/material.dart';

class AlphDropwDownWidget extends StatefulWidget {
  final Function selectedNot;
  const AlphDropwDownWidget({required this.selectedNot,super.key});
  @override
  State<AlphDropwDownWidget> createState() => _AlphDropwDownWidgetState();
}

class _AlphDropwDownWidgetState extends State<AlphDropwDownWidget> {
  double not = 4;
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 8 ,horizontal: 16),
        decoration: BoxDecoration(
          color: Constansts.mainColor.shade100.withOpacity(0.3),
          borderRadius: Constansts.borderRadius,
          
        ),
        child: DropdownButton<double>(
          isExpanded: true,
          dropdownColor: Constansts.mainColor.shade100.withOpacity(1),
          elevation: 16,
          iconEnabledColor: Constansts.mainColor,
          value: not,
          onChanged:(value) {
            setState(() {
              not = value!;
              widget.selectedNot(not);
            });
          },
          underline: Container(),
          items: DataHelper.allLessonNotsAlp(),
          ),
      );
  }
}