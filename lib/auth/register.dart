import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../globall.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  static const int firstNameMinLength = 5;
  static const int lastNameMinLength = 5;
  static const int PasswordMinLength = 6;

  static const String $firstName = 'first name';
  static const String $lastName = 'last name';
  static const String $email = 'email';
  static const String $password = 'password';
  static const String $confirmPassword = 'confirm password';

  static TextEditingController? firstName = TextEditingController();
  static TextEditingController? lastName = TextEditingController();
  static TextEditingController? email = TextEditingController();
  static TextEditingController? password = TextEditingController();
  static TextEditingController? confirmPassword = TextEditingController();


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
  void dispose() {
    RegisterPage.firstName;
    RegisterPage.lastName;
    RegisterPage.email;
    RegisterPage.password;
    RegisterPage.confirmPassword;

    super.dispose();
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
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                /// Logo
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
                /// First name
                Container(
                  width: 100.w,
                  height: getDeviceHeight(),
                  padding: const EdgeInsets.only(right: 20, left: 20),
                  child: TextFormField(
                  validator: (value) {
                    if(value == null || value.isEmpty) {
                      return Globall.EMPTY_FIELD;
                    } else if(value.length < RegisterPage.firstNameMinLength) {
                      Globall.NOT_ENOUGH_FIELD;
                    }
                  },
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
                /// Last name
                Container(
                  width: 100.w,
                  height: getDeviceHeight(),
                  padding: const EdgeInsets.only(right: 20, left: 20),
                  child: TextFormField(
                    validator: (value) {
                      if(value == null || value.isEmpty) {
                        return Globall.EMPTY_FIELD;
                      } else if(value.length < RegisterPage.lastNameMinLength){
                        return Globall.NOT_ENOUGH_FIELD;
                      }
                    },
                    controller: RegisterPage.lastName,
                    decoration: InputDecoration(
                        hintText: RegisterPage.$lastName,
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
                /// Email
                Container(
                  width: 100.w,
                  height: getDeviceHeight(),
                  padding: const EdgeInsets.only(right: 20, left: 20),
                  child: TextFormField(
                    validator: (value) {
                      if(value == null || value.isEmpty){
                        return Globall.EMPTY_FIELD;
                      }
                      if(Globall.checkMailValidity(value) == false) {
                        return Globall.EMAIL_ISNT_CORRECT;
                      }
                    },
                    controller: RegisterPage.email,
                    decoration: InputDecoration(
                        hintText: RegisterPage.$email,
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
                /// Password
                Container(
                  width: 100.w,
                  height: getDeviceHeight(),
                  padding: const EdgeInsets.only(right: 20, left: 20),
                  child: TextFormField(
                    validator: (value) {
                      if(value == null || value.isEmpty){
                        return Globall.EMPTY_FIELD;
                      } else if(value.length < RegisterPage.PasswordMinLength){
                        return Globall.NOT_ENOUGH_FIELD;
                      } else if(value != RegisterPage.confirmPassword?.text){
                        return Globall.PASSWORD_DIDNT_MATCH;
                      }
                    },
                    controller: RegisterPage.password,
                    decoration: InputDecoration(
                        hintText: RegisterPage.$password,
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
                /// Confirm password
                Container(
                  width: 100.w,
                  height: getDeviceHeight(),
                  padding: const EdgeInsets.only(right: 20, left: 20),
                  child: TextFormField(
                    controller: RegisterPage.confirmPassword,
                    validator: (value) {
                      if(value == null || value.isEmpty){
                        return Globall.EMPTY_FIELD;
                      } else if(value.length < RegisterPage.PasswordMinLength){
                        return Globall.NOT_ENOUGH_FIELD;
                      } else if(value != RegisterPage.password?.text){
                        return Globall.PASSWORD_DIDNT_MATCH;
                      }
                    },
                    decoration: InputDecoration(
                        hintText: RegisterPage.$confirmPassword,
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
                /// Register button
                Container(
                  width: 100.w,
                  height: getDeviceHeight(),
                  padding: EdgeInsets.all(20),
                  child: ElevatedButton(
                    onPressed: () {
                      if(_formKey.currentState!.validate()) {
                        registerBtn();
                      }

                    },
                    child: Text('Register',style: TextStyle(fontSize: 15.sp)),
                    style: ButtonStyle(
                        backgroundColor:
                        MaterialStatePropertyAll<Color>(Colors.brown)
                    ),
                  ),
                )
              ],
            ),),
        ),
      ),
    );
  }

  void registerBtn() {
    _showAlertDialog(Globall.EMAIL_EXISTS);
  }

  void _showAlertDialog(String message) async {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(message),
          actions: <Widget>[
            TextButton(
              child: Text('Ok'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }


}
