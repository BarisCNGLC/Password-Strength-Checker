// ignore_for_file: public_member_api_docs, sort_constructors_first, prefer_const_constructors, must_be_immutable, unused_local_variable, avoid_print
import 'package:flutter/material.dart';
import 'package:pass_strong_1/Widget/PasswordWidget.dart';

class TextFieldWidget extends StatefulWidget {

  

  @override
  State<TextFieldWidget> createState() => _TextFieldWidgetState();
  
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  TextEditingController password=TextEditingController();
  Color colorKotu=Colors.red;
  String state="ENTER YOUR PASSWORD";
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
                    controller: password,
                    onChanged: (value) {
                    var lowerPassword = value.contains(RegExp('(?=.*[a-z])'));
                    var strongPassword = value.contains(RegExp('(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.{8,})'));
                    var mediumPassword = value.contains(RegExp('((?=.*[a-z])(?=.*[0-9])(?=.*[^A-Za-z0-9])(?=.{6,}))|((?=.*[a-z])(?=.*[A-Z])(?=.*[^A-Za-z0-9])(?=.{8,}))'));
                      var buyukharfVarmi= value.contains(RegExp(r'[A,Z]'));
                         colorKotu=Colors.red;
                          
                      if(strongPassword ==true && mediumPassword == true && lowerPassword ==true){
                        state="STRONG";
                        colorKotu=Colors.green;
                      }
                       if(strongPassword ==false && mediumPassword == true && lowerPassword ==true){
                        state="MEDIUM";
                        colorKotu=Colors.amber;
                      }
                      if(strongPassword ==false && mediumPassword == false && lowerPassword ==true){
                        state="WEAK";
                        colorKotu=Colors.red;
                      }
                      if(strongPassword ==false && mediumPassword == false && lowerPassword ==false){
                        state="ENTER YOUR PASSWORD";
                      }
                      setState(() {
                        
                      });
                    },
                    
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(2)),
                        borderSide: BorderSide(
                            color:Colors.greenAccent,
                            width: 3,
                          )
                      ),
                      labelText: 'Enter your password',
                    ),
                    style: TextStyle(
                      
                      fontSize: 16,
                      color: Colors.black
                    ),
                  ),
            SizedBox(height: 10,),
            PasswordWidget(colorKotu: colorKotu, state: state)

      ],
    );
  }
}
