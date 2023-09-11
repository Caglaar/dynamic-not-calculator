import 'package:dynamic_avarage_not/constants/constantsClass.dart';
import 'package:dynamic_avarage_not/helper/dataHelper.dart';
import 'package:flutter/material.dart';

class AktsDropDownButton extends StatefulWidget {
  final Function selectedAkts;
  const AktsDropDownButton({required this.selectedAkts,super.key});

  @override
  State<AktsDropDownButton> createState() => _AktsDropDownButtonState();
}

class _AktsDropDownButtonState extends State<AktsDropDownButton> {
  double akts = 1;
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
          value: akts,
          onChanged:(value) {
            setState(() {
              akts = value!;
              widget.selectedAkts(akts);
            });
          },
          underline: Container(),
          items: DataHelper.allLessonAKTS(),
          ),
      );
  }
}