import 'package:flutter/material.dart';

class ErrorMessage extends StatelessWidget {
  const ErrorMessage({super.key, required this.errIcon, required this.errMessage});
  final IconData errIcon;
  final String errMessage;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(errIcon,size: 30),
        const SizedBox(width: 10,),
        Expanded(child: Text(errMessage,style: const TextStyle(fontSize: 20),)),
      ],
    );
  }
}
