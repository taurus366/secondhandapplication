import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {

  double opacityLogo = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[100],
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              FittedBox(
                child:
                AnimatedOpacity(
                    curve: Curves.elasticInOut,
                    duration: const Duration(seconds: 3),
                    opacity: 1,
                    child: Image.asset(
                      'assets/images/logo.png',
                      width: 100.w,
                      height: 20.h,
                      fit: BoxFit.contain,
                      color: Colors.brown[900],
                    )
                ),
              ),
              FittedBox(
                child:
                AnimatedOpacity(
                    curve: Curves.elasticInOut,
                    duration: const Duration(seconds: 3),
                    opacity: 1,
                    child: Image.asset(
                      'assets/images/logo.png',
                      width: 100.w,
                      height: 20.h,
                      fit: BoxFit.contain,
                      color: Colors.brown[900],
                    )
                ),
              ),
              FittedBox(
                child:
                AnimatedOpacity(
                    curve: Curves.elasticInOut,
                    duration: const Duration(seconds: 3),
                    opacity: 1,
                    child: Image.asset(
                      'assets/images/logo.png',
                      width: 100.w,
                      height: 20.h,
                      fit: BoxFit.contain,
                      color: Colors.brown[900],
                    )
                ),
              ),
              FittedBox(
                child:
                AnimatedOpacity(
                    curve: Curves.elasticInOut,
                    duration: const Duration(seconds: 3),
                    opacity: 1,
                    child: Image.asset(
                      'assets/images/logo.png',
                      width: 100.w,
                      height: 20.h,
                      fit: BoxFit.contain,
                      color: Colors.brown[900],
                    )
                ),
              ),
              FittedBox(
                child:
                AnimatedOpacity(
                    curve: Curves.elasticInOut,
                    duration: const Duration(seconds: 3),
                    opacity: 1,
                    child: Image.asset(
                      'assets/images/logo.png',
                      width: 100.w,
                      height: 20.h,
                      fit: BoxFit.contain,
                      color: Colors.brown[900],
                    )
                ),
              ),
              FittedBox(
                child:
                AnimatedOpacity(
                    curve: Curves.elasticInOut,
                    duration: const Duration(seconds: 3),
                    opacity: 1,
                    child: Image.asset(
                      'assets/images/logo.png',
                      width: 100.w,
                      height: 20.h,
                      fit: BoxFit.contain,
                      color: Colors.brown[900],
                    )
                ),
              ),
              FittedBox(
                child:
                AnimatedOpacity(
                    curve: Curves.elasticInOut,
                    duration: const Duration(seconds: 3),
                    opacity: 1,
                    child: Image.asset(
                      'assets/images/logo.png',
                      width: 100.w,
                      height: 20.h,
                      fit: BoxFit.contain,
                      color: Colors.brown[900],
                    )
                ),
              ),
              FittedBox(
                child:
                AnimatedOpacity(
                    curve: Curves.elasticInOut,
                    duration: const Duration(seconds: 3),
                    opacity: 1,
                    child: Image.asset(
                      'assets/images/logo.png',
                      width: 100.w,
                      height: 20.h,
                      fit: BoxFit.contain,
                      color: Colors.brown[900],
                    )
                ),
              ),
              FittedBox(
                child:
                AnimatedOpacity(
                    curve: Curves.elasticInOut,
                    duration: const Duration(seconds: 3),
                    opacity: 1,
                    child: Image.asset(
                      'assets/images/logo.png',
                      width: 100.w,
                      height: 20.h,
                      fit: BoxFit.contain,
                      color: Colors.brown[900],
                    )
                ),
              ),
              FittedBox(
                child:
                AnimatedOpacity(
                    curve: Curves.elasticInOut,
                    duration: const Duration(seconds: 3),
                    opacity: 1,
                    child: Image.asset(
                      'assets/images/logo.png',
                      width: 100.w,
                      height: 20.h,
                      fit: BoxFit.contain,
                      color: Colors.brown[900],
                    )
                ),
              ),
              FittedBox(
                child:
                AnimatedOpacity(
                    curve: Curves.elasticInOut,
                    duration: const Duration(seconds: 3),
                    opacity: 1,
                    child: Image.asset(
                      'assets/images/logo.png',
                      width: 100.w,
                      height: 20.h,
                      fit: BoxFit.contain,
                      color: Colors.brown[900],
                    )
                ),
              ),
              FittedBox(
                child:
                AnimatedOpacity(
                    curve: Curves.elasticInOut,
                    duration: const Duration(seconds: 3),
                    opacity: 1,
                    child: Image.asset(
                      'assets/images/logo.png',
                      width: 100.w,
                      height: 20.h,
                      fit: BoxFit.contain,
                      color: Colors.brown[900],
                    )
                ),
              ),
              FittedBox(
                child:
                AnimatedOpacity(
                    curve: Curves.elasticInOut,
                    duration: const Duration(seconds: 3),
                    opacity: 1,
                    child: Image.asset(
                      'assets/images/logo.png',
                      width: 100.w,
                      height: 20.h,
                      fit: BoxFit.contain,
                      color: Colors.brown[900],
                    )
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
