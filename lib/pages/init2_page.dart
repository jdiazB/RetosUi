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
          SafeArea(
            child: Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(Icons.navigate_before)),
                        GestureDetector(
                          onTap: () {

                            print("registrase");
                          },
                          child: Text("Register",style: TextStyle(
                            fontSize: 15,fontWeight: FontWeight.normal
                          ),
                              ),
                        ),
                      ],
                    ),
                    SizedBox(height: 30,),
                    Text("Sign In",style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 30,

                    ),),
                    Text("Lorem ipsum asadadasdasdasdadasdadadasdasdadasdasdasdaddadashfhfhfhfhf")

                  ],
                ),

              ),
            ),
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
                      height: 60.0,
                    ),
                    Container(
                      margin: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 20,
                            offset: Offset(4,   4)
                          )
                        ]

                      ),
                      child: ListTile(
                        onTap: () {
                          print("ingresar");
                        },
                        
                        leading: CircleAvatar(backgroundImage: NetworkImage("https://foroalfa.org/imagenes/ilustraciones/g-1.jpg",),radius: 30),
                        title: Text("Continue with Google",style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14
                        ),),
                        trailing: Icon(Icons.trending_flat,color: Colors.black,size: 25,),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      margin: EdgeInsets.all(7),
                      padding: EdgeInsets.only(left: 12),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black12,
                                blurRadius: 20,
                                offset: Offset(4,   4)
                            )
                          ]

                      ),
                      child: ListTile(
                        onTap: () {
                          print("ingresar");
                        },

                        leading: CircleAvatar(backgroundImage: NetworkImage("https://marcas-logos.net/wp-content/uploads/2020/01/Facebook-logo-1-500x313.png")),
                        title: Row(
                          children: [
                            SizedBox(width: 7,),
                            Text("Continue with Facebook",style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14
                            ),),
                          ],
                        ),
                        trailing: Icon(Icons.trending_flat,color: Colors.black,size: 25,),
                      ),
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