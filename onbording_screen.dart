import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'auth/login_signup.dart';


class OnBordingScreen extends StatelessWidget {
  const OnBordingScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
           crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 50,

              ),
              const Text("Welcome to EventSpot!",style: TextStyle(
                color: Colors.black,
                fontSize: 27,
                fontWeight: FontWeight.w700 ,
              ) ,),
              const SizedBox(height: 5,),
              const Text("Event Management System",style: TextStyle(fontSize: 16),),
              const SizedBox(
                height: 50,),
              Padding(
                padding: const EdgeInsets.only(left:15,right: 15),
                child: Image.asset('assets/onboardIcon.png'),
              ),
              const SizedBox(
                height: 50,),
              Expanded(
                child: Container(
                  width:double.infinity ,
                  height:300 ,
                  decoration:const BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 5,
                        spreadRadius:2 ,
                      )
                    ],
                    borderRadius: BorderRadius.only(topRight: Radius.circular(16),topLeft:Radius.circular(16) )
                  ) ,
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,

                    children: [
                    const SizedBox(
                      height: 20,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 15,right: 15),
                      child: Text("The social media platform designed to get you offline",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600
                        ),),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 15,right: 15),
                      child: Text("EventSpot is an app where users can leverage their social network to create, discover, share, and monetize events or services.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                  
                        ),),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(
                          left: 15,
                          right: 15
                      ),
                      child: MaterialButton(
                        minWidth: double.infinity,
                        color: Colors.white,
                        elevation: 2,
                        onPressed: (){
                          Get.to(()=> const LoginView());
                        },
                  
                        child: const Text("Get Started",
                  
                          style: TextStyle(
                              fontSize: 18,
                              color: Color(0xff274560),
                              fontWeight: FontWeight.w500
                          ),),),
                    )
                  ],),
                ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

