import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:havana_ui/screens/forgot_password/email_sent.dart';

class SendLink extends StatefulWidget {
  const SendLink({super.key});

  @override
  State<SendLink> createState() => _SendLinkState();
}

class _SendLinkState extends State<SendLink> {
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          SizedBox(height: 20.h,),  
          Text("Forgot Password?", style: TextStyle(fontSize: 30.sp, fontWeight: FontWeight.bold,color: Color(0xff000048)),),
          SizedBox(height: 20.h,),
          TextField(
            decoration: InputDecoration(
              hintText: "Email",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5.0),
              ),
            ),
          ),
          SizedBox(height: 20.h,),
          SizedBox(
            width: double.infinity,
            height: 50.h,
            child: ElevatedButton(
                    //button color
                    style: ElevatedButton.styleFrom(
                           backgroundColor: Color(0xff000048), // sets the button color
                          ),
                      child: Text('Send Link', style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const EmailSent()),
                        );
                      },
                   ),
          )
        ]),
      ),
    );
  }
}