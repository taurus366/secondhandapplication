import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:secondhandapplication/auth/register.dart';
import 'package:secondhandapplication/globall.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sizer/sizer.dart';



class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  static const String $username = 'username';
  static const String $password = 'password';

  static TextEditingController? user;
  static TextEditingController? password;
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
        opacityLogo = opacityLogo == 1  ? 0 : 1;
      });
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    changeOpacity();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
backgroundColor: Colors.brown[100],
        body: Center(
        child: SingleChildScrollView(
          // color: Colors.brown,
          child:Column(
              mainAxisAlignment: MainAxisAlignment.center,
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
                  controller: LoginPage.user,
                  decoration: InputDecoration(
                    hintText: LoginPage.$username,
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
                      borderRadius:
                      BorderRadius.circular(25.0),
                      borderSide: BorderSide(
                        color: Colors.blue,
                        width: 1.0,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                width: 100.w,
                height: getDeviceHeight(),
                padding: EdgeInsets.only(right: 20, left: 20),
                child: TextFormField(
                  controller: LoginPage.password,
                  decoration: InputDecoration(
                    hintText: LoginPage.$password,
                    hintStyle: TextStyle(fontSize: 15.sp),
                    fillColor: Colors.white,
                    filled: true,
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      borderSide: BorderSide(
                        color: Colors.blue
                      )
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25.0),
                      borderSide: BorderSide(
                          color: Colors.blue)
                    )
                  ),
                ),
              ),
                Container(
                  width: 100.w,
                  height: getDeviceHeight(),
                  padding: EdgeInsets.only(right: 20, left: 20, top: 20, bottom: 20),
                  child: ElevatedButton(
                    onPressed: () {
                      loginBtn();
                    },
                    child: Text('Login',style: TextStyle(fontSize: 15.sp)),
                    style: ButtonStyle(backgroundColor: MaterialStatePropertyAll<Color>(Colors.brown)),
                  ),
                ),

          Container(
            width: 100.w,
            height: getDeviceHeight(),
            padding: EdgeInsets.only(right: 20, left: 20, top: 20, bottom: 20),
            child: RichText(
                text: TextSpan(
                    style: TextStyle(color: Colors.grey, fontSize: 20.sp),
                    children: <TextSpan>[
                      TextSpan(text: 'Not registered yet?'),
                      TextSpan(text: 'Register',style: TextStyle(color: Colors.brown),
                      recognizer: TapGestureRecognizer()..onTap = () {
                        registerBtn();
                      })
                    ]
                )
            )
          )
              ]
          )  ,
        ),
       
      )


    );
  }

  void loginBtn() {
    print('login btn pressed');
  }

  void registerBtn() {
    print('register btn pressed');
    Navigator.push<dynamic>(context,
        MaterialPageRoute<dynamic>(builder: (BuildContext context) => const RegisterPage()));

  }

}
