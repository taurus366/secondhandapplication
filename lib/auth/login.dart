import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:secondhandapplication/auth/register.dart';
import 'package:secondhandapplication/globall.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sizer/sizer.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  static const String $email = 'email';
  static const String $password = 'password';
  static const String $loginTextBtn = 'Login';

  static TextEditingController? email = TextEditingController();
  static TextEditingController? password = TextEditingController();

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  double opacityLogo = 0;

  Future<List<String>> getSystems() async {
    final prefs = await SharedPreferences.getInstance();
    final test = prefs.getStringList('Test');
    return test!;
  }

  double getDeviceHeight() {
    return Globall.getDeviceHeight() == DeviceType.mobile ? 10.h : 7.h;
  }

  void changeOpacity() {
    Future.delayed(Duration(microseconds: 1000), () {
      setState(() {
        opacityLogo = opacityLogo == 1 ? 0 : 1;
      });
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    changeOpacity();
  }

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.brown[100],
        body: Center(
          child: SingleChildScrollView(
          child: Form(
            key: _formKey,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    /// LOGO
                    FittedBox(
                      child: AnimatedOpacity(
                          curve: Curves.elasticInOut,
                          duration: const Duration(seconds: 3),
                          opacity: opacityLogo,
                          child: Image.asset(
                            'assets/images/logo.png',
                            width: 100.w,
                            height: 20.h,
                            fit: BoxFit.contain,
                            color: Colors.brown[900],
                          )),
                    ),
                    /// EMAIL
                    Container(
                      width: 100.w,
                      height: getDeviceHeight(),
                      padding: const EdgeInsets.only(right: 20, left: 20),
                      child: TextFormField(
                        validator: (value) {
                          if(value == null || value.isEmpty){
                            return Globall.EMPTY_FIELD;
                          }
                        },
                        controller: LoginPage.email,
                        decoration: InputDecoration(
                          hintText: LoginPage.$email,
                          hintStyle: TextStyle(fontSize: 15.sp),
                          fillColor: Colors.white,
                          filled: true,
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0),
                            borderSide: BorderSide(
                              color: Colors.blue,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25.0),
                            borderSide: BorderSide(
                              color: Colors.blue,
                              width: 1.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                    /// PASSWORD
                    Container(
                      width: 100.w,
                      height: getDeviceHeight(),
                      padding: EdgeInsets.only(right: 20, left: 20),
                      child: TextFormField(
                        validator: (value) {
                          if(value == null || value.isEmpty){
                            return Globall.EMPTY_FIELD;
                          }
                        },
                        controller: LoginPage.password,
                        decoration: InputDecoration(
                            hintText: LoginPage.$password,
                            hintStyle: TextStyle(fontSize: 15.sp),
                            fillColor: Colors.white,
                            filled: true,
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15.0),
                                borderSide: BorderSide(color: Colors.blue)),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25.0),
                                borderSide: BorderSide(color: Colors.blue))),
                      ),
                    ),
                    /// BUTTON LOGIN
                    Container(
                      width: 100.w,
                      height: getDeviceHeight(),
                      padding: EdgeInsets.only(
                          right: 20, left: 20, top: 20, bottom: 20),
                      child: ElevatedButton(
                        onPressed: () {
                          if(_formKey.currentState!.validate()){
                            loginBtn();
                          }
                        },
                        child: Text(LoginPage.$loginTextBtn, style: TextStyle(fontSize: 15.sp)),
                        style: ButtonStyle(
                            backgroundColor:
                            MaterialStatePropertyAll<Color>(Colors.brown)),
                      ),
                    ),
                    /// SPAN TEXT FOR FORWARDING THE PAGE TO REGISTER PAGE
                    Container(
                        width: 100.w,
                        height: getDeviceHeight(),
                        padding: EdgeInsets.only(
                            right: 20, left: 20, top: 20, bottom: 20),
                        child: RichText(
                            text: TextSpan(
                                style: TextStyle(
                                    color: Colors.grey, fontSize: 20.sp),
                                children: <TextSpan>[
                                  TextSpan(text: 'Not registered yet?'),
                                  TextSpan(
                                      text: 'Register',
                                      style: TextStyle(color: Colors.brown),
                                      recognizer: TapGestureRecognizer()
                                        ..onTap = () {
                                          registerBtn();
                                        })
                                ])))
                  ])
          ),
          ),
        ));
  }

  void loginBtn() {

  }

  void registerBtn() {
    print('register btn pressed');
    Navigator.push<dynamic>(
        context,
        MaterialPageRoute<dynamic>(
            builder: (BuildContext context) => const RegisterPage()));
  }
}
