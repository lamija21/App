import 'package:flutter/material.dart';


import 'page.dart';
import 'signup.dart';



class Home extends StatelessWidget {
  const Home({Key? key}) :super(key: key);
  
  get onPressed => null;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: const Color(0xfff0f1f5),
      body:SafeArea(
        child: Container(
          padding: const EdgeInsets.all(18),
          height: size.height,
          width: size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 150,
                child:RichText(
                  text: const TextSpan(
                    text: "Your",
                    style: TextStyle(
                      fontSize: 32,
                      color: Color.fromRGBO(206, 147, 216, 1),
                      fontWeight: FontWeight.bold,
                    ),
                    
                    children: <TextSpan>[
                      TextSpan(
                        text: " ToDo ",
                        style: TextStyle(
                          fontSize: 32,
                          color: Colors.purple,
                           fontWeight: FontWeight.bold,
                        ),
                        
                                              

                            )
                    ]
                  )),
              ),
              SizedBox( width: size.width,
              height: size.height * .3,
              child: Image.asset("assets/casual.png",width: 300,),),
              Container(
                height: size.height * .3,
                decoration: BoxDecoration(
                  color:Colors.white,
                  borderRadius: const BorderRadius.all(Radius.circular(20)),
                  boxShadow: [
                  BoxShadow (
                    color: Colors.grey.withOpacity(.2),
                    spreadRadius:2,
                    blurRadius: 20,
                    offset:const  Offset(0, 0),

                  )
                  ]
                ),
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    const Positioned(top: 10,left: 20,
                    child: Text("Login Here", style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),),),
                    Positioned(
                      top: 50,
                      left: 20,
                      child: Column(children: [
                        Row(children: [
                          const Icon(Icons.mail_outline, color: Colors.grey,),
                          Container(padding: const EdgeInsets.only(left: 10),
                          width: 300,
                          child: const TextField( cursorColor:Colors.grey,style:TextStyle( 
                            color:Colors.black54,
                            ),
                            decoration: InputDecoration(
                              border:InputBorder.none,
                              hintText:"example@gmail.com",      
                             ),
                          ),
                          ),
                        ],
                        )

                      ]),
                    ),
                       Positioned(
                      top: 120,
                      left: 20,
                      child: Column(children: [
                        Row(children: [
                          const Icon(Icons.key_off, color: Colors.grey,),
                          Container(padding: const EdgeInsets.only(left: 10),
                          width: 300,
                          child: const TextField( 
                            obscureText: true,
                            cursorColor:Colors.grey,
                            style:TextStyle( 
                           color:Color.fromARGB(255, 53, 52, 52),
                            fontSize: 25,
                            letterSpacing: 1.4,
                            ),
                            decoration: InputDecoration(
                              border:InputBorder.none,
                              hintText:"......",      
                             ),
                          ),
                          ),
                        ],
                        )

                      ]),
                    ),
                    Positioned(
                      top: 180,
                      left: 20,
                      child: SizedBox(
                        width: size.width * .8,
                        
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                         
                            GestureDetector(
                              onTap: () {
                                Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => SignUpScreen() ));
                              },
                              child: Text(
                                "Sign Up",
                                style: TextStyle(
                                  fontSize: 17,
                                  color: Colors.purple,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                             GestureDetector(
                              onTap: () {
                                Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => TodoMenu()));
                              },
                              child: Text(
                                "Next",
                                style: TextStyle(
                                  fontSize: 17,
                                  color: Colors.purple,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            )
                           

            
                           
                          ]
                        ),
                      ),
                    ),
                  
                  ],
                ),
              )
            ],
          ),
        )
         ) ,
    );
  }
  
  gl() {}
  
  First2() {}
}
