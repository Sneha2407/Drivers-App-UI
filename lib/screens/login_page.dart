import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:havana_ui/screens/forgot_password/send_link.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Image.asset('assets/icons/logo.png', height: 70.h, width: 70.w,),
        centerTitle: true,
        backgroundColor: Color(0xff000048),
        leading:
          IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back), ),
      ),
      body: Container(
                decoration: const BoxDecoration(
      //             gradient: LinearGradient(
      // begin: Alignment.topCenter,
      // end: Alignment.bottomCenter,
      // colors: [Colors.transparent, Color(0xff000048).withOpacity(1)],
      //             ),
      image: 
        DecorationImage(

          image: 
          AssetImage('assets/images/background1.png'),
          fit: BoxFit.cover,
        ),
        
                ),
                child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
          //  mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Expanded(
              child: SingleChildScrollView(
                physics: AlwaysScrollableScrollPhysics(),
                child: Column(
                  //  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 100.h),
                    Image.asset('assets/icons/logo.png',height:100.h, width: 150.w,),
                     SizedBox(height: 40.h),
                Container(
                   decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.white,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: TextFormField(
                    style: TextStyle(color: Colors.white),
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Email',
                      hintStyle: TextStyle(color: Colors.white),
                       focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white, // Set the color to white
                        width: 1, // Set the width of the border
                      ),
                     ),
                      // prefixIcon: Icon(Icons.email, color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(height: 10.h),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.white,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: TextFormField(
                    obscureText: _obscureText,
                    decoration:  InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Password',
                      hintStyle: TextStyle(color: Colors.white),
                      focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white, // Set the color to white
                        width: 1, // Set the width of the border
                      ),
                     ),
                     
                     suffixIcon: IconButton(onPressed: () {
            setState(() {
              _obscureText = !_obscureText;
            });
          }, icon: _obscureText
              ? Image.asset('assets/icons/unhide.png')
              : Image.asset('assets/icons/hide.png'),)
                      // prefixIcon: Icon(Icons.lock, color: Colors.white),
                    ),
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                SizedBox(height: 10.h),
                Row(
                  children: [
                    Spacer(),
                    Text('Forgot Password?', style: TextStyle(color: Colors.white,),textAlign: TextAlign.right,),
                  ],
                ),
                SizedBox(height: 30.h),
                 SizedBox(height: 50.h, width: double.infinity,
                 child: ElevatedButton(
                  //button color
                  style: ElevatedButton.styleFrom(
                         backgroundColor: Colors.white, // sets the button color
                        ),
                    child: Text('Log in', style: TextStyle(color: Color(0xff000048),fontWeight: FontWeight.bold),),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const SendLink()),
                      );
                    },
                 ),),
                  ],
                ),
              ),
            ),
           
          ]),
        ),
                  ),
    );
  }
}