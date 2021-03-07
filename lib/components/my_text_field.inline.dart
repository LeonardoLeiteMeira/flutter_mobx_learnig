import 'package:flutter/material.dart';

Widget myTextFieldInline(String label, 
  Function onChangeFn, 
  Function onSubmittedHandle, 
  String Function() errorHandle,
  TextInputType keyboardType)=> 
  
  Padding(
    padding: const EdgeInsets.all(8.0),
  child: TextField(
    keyboardType: keyboardType,
    decoration: InputDecoration(
        labelText: label,
        errorText: errorHandle == null ? null : errorHandle()),
    onChanged: onChangeFn,
    onSubmitted: onSubmittedHandle,
  ),
);