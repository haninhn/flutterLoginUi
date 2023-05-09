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
            child: SingleChildScrollView(
              padding: const EdgeInsets.only(left: 16, right: 16, top: 50, bottom: 40),
              child: Column(
                children: [
                  Text("SIGN IN", style: TextStyle(
                    color:  Colors.white,
                    fontSize: 18,
                    fontWeight:  FontWeight.bold
                  ))
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
}
