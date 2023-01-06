import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../globall.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  static const String $firstName = 'first name';
  static const String $lastName = 'last name';
  static const String $email = 'email';
  static const String $password = 'password';
  static const String $confirmPassword = 'confirm password';

  static TextEditingController? firstName;
  static TextEditingController? lastName;
  static TextEditingController? email;
  static TextEditingController? password;
  static TextEditingController? confirmPassword;


  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {

  double opacityLogo = 0;

  void changeOpacity() {
    Future.delayed(Duration(microseconds: 1000), () {
      setState(() {
        opacityLogo = opacityLogo == 1  ? 0 : 1;
      });
    });
  }
  double getDeviceHeight() {
    return Globall.getDeviceHeight() == DeviceType.mobile ? 10.h : 7.h;
  }


  @override
  void initState() {
    super.initState();
    changeOpacity();
  }

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
                    opacity: opacityLogo,
                    child: Image.asset(
                      'assets/images/logo.png',
                      width: 100.w,
                      height: 20.h,
                      fit: BoxFit.contain,
                      color: Colors.brown[900],
                    )
                ),
              ),
            Container(
              width: 100.w,
              height: getDeviceHeight(),
              padding: const EdgeInsets.only(right: 20, left: 20),
              child: TextFormField(
                controller: RegisterPage.firstName,
                decoration: InputDecoration(
                  hintText: RegisterPage.$firstName,
                  hintStyle: TextStyle(fontSize: 15.sp),
                  fillColor: Colors.white,
                  filled: true,
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    borderSide: BorderSide(
                      color: Colors.blue
                    )
                  )
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
