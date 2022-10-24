import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:untitled4_clases7/pages/login2_page.dart';
import 'package:untitled4_clases7/ui/colors.dart';

class LoginPage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColorLogin1,
      body: Stack(
        children: [
          Stack(
            children: [
              Positioned(
                  top: -50,
                  left: 50,
                  child: Transform.rotate(
                    angle: pi / -3,
                    child: Container(
                      width: 200,
                      height: 60,
                      decoration: BoxDecoration(
                          color: kSecondaryLogin1,
                          borderRadius: BorderRadius.circular(14.0)),
                    ),
                  ))
            ],
          ),
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: SafeArea(child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 40,
                  ),
                  Container(
                    padding: EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                      color: kSecondaryLogin1.withOpacity(0.16),
                      shape: BoxShape.circle
                    ),
                    child: 
                    Icon(Icons.home_outlined,color: kSecondaryLogin1,size: 38,),
                    
                  ),
                  SizedBox(height: 30.0,),
                  Text("Let's log you in",style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold
                  ),),
                  SizedBox(
                    height: 8.0,
                  ),
                  Text("Welcome back you're been missed!",style: TextStyle(
                    color: Colors.white54,
                    fontWeight: FontWeight.bold,
                    fontSize: 14.0,
                  ),),
                  SizedBox(height: 36,),
                  Row(
                    children: [
                      Expanded(

                        child: SizedBox(
                          height: 50.0,
                          child: ElevatedButton.icon(onPressed: () {

                          }, style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xffEA4335),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12.0)
                            )
                          ), icon: SvgPicture.asset('assets/images/google.svg',
                          color: Colors.white,), label: Text("Google")),
                        ),
                      ),
                      SizedBox(width: 16.0,),
                      Expanded(
                        child: SizedBox(
                          height: 50.0,
                          child: ElevatedButton.icon(onPressed: () {

                          },style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12.0)
                              )
                          ), icon: SvgPicture.asset('assets/images/facebook.svg',color: Colors.white,), label: Text("Facebook")),
                        ),
                      ),


                    ],
                  ),
                  SizedBox(height: 20.0,),
                  TextField(

                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(horizontal: 12.0,vertical: 14.0),
                      hintText: "Username",
                      hintStyle: TextStyle(
                        color: Colors.white70,
                        fontSize: 14.0
                      ),
                      filled: true,
                      fillColor: Colors.white.withOpacity(0.1),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0),
                        borderSide: BorderSide.none
                      ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12.0),
                            borderSide: BorderSide.none
                        )
                    ),
                  ),
                  SizedBox(height: 18.0,),
                  TextField(

                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(horizontal: 12.0,vertical: 14.0),
                        hintText: "Email Adress",
                        hintStyle: TextStyle(
                            color: Colors.white70,
                            fontSize: 14.0
                        ),
                        filled: true,
                        fillColor: Colors.white.withOpacity(0.1),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12.0),
                            borderSide: BorderSide.none
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12.0),
                            borderSide: BorderSide.none
                        )
                    ),
                  ),
                  SizedBox(height: 18.0,),
                  TextField(


                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(horizontal: 12.0,vertical: 14.0),
                        hintText: "Password",
                        hintStyle: TextStyle(
                            color: Colors.white70,
                            fontSize: 14.0
                        ),
                        filled: true,
                        fillColor: Colors.white.withOpacity(0.1),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12.0),
                            borderSide: BorderSide.none
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12.0),
                            borderSide: BorderSide.none
                        )
                    ),
                  ),
                  SizedBox(height: 30,),

                  SizedBox(
                    height: 50,
                    width: double.infinity
                    ,child: ElevatedButton(onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Login2Page(),));
                    },style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0),

                      ),
                      backgroundColor: kSecondaryLogin1,
                    ), child: Text("Sign Up")),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don't have on Account?  ",
                      style: TextStyle(
                        color: Colors.grey
                      ),),
                      TextButton(onPressed: () {

                        
                      }, child: Text("Sign in"))
                    ],
                  )




                ],

              )),
            ),
          )
        ],
      ),
    );
  }
}
