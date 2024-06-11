import 'package:flutter/material.dart';
import 'package:stream/features/login_screen.dart';

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  @override
  void initState() {
    super.initState();
    GoHome();
  }
  void GoHome() async {
    await Future.delayed(const Duration(seconds: 5), (){
      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => const LoginScreen()),
              (Route<dynamic> route) => false);
    });
  }
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
      children: [
        Expanded(
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('prime',style: TextStyle(fontSize: 23, fontWeight: FontWeight.w700, color: Colors.blueAccent),),
                SizedBox(width: 5),
                Text('video',style: TextStyle(fontSize: 23, fontWeight: FontWeight.w700, color: Colors.white),),
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 70),
          child: SizedBox(
            width: 60,
            height: 60,
            child: Text('Loading ...'),
          ),
        )
        
      ],
    )
    )
    ;
  }
}
