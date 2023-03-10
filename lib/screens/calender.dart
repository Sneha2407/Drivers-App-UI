import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:havana_ui/screens/time.dart';

class CalenderPage extends StatefulWidget {
  const CalenderPage({super.key});

  @override
  State<CalenderPage> createState() => _CalenderPageState();
}

class _CalenderPageState extends State<CalenderPage> {
  bool _isSwitched = false;
  TimeOfDay _selectedTime = TimeOfDay(hour: 12, minute: 0);
  TimeOfDay _selectedTime2 = TimeOfDay(hour: 12, minute: 0);

  void _showTimePicker() async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: _selectedTime,
    );

      if (picked != null && picked != _selectedTime) {
      setState(() {
        _selectedTime = picked;
      });
    }
    
    
  }
  void _showTimePicker2() async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: _selectedTime2,
    );
    if (picked != null && picked != _selectedTime2) {
      setState(() {
        _selectedTime2 = picked;
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Your Availability",style: TextStyle(fontSize: 20.sp,fontWeight: FontWeight.bold, color: Color(0xff000048)),),
          ),
        //   SwitchListTile(
        //   title: Text('Monday',style: TextStyle(color: _isSwitched?Color(0xff000048) :Colors.grey),),
        //   subtitle: Row(
        //     children: [
        //       Expanded(
        //         flex: 2,
        //         child: Column(
        //           crossAxisAlignment: CrossAxisAlignment.start,
        //           children: [
        //             Text('Start time'),
        //              Container(height: 45.h, decoration: BoxDecoration(border: Border.all(color: Colors.grey,width: 1,),borderRadius: BorderRadius.circular(5.0)), 
        //              child:  Row(
        //               children: [
        //                 Padding(
        //                   padding: const EdgeInsets.only(left:5.0),
        //                   child: Text(_selectedTime.format(context),style: TextStyle(color: _isSwitched?Color(0xff000048) :Colors.grey),),
        //                 ),
        //                 Spacer(),
        //                 IconButton(onPressed: (){ _isSwitched?_showTimePicker():print("diabled");}, icon: Icon(Icons.watch_later_outlined, color: _isSwitched?Color(0xff000048) :Colors.grey,)),
        //               ],
        //               ),
        //              )
        //           ],
        //         ),
        //       ),
        //       SizedBox(width: 20.w,),
        //       Expanded(
        //         flex: 2,
        //         child: Column(
        //           crossAxisAlignment: CrossAxisAlignment.start,
        //           children: [
        //             Text('End time'),
        //             Container(height: 45.h, decoration: BoxDecoration(border: Border.all(color: Colors.grey,width: 1,),borderRadius: BorderRadius.circular(5.0)), 
        //               child: Row(
        //                 children: [
        //                   Padding(
        //                     padding: const EdgeInsets.only(left:5.0),
        //                     child: Text(_selectedTime2.format(context),style: TextStyle(color: _isSwitched?Color(0xff000048) :Colors.grey),)
        //                   ),
        //                   // Text(_selectedTime.format(context)),
        //                   Spacer(),
        //                   IconButton(onPressed: (){ _isSwitched?_showTimePicker2():print("diabled");}, icon: Icon(Icons.watch_later_outlined, color: _isSwitched?Color(0xff000048) :Colors.grey,)),
        //                 ],
        //               ),
        //             )
        //           ],
        //         ),
        //       ),
            
        //     ],
        //   ),
        //   value: _isSwitched,
        //   onChanged: (value) {
        //     setState(() {
        //       _isSwitched = value;
        //       if (_isSwitched) {
        //         // _showTimePicker(_isSwitched);
        //         // _showTimePicker2();
        //       }
        //     });
        //   },
        // ),
        CustomSwitchTile(
          title: "Tuesday",
          value: _isSwitched,
          
        ),
       
        ],
      ),
    );
  }
}