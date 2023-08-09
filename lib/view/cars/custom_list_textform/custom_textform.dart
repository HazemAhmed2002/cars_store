import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomListTextForm extends StatelessWidget {
  CustomListTextForm({super.key});

  List<TextInputType> keyboardType = [
    TextInputType.phone,
    TextInputType.name,
    TextInputType.text,
    TextInputType.text,
  ];

  List<String> label = [
    "Phone number",
    "Name",
    "City",
    "City",
  ];

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: List.generate(
        label.length,
        (index) => TextFormField(
          keyboardType: keyboardType[index],
          decoration: InputDecoration(
            suffix: const CircleAvatar(
              radius: 12,
              child: Icon(
                Icons.close,
                size: 17,
              ),
            ),
            label: Text(
              label[index],
              style: TextStyle(fontSize: 14.sp, color: const Color(0xff8E8E93)),
            ),
          ),
        ),
      ),
    );
  }
}
