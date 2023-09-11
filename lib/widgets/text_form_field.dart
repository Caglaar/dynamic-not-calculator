import 'package:dynamic_avarage_not/constants/constantsClass.dart';
import 'package:flutter/material.dart';

class LessonName extends StatefulWidget {
  final Function onName;
  const LessonName({required this.onName,super.key});

  @override
  State<LessonName> createState() => _LessonNameState();
}

class _LessonNameState extends State<LessonName> {
  String? name;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
          decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: Constansts.borderRadius,borderSide: BorderSide.none),
            labelText: "Course Name",
            labelStyle: TextStyle(color: Colors.black),
            filled: true,
            fillColor: Constansts.mainColor.shade100.withOpacity(0.3),
          ),
          validator: (value) {
            if(value!.isEmpty)
              return "Enter the Course Name";
            else
              return null;
          },
          onSaved: (newValue) {
              name = newValue!;
              widget.onName(name);
          },
      );
  }
}