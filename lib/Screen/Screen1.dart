import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../utils/Global.dart';

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}
GlobalKey<FormState>Forkey = GlobalKey();
TextEditingController txtEmail = TextEditingController();

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF0F3F8),
      body: Form(
        key: Forkey,
        child: Align(
          alignment: Alignment.center,
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 100),
                height: 400,
                width: 900,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)
                ),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(
                              top: 30,
                              right: 60
                          ),
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage('asset/image/logo.png'),),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            margin: EdgeInsets.only(
                                top: 15,
                                right: 20
                            ),
                            child: Text('Sign in',style: TextStyle(
                                fontSize: 30
                            ),),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            margin: EdgeInsets.only(
                                top: 10,
                                left: 30
                            ),
                            child: Text('Use your Google Account',style: TextStyle(
                                fontSize: 12,
                                wordSpacing: 1
                            ),),
                          ),
                        )
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 100,left: 300),
                      child: Column(
                        children: [
                          Container(
                            width: 390,
                            child: TextFormField(
                              onChanged: (value) {
                                setState(() {
                                  email = value;
                                });
                              },
                              validator: (value) {
                                bool checkCapital = false;
                                bool checkSpeChar = false;
                                if (value!.isEmpty) {
                                  return 'Enter an email or phone number !';
                                } else if (!value.contains('@gmail.com')) {
                                  return 'Enter Perfect gmail including "@gmail.com" !';
                                } else if (value.contains(' ')) {
                                  return 'Space is not Allow !';
                                } else if (value.length <= 10) {
                                  return 'Enter valid e-mail or phone number';
                                }
                                for (int i = 0; i < value.length; i++) {
                                  if (value[i] != value[i].toLowerCase()) {
                                    checkCapital = true;
                                  }
                                }
                                if (checkCapital) {
                                  return 'Capital Letter is not Allow !';
                                }
                                for (int i = 0; i < value.length; i++) {
                                  int charCode = value.codeUnitAt(i);
                                  if ((charCode >= 32 && charCode <= 45) ||
                                      (charCode == 47) ||
                                      (charCode >= 58 && charCode <= 63) ||
                                      (charCode >= 91 && charCode <= 96) ||
                                      (charCode >= 123 && charCode <= 126)) {
                                    checkSpeChar = true;
                                  }
                                }
                                if (checkSpeChar) {
                                  return 'Special character is not Allow !';
                                }
                              },
                              textInputAction: TextInputAction.next,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: BorderSide(
                                    color: Colors.red,
                                    width: 1,
                                  ),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide: BorderSide(
                                      color: Colors.grey,
                                      width: 1
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide: BorderSide(
                                      color: Color(0xff0C59D0),
                                      width: 2
                                  ),
                                ),
                                labelText: 'Email or Phone',
                                labelStyle: TextStyle(
                                  color: Colors.grey.shade500,
                                  fontSize: 15,
                                ),
                              ),
                              controller: txtEmail,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                right: 290,
                                top: 10
                            ),
                            child: Text('Forgot Password?',style: TextStyle(
                              fontSize: 12,
                              color: Color(0xff0C59D0),
                            ),),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                right: 80,
                                top: 70
                            ),
                            child: Text('Not your computer? Use Guest mode to sign in privately.',style: TextStyle(
                              fontSize: 12,
                            ),),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              right: 190,
                            ),
                            child: Text('Learn more about using Guest mode',style: TextStyle(
                                fontSize: 12,
                                color: Color(0xff0C59D0),
                                fontWeight: FontWeight.bold
                            ),),
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    right: 40,
                                    top: 40,
                                    left: 200
                                ),
                                child: Text('Create account',style: TextStyle(
                                    fontSize: 12,
                                    wordSpacing: 2,
                                    color: Color(0xff0C59D0),
                                    fontWeight: FontWeight.bold
                                ),),
                              ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    click = !click;
                                    if (click) {
                                      btnColor = Color(0xff0C59D0);
                                      txtColor = Colors.white;
                                    } else {
                                      btnColor = Colors.grey.shade200;
                                      txtColor = Colors.black;
                                    }

                                    bool response = Forkey.currentState!.validate();
                                    if(response)
                                    {
                                      email = txtEmail.text;
                                      // pass = txtPassword.text;
                                      Navigator.of(context).pushNamed('/screen2');
                                    }
                                  });

                                },
                                child: Container(
                                  margin: EdgeInsets.only(
                                      top: 40
                                  ),
                                  height: 30,
                                  width: 64,
                                  decoration: BoxDecoration(
                                      color: btnColor,
                                      borderRadius: BorderRadius.circular(20)
                                  ),
                                  alignment: Alignment.center,
                                  child: Text('Next',style: TextStyle(
                                      color: txtColor,
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold
                                  ),),
                                ),
                              )
                            ],
                          ),

                        ],
                      ),
                    ),

                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 330,top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text('English(United states)',style: TextStyle(color:Colors.grey.shade700,fontSize: 15)),
                    Icon(Icons.arrow_drop_down_sharp,color:Colors.grey.shade700),
                    SizedBox(width: 540,),
                    Text('Helps',style: TextStyle(color:Colors.grey.shade700,fontSize: 15),),
                    SizedBox(
                      width: 20,
                    ),
                    Text('Privacy',style: TextStyle(color:Colors.grey.shade700,fontSize: 15),),
                    SizedBox(
                      width: 20,
                    ),
                    Text('Terms',style: TextStyle(color:Colors.grey.shade700,fontSize: 15),),
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}


