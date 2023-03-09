import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Image.asset('assets/icons/logo.png', height: 70.h, width: 70.w,),
        centerTitle: true,
        backgroundColor: Color(0xff000048),
        // leading:
        //   IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back), ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Container(
              height: 100.h,
              width: double.infinity,
              color: Colors.green,
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon:_selectedIndex==0? Image.asset('assets/icons/home_selected.png', height: 20.h, width: 20.w,):Image.asset('assets/icons/Home.png', height: 20.h, width: 20.w),
            label: "home"
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
          ),
          
        ],
        currentIndex: 0,
        selectedItemColor: Color(0xff000048),
        onTap: (int index) {
          // Respond to item press.
        },
      )
    );
  }
}