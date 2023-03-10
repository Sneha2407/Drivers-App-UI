import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:havana_ui/screens/calender.dart';
import 'package:havana_ui/screens/home.dart';
import 'package:havana_ui/screens/notification.dart';
import 'package:havana_ui/screens/profile.dart';

class CommonNavScreen extends StatefulWidget {
  const CommonNavScreen({super.key});

  @override
  State<CommonNavScreen> createState() => _CommonNavScreenState();
}

class _CommonNavScreenState extends State<CommonNavScreen> {

   bool _isSelected = false;
    int _selectedIndex = 0;
    void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;

      if (index == 0) {
        // _title = "Vision Board";
        _isSelected = false;
      } else if (index == 1) {
        // _title = "Learn";
        _isSelected = true;
      } else if (index == 2) {
        // _title = "My Coach";
        _isSelected = true;
      } else {
        // _title = "Journal";
        _isSelected = true;
      }
    });
  }

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
      body: Column(
          children: [
            if (_selectedIndex == 0)
              const Expanded(child: HomePage())
            else if (_selectedIndex == 1)
              const Expanded(child: CalenderPage())
            else if (_selectedIndex == 2)
              const Expanded(child: NotificationPage())
            else
              const Expanded(child: ProfilePage())
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.grey.shade50,
          selectedItemColor: Colors.red.shade800,
          unselectedItemColor: Colors.grey,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              //icon: 
              // SizedBox(
              //   height: 30.h,
              //   width: 30.w,
              //   child: Image.asset(
              //     Images.love,
              //     color: _isSelected ? Colors.grey : Colors.red.shade800,
              //   ),
              // ),
               icon: SizedBox(
                height: 30.h,
                width: 30.w,
                child: _selectedIndex==0? Image.asset('assets/icons/home_selected1.png', height: 50.h, width: 50.w,):Image.asset('assets/icons/home1.png', height: 10.h, width: 10.w),),
              label: '.',
            ),
             BottomNavigationBarItem(
              // icon: Icon(Icons.location_pin),
              icon:SizedBox(
                child: 
                _selectedIndex==1? Image.asset('assets/icons/Frame 12.png', height: 50.h, width: 50.w,):Image.asset('assets/icons/calender.png', height: 50.h, width: 50.w),),
              label: '',
            ),
            BottomNavigationBarItem(
              // icon: Icon(Icons.person),
              icon:SizedBox(child: _selectedIndex==2? Image.asset('assets/icons/notification_selected.png', height: 50.h, width: 50.w,):Image.asset('assets/icons/notification.png', height: 50.h, width: 50.w),),
              label: '',
            ),
           BottomNavigationBarItem(
              icon: SizedBox(child: _selectedIndex==3? Image.asset('assets/icons/profile_selected.png', height: 50.h, width: 50.w,):Image.asset('assets/icons/profile.png', height: 50.h, width: 50.w),),
              label: '',
            ),
          ],
          showSelectedLabels: false,
          showUnselectedLabels: false,
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
        ),
    );
  }
}