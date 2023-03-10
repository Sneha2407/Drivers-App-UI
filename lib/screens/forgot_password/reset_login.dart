import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:havana_ui/screens/common_home.dart';

import '../home.dart';

class ResetLogn extends StatefulWidget {
  const ResetLogn({super.key});

  @override
  State<ResetLogn> createState() => _ResetLognState();
}

class _ResetLognState extends State<ResetLogn> {
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
        child: Column(children: [
          SizedBox(height: 20.h,),
          Image.asset('assets/images/reset.png', height: 200.h, width: 250.w,),
          SizedBox(height: 30.h,),
          Text("Password Reset!", style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),),
          SizedBox(height: 30.h),
          SizedBox(
              width: double.infinity,
              height: 50.h,
              child: ElevatedButton(
                      //button color
                      style: ElevatedButton.styleFrom(
                             backgroundColor: Color(0xff000048), // sets the button color
                            ),
                        child: Text('Log In', style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold, fontSize: 15.sp),),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const CommonNavScreen()),
                          );
                        },
                     ),
            )
        ],),
      ),
    );
  }
}