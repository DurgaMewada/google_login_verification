import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../utils/Global.dart';
import 'Screen1.dart';

class Screen2 extends StatefulWidget {
  const Screen2({super.key});

  @override
  State<Screen2> createState() => _Screen2State();
}
GlobalKey<FormState>Forkey = GlobalKey();
TextEditingController txtPassword = TextEditingController();

class _Screen2State extends State<Screen2> {
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
                              top: 50,
                              right: 100
                          ),
                          height: 50,
                          width: 100,
                          decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage('asset/image/logo.png'),),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            margin: EdgeInsets.only(
                                top: 15,
                                right: 50
                            ),
                            child: Text('Welcome',style: TextStyle(
                                fontSize: 30,
                              height: 1
                            ),),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            margin: EdgeInsets.only(
                                top: 10,
                                right: 50,
                            ),
                            child: Text('$email',style: TextStyle(
                                fontSize: 12,
                                wordSpacing: 1
                            ),),
                          ),
                        )
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 100,left: 230),
                      child: Column(
                        children: [
                          Container(
                            width: 390,
                            child: TextFormField(
                              validator: (value) {
                                if(value!.isEmpty)
                                {
                                  return "password must be required";
                                }
                                if(value!.length<=8)
                                {
                                  return 'Password must be 8 characters';
                                }

                              },
                              obscureText:  true,
                              textInputAction: TextInputAction.next,
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8),
                                    borderSide: BorderSide(
                                        color: Colors.red,
                                        width: 3,
                                    ),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5),
                                    borderSide: BorderSide(
                                        color: Colors.grey,
                                        // color: Color(0xff0C59D0),
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
                                  labelText: 'Enter your Password',
                                  labelStyle: TextStyle(
                                    color: Color(0xff0C59D0),
                                    fontSize: 15,
                                  )
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                right: 270,
                                top: 10
                            ),
                            child: Row(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      tickBox = !tickBox;
                                      if(tickBox)
                                      {
                                        SuffixIcon = Icons.check_box_outline_blank;
                                      }
                                      else
                                      {
                                        SuffixIcon = (Icons.check_box_outlined);
                                      }
                                    });
                                  },
                                  child: Icon(
                                    SuffixIcon,
                                    size: 22,
                                    color: Colors.black,

                                  ),
                                ),

                                SizedBox(width: 10,),
                                Text('Show Password',style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold
                                ),),
                              ],
                            ),
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    right: 40,
                                    top: 120,
                                    left: 200
                                ),
                                child: Text('Forgot Password?',style: TextStyle(
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
                                      pass = txtPassword.text;
                                      Navigator.of(context).pushNamed('/screen3');
                                    }
                                    if(Forkey.currentState!.validate())
                                    {
                                      ScaffoldMessenger.of(context).showSnackBar(
                                        SnackBar(
                                          content:  Text(
                                            'Account Created Successfuly!',
                                            style: TextStyle(
                                                color: Colors.white
                                            ),
                                          ),
                                          backgroundColor: Colors.green,
                                          duration: Duration(seconds: 5),
                                        ),
                                      );
                                    }
                                  });

                                },
                                child: Container(
                                  margin: EdgeInsets.only(
                                      top: 120
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
