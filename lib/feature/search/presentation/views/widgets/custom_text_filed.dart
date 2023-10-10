import 'package:flutter/material.dart';

class CustomTextFiled extends StatelessWidget {
  const CustomTextFiled({super.key, required this.onChange});
  final void Function(String) onChange;
  @override
  Widget build(BuildContext context) {
    return  TextField(
      onChanged:onChange ,
      decoration: const InputDecoration(
          border: OutlineInputBorder(
          ),
          labelText: 'Search',
          prefixIcon: Icon(Icons.search_rounded,),
      ),
    );
  }
}
