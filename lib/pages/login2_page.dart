
import 'package:flutter/material.dart';
import 'package:untitled4_clases7/pages/init_page.dart';

import '../widgets/circle_widget.dart';

class Login2Page extends StatelessWidget {
  const Login2Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size.height);
    print(MediaQuery.of(context).size.width);

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Color(0xffFBF5FF),
      body: Stack(
        children: [
          //Fondo
          Stack(
            children: [
              Positioned(
                right: -100,
                top: -80,
                child: CircleWidget(
                  radius: height * 0.20,
                  colors: [
                    Color(0xffD94E8E),
                    Color(0xffE98DB7),
                  ],
                ),
              ),
              Positioned(
                bottom: -130,
                left: -100,
                child: CircleWidget(
                  radius: 140,
                  colors: [
                    Color(0xff564293),
                    Color(0xff9D8AD9),
                  ],
                ),
              ),
              Positioned(
                left: 20,
                top: 40,
                child: CircleWidget(
                  radius: 22,
                  colors: [
                    Color(0xffD94E8E),
                    Color(0xffE98DB7),
                  ],
                ),
              ),
              Positioned(
                top: height * 0.4,
                right: width * 0.12,
                child: CircleWidget(
                  radius: 16,
                  colors: [
                    Color(0xff564293),
                    Color(0xff9D8AD9),
                  ],
                ),
              ),
            ],
          ),
          //Formulario

          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(28.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(child: Text("Create Your Account!",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 40,
                    color: Color(0xff725EAE)
                  ),)),
                  SizedBox(height: 20,),
                  TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.email, color:Color(0xff725EAE).withOpacity(0.5) ,),
                      hintText: "Email address",
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock, color:Color(0xff725EAE).withOpacity(0.5) ,),
                      hintText: "Password",
                      suffixIcon: Icon(Icons.visibility_off,color:Color(0xff725EAE).withOpacity(0.5))
                    ),
                  ),
                  SizedBox(
                    height: 50.0,
                  ),
                  Container(
                    height: 56.0,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40.0),
                      boxShadow: [
                        BoxShadow(
                            color: const Color(0xffD94E8E).withOpacity(0.65),
                            offset: const Offset(0, 4),
                            blurRadius: 12.0),
                      ],
                      gradient: const LinearGradient(
                        colors:  [
                          Color(0xffE98DB7),
                          Color(0xffD94E8E),
                        ],
                      ),
                    ),
                    child: MaterialButton(
                      child: Text(
                        "Create Account",
                      ),
                      textColor: Colors.white,
                     // shape: RoundedRectangleBorder(
                         //borderRadius: BorderRadius.circular(40.0)),
                      onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => InitPage(),));
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}