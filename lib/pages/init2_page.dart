import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:untitled4_clases7/pages/challenge1_page.dart';

class Init2Page extends StatelessWidget {
  const Init2Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.network(
            "https://images.pexels.com/photos/2499802/pexels-photo-2499802.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
            fit: BoxFit.cover,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 36.0),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30.0),
                    topLeft: Radius.circular(30.0),
                  ),
                ),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 14.0,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        hintText: "Username",
                        hintStyle: const TextStyle(
                          fontSize: 14.0,
                          color: Colors.black45,
                        ),
                        filled: true,
                        fillColor: const Color(0xffF5F5F5),
                        contentPadding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 14.0),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                          borderSide: BorderSide.none,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 14.0,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        hintText: "Password",
                        hintStyle: const TextStyle(
                          fontSize: 14.0,
                          color: Colors.black45,
                        ),
                        filled: true,
                        fillColor: const Color(0xffF5F5F5),
                        contentPadding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 14.0),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                          borderSide: BorderSide.none,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 12.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text("Forgot password?",),
                      ],
                    ),
                    const SizedBox(
                      height: 14.0,
                    ),

                    SizedBox(
                      height: 54.0,
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Challenge1Page(),));
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40.0),
                          ),
                        ),
                        child: Text("Sign in",),
                      ),
                    ),
                    const SizedBox(
                      height: 14.0,
                    ),
                    SizedBox(
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

                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}