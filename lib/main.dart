import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LoginPage(title: 'Flutter Demo Home Page'),
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key, required this.title});


  final String title;

  @override
  State<LoginPage> createState() => _LoginPageState();
}


class _LoginPageState extends State<LoginPage> {
  final blueColor = Color(0xff5e92f3);
  final yellowColor = Color(0xfffdd835);



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Stack(
        children: [
          buildBackgroundTopCircle(context),
          buildBackgroundBottomCircle(context),
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,

            child: SingleChildScrollView(
              padding: const EdgeInsets.only(left: 16, right: 16, top: 50, bottom: 40),
              child: Column(
                children:  [
                  const Text("SIGN IN", style: TextStyle(
                    color:  Colors.white,
                    fontSize: 18,
                    fontWeight:  FontWeight.bold),
                  ),
                  const SizedBox(height: 24,),
                  buildAvatarContainer()
                  Container(
                     height: 240,
                     child: Column(
                       children: [
                         Container(
                          child: Column(
                            children: [
                              Text("EMAIL ADDREESS", style: TextStyle(color: blueColor, fontSize: 12)),
                              const SizedBox(height:5 ,)
                              TextField(
                                decoration: InputDecoration(

                                ),
                              ),
                            ]
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      )

    );
  }



  Positioned buildBackgroundBottomCircle(BuildContext context) {
    return Positioned(
            top: MediaQuery.of(context).size.height - MediaQuery.of(context).size.width,
            right: MediaQuery.of(context).size.width / 2,
            child: Container(
                  height: MediaQuery.of(context).size.width,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: blueColor.withOpacity(0.15),
                      borderRadius: BorderRadius.circular(
                        MediaQuery.of(context).size.width,
                      )
                  ),
              ),
            );
  }

  Positioned buildBackgroundTopCircle(BuildContext context) {
    return Positioned(
          top: 0,
            child:Transform.translate(
              offset: Offset(0.0, -MediaQuery.of(context).size.width/1.3),
              child: Transform.scale(
                scale: 1.35,
                child: Container(
                height: MediaQuery.of(context).size.width,
                width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.grey[800],
                    borderRadius: BorderRadius.circular(
                      MediaQuery.of(context).size.width,
                    )
                  ),
              ),
              ),
            )
        );
  }

  Container buildAvatarContainer() {
    return Container(
      margin: const EdgeInsets.only(top: 24),
      width: 130,
      height: 130,
      decoration: BoxDecoration(
          color: yellowColor,
          borderRadius: BorderRadius.circular(65),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              spreadRadius: 4,
              blurRadius: 20,
            )
          ]
      ),
      child: Center(
        child: Stack(
            children: [
              Positioned(
                  left: 1.0,
                  top: 3.0,
                  child: Icon(
                      Icons.person_outline,
                      size: 60,
                      color: Colors.black.withOpacity(.1))
              ),
              const Icon(
                  Icons.person_outline,
                  size: 60,
                  color: Colors.white)
            ]),
      ),
    );
  }
}
