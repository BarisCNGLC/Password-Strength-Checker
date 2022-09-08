// ignore_for_file: public_member_api_docs, sort_constructors_first, prefer_const_constructors, file_names, must_be_immutable, avoid_unnecessary_containers
import 'package:flutter/material.dart';

class PasswordWidget extends StatelessWidget {

  Color colorKotu;
  String state;
  
  PasswordWidget({
    Key? key,
    required this.colorKotu,
    required this.state,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double genislik = MediaQuery.of(context).size.width;
    return Container(
                child: Row(
                  children: [
                    Container(
                      width: genislik*0.8,
                      height: 30,
                      decoration: BoxDecoration(
                        color: colorKotu,
                        borderRadius: BorderRadius.all(Radius.circular(10))
                      ),
                      child: Center(
                        child: Text(
                          state,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),)),
                    )
                  ])
    );
}}
