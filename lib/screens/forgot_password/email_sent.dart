import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:havana_ui/screens/forgot_password/reset_pass.dart';

class EmailSent extends StatefulWidget {
  const EmailSent({super.key});

  @override
  State<EmailSent> createState() => _EmailSentState();
}

class _EmailSentState extends State<EmailSent> {
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
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
          SizedBox(height: 20.h),
          Image.asset('assets/images/email.png',height:200.h, width: 250.w,),
          SizedBox(height: 20.h),
          Text("Forgot Password? We got you.", style: TextStyle(fontSize: 15.sp,color: Colors.grey),),
          Text("You'll receive an email with a verification link to ", style: TextStyle(fontSize: 15.sp,color: Colors.grey),),
          Text("estherhoward@email.com.", style: TextStyle(fontSize: 15.sp,color: Colors.grey,fontWeight: FontWeight.bold),),
          SizedBox(height: 20.h),
          Text("To confirm your account please follow the", style: TextStyle(fontSize: 15.sp,color: Colors.grey),),
          Text("link in the email we just sent.", style: TextStyle(fontSize: 15.sp,color: Colors.grey),),
          SizedBox(height: 20.h),
          SizedBox(
            width: double.infinity,
            height: 50.h,
            child: ElevatedButton(
                    //button color
                    style: ElevatedButton.styleFrom(
                           backgroundColor: Color(0xff000048), // sets the button color
                          ),
                      child: Text('Reset Password', style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const ResetPass()),
                        );
                      },
                   ),
          )
        ]),
      ),
    );
  }
}