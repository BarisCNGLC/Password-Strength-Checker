// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_interpolation_to_compose_strings, file_names, prefer_const_constructors_in_immutables, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:pass_strong_1/Widget/textField.dart';
import 'package:pass_strong_1/Style/style.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
  }

  TextEditingController password = TextEditingController();

  String baslik ="PASSWORD STRENGTH CHECKER";

  @override
  Widget build(BuildContext context) {
    double genislik = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: arkaplan(),
      body: Center(
        child: Container(
          width: genislik*0.8,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.all(3),
                child:Text(baslik,style: style()),
              ),
              SizedBox(height: 50,),
              TextFieldWidget(),
            ],
          ),
        ),
      ),
    );
  }
}