import 'package:class11/screens/home_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController usernameController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    saveprefs() async
    {
      SharedPreferences prefs=await SharedPreferences.getInstance();
      prefs.setBool('isLogged', true);
      print('success');

    }

    loginprefs() async
    {
      SharedPreferences prefs=await SharedPreferences.getInstance();

      bool? isLogged = prefs.getBool('isLogged');
      print(isLogged);

      if(isLogged!){
        print('1');
        Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));

      }
      else{
        print('2');
        Navigator.of(context).pop();
      }
    }
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Container(
            margin: EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.lock,
                  size: 100,
                  color: Colors.brown,
                ),
                Text(
                  'أهلاً وسهلاً بكم',
                  style: GoogleFonts.cairo(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    color: Colors.brown[300],
                  ),
                ),
                const SizedBox(height: 10),
                TextField(
                  controller: usernameController,
                  decoration: InputDecoration(
                      hintText: 'اسم المستخدم',
                      hintStyle: GoogleFonts.cairo(color: Colors.white),
                      fillColor: Colors.black12,
                      filled: true,
                      icon: Icon(Icons.verified_user),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black12)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black))),
                ),
                TextField(
                  obscureText: true,
                  controller: passwordController,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black26)),
                    hintText: 'كلمة المرور',
                    hintStyle: GoogleFonts.cairo(color: Colors.white),
                    icon: Icon(Icons.remove_red_eye),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black)),
                    fillColor: Colors.black12,
                    filled: true,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'هل نسيت كلمة المرور',
                      style: GoogleFonts.tajawal(
                          color: Colors.brown.shade400, fontSize: 18),
                    ),
                  ],
                ),
                MaterialButton(
                  onPressed: () {
                    saveprefs();

                  },
                  child: Text(
                    'احفظ بيانات الدخول',
                    style: GoogleFonts.cairo(color: Colors.white, fontSize: 20),
                  ),
                  color: Colors.brown.shade900,
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                ),
                MaterialButton(
                  onPressed: () {
                    loginprefs();
                  },
                  child: Text(
                    'تسجيل الدخول',
                    style: GoogleFonts.cairo(color: Colors.white, fontSize: 20),
                  ),
                  color: Colors.brown.shade900,
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
