import 'package:flutter/material.dart';

class Screen3 extends StatefulWidget {
  const Screen3({super.key});

  @override
  State<Screen3> createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
                top: 10,
                left: 1300,
            ),
            child: Row(
              children: [
                Text('Gmail',style: TextStyle(
                    color:Color(0xff6F7375)
                ),),
                SizedBox(
                  width: 20,
                ),
                Text('Images',style: TextStyle(
                    color:Color(0xff6F7375)
                ),),
                SizedBox(
                  width: 20,
                ),
                Icon(Icons.apps_rounded,color:Color(0xff6F7375)),
                SizedBox(
                  width: 20,
                ),

              ],
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Image.asset('asset/image/google.png',height: 90,),
          SizedBox(
            height: 30,
          ),
          Container(
            height: 45,
            width: 580,
            child: TextField(
              cursorColor: Colors.black,
              cursorWidth: 0.5,
              cursorHeight: 24,
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                  borderSide: BorderSide(
                    color: Colors.grey,
                    // color: Color(0xff0C59D0),
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                  borderSide: BorderSide(
                    color: Colors.grey.shade300,
                  ),
                ),
                hintText: 'Search Google or type a URL',
                hintStyle: TextStyle(
                    color: Color(0xff6F7375),
                    fontSize: 15,
                    fontWeight: FontWeight.w100
                ),
                prefixIcon: Icon(Icons.search,color:Color(0xff6F7375)),
                suffixIcon: Icon(Icons.mic,color: Color(0xff6F7375),),

              ),

            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 35,
                width: 130,
                decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    borderRadius: BorderRadius.circular(10)
                ),
                alignment: Alignment.center,
                child: Text(
                  'Google Search',style: TextStyle(
                  fontSize: 14,
                  color: Color(0xff6F7375),
                ),
                ),
              ),
              SizedBox(
                width: 25,
              ),
              Container(
                height: 35,
                width: 130,
                decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    borderRadius: BorderRadius.circular(10)
                ),
                alignment: Alignment.center,
                child: Text(
                  "I'm Feeling Lucky",style: TextStyle(
                  fontSize: 14,
                  color: Color(0xff6F7375),
                ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Text.rich(
            TextSpan(children: [
              TextSpan(
                text: 'New! ',
                style: TextStyle(
                    color: Colors.red,
                    fontSize: 12,
                    fontWeight: FontWeight.w600
                ),
              ),
              TextSpan(
                text: 'Google ',
                style: TextStyle(
                    color: Color(0xff6F7375),
                    fontSize: 12,
                    fontWeight: FontWeight.w600
                ),
              ),
              TextSpan(
                text: 'Pixel 8a. ',
                style: TextStyle(
                  color: Color(0xff391990),
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                ),
              ),
              TextSpan(
                text: 'The AI Phone, feachring Circle to Search',
                style: TextStyle(
                    color: Color(0xff6F7375),
                    fontSize: 12,
                    fontWeight: FontWeight.w600
                ),
              ),

            ]),
          ),
          SizedBox(
            height: 25,
          ),
          Text.rich(
            TextSpan(children: [
              TextSpan(
                text: 'Google offered in: ',
                style: TextStyle(
                    color: Color(0xff6F7375),
                    fontSize: 12,
                    fontWeight: FontWeight.w600
                ),
              ),
              TextSpan(
                text: ' हिन्दी বাংলা తెలుగు मराठी தமிழ் ગુજરાતી ಕನ್ನಡ മലയാളം ਪੰਜਾਬੀ',
                style: TextStyle(
                    color: Color(0xff391990),
                    fontSize: 12,
                    fontWeight: FontWeight.w600
                ),
              ),

            ]),
          ),

        ],
      ),
    );
  }
}