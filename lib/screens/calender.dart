import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:havana_ui/screens/my_leaves.dart';
import 'package:havana_ui/screens/time.dart';

class CalenderPage extends StatefulWidget {
  const CalenderPage({super.key});

  @override
  State<CalenderPage> createState() => _CalenderPageState();
}

class _CalenderPageState extends State<CalenderPage> {
  // final bool _isSwitched = true;
  TimeOfDay _selectedTime = TimeOfDay(hour: 12, minute: 0);
  TimeOfDay _selectedTime2 = TimeOfDay(hour: 12, minute: 0);

  final bool _isMondaySwitched = true;
  TimeOfDay _mondayStartime = TimeOfDay(hour: 12, minute: 0);
  TimeOfDay _mondayEndtime = TimeOfDay(hour: 12, minute: 0);

  bool _isTuesdaySwitched = true;
  TimeOfDay _tuesdayStartime = TimeOfDay(hour: 12, minute: 0);
  TimeOfDay _tuesdayEndtime = TimeOfDay(hour: 12, minute: 0);

  bool _isWednesdaySwitched = true;
  TimeOfDay _wednesdayStartime = TimeOfDay(hour: 12, minute: 0);
  TimeOfDay _wednesdayEndtime = TimeOfDay(hour: 12, minute: 0);

  // bool _isThursdaySwitched = true;
  TimeOfDay _thursdayStartime = TimeOfDay(hour: 12, minute: 0);
  TimeOfDay _thursdayEndtime = TimeOfDay(hour: 12, minute: 0);

  // bool _isFridaySwitched = true;
  TimeOfDay _fridayStartime = TimeOfDay(hour: 12, minute: 0);
  TimeOfDay _fridayEndtime = TimeOfDay(hour: 12, minute: 0);

  // bool _isSaturdaySwitched = true;
  TimeOfDay _saturdayStartime = TimeOfDay(hour: 12, minute: 0);
  TimeOfDay _saturdayEndtime = TimeOfDay(hour: 12, minute: 0);

  // bool _isSundaySwitched = true;
  TimeOfDay _sundayStartime = TimeOfDay(hour: 12, minute: 0);
  TimeOfDay _sundayEndtime = TimeOfDay(hour: 12, minute: 0);

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

  void _mondayStartTimePicker() async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: _mondayStartime,
    );

      if (picked != null && picked != _mondayStartime) {
      setState(() {
        _mondayStartime = picked;
      });
    }}

    void _mondayEndTimePicker() async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: _mondayEndtime,
    );

      if (picked != null && picked != _mondayEndtime) {
      setState(() {
        _mondayEndtime = picked;
      });
    }
  }

  void _tuesdayStartTimePicker() async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: _tuesdayStartime,
    );

      if (picked != null && picked != _tuesdayStartime) {
      setState(() {
        _tuesdayStartime = picked;
      });
    }}

    void _tuesdayEndTimePicker() async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: _tuesdayEndtime,
    );

      if (picked != null && picked != _tuesdayEndtime) {
      setState(() {
        _tuesdayEndtime = picked;
      });
    }
  }
  
  void _wednesdayStartTimePicker() async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: _wednesdayStartime,
    );

      if (picked != null && picked != _wednesdayStartime) {
      setState(() {
        _wednesdayStartime = picked;
      });
    }}

    void _wednesdayEndTimePicker() async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: _wednesdayEndtime,
    );

      if (picked != null && picked != _wednesdayEndtime) {
      setState(() {
        _wednesdayEndtime = picked;
      });
    }
  }

  void _thursdayStartTimePicker() async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: _thursdayStartime,
    );

      if (picked != null && picked != _thursdayStartime) {
      setState(() {
        _thursdayStartime = picked;
      });
    }}

    void _thursdayEndTimePicker() async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: _thursdayEndtime,
    );

      if (picked != null && picked != _thursdayEndtime) {
      setState(() {
        _thursdayEndtime = picked;
      });
    }
  }


  void _fridayStartTimePicker() async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: _fridayStartime,
    );

      if (picked != null && picked != _fridayStartime) {
      setState(() {
        _fridayStartime = picked;
      });
    }}

    void _fridayEndTimePicker() async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: _fridayEndtime,
    );

      if (picked != null && picked != _fridayEndtime) {
      setState(() {
        _fridayEndtime = picked;
      });
    }
  }

  void _saturdayStartTimePicker() async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: _saturdayStartime,
    );

      if (picked != null && picked != _saturdayStartime) {
      setState(() {
        _saturdayStartime = picked;
      });
    }}

    void _saturdayEndTimePicker() async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: _saturdayEndtime,
    );

      if (picked != null && picked != _saturdayEndtime) {
      setState(() {
        _saturdayEndtime = picked;
      });
    }
  }


void _sundayStartTimePicker() async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: _sundayStartime,
    );

      if (picked != null && picked != _sundayStartime) {
      setState(() {
        _sundayStartime = picked;
      });
    }}

    void _sundayEndTimePicker() async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: _sundayEndtime,
    );

      if (picked != null && picked != _sundayEndtime) {
      setState(() {
        _sundayEndtime = picked;
      });
    }
  }

   void _offcheck(TimeOfDay start, TimeOfDay end, bool switched) {
    if (switched == false) {
      start=TimeOfDay(hour: 00, minute: 00);
      end=TimeOfDay(hour: 00, minute: 00);
    }    
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Your Availability",style: TextStyle(fontSize: 20.sp,fontWeight: FontWeight.bold, color: Color(0xff000048)),),
            ),
          CustomSwitchTile(
            title: "Monday",
            value: _isMondaySwitched,
            startTime: _mondayStartime,
            endTime: _mondayEndtime,
            startTimePicker: _mondayStartTimePicker,
            endTimePicker: _mondayEndTimePicker,
          ),
      
          CustomSwitchTile(
            title: "Tuesday",
            value: _isTuesdaySwitched,
            startTime: _tuesdayStartime,
            endTime: _tuesdayEndtime,
            startTimePicker: _tuesdayStartTimePicker,
            endTimePicker: _tuesdayEndTimePicker,
          ),
      
          CustomSwitchTile(
            title: "Wednesday",
            value: _isWednesdaySwitched,
            startTime: _wednesdayStartime,
            endTime: _wednesdayEndtime,
            startTimePicker: _wednesdayStartTimePicker,
            endTimePicker: _wednesdayEndTimePicker,
          ),
      
          CustomSwitchTile(
            title: "Thursday",
            value: false,
            startTime: _thursdayStartime,
            endTime: _thursdayEndtime,
            startTimePicker: _thursdayStartTimePicker,
            endTimePicker: _thursdayEndTimePicker,
          ),
      
          CustomSwitchTile(
            title: "Friday",
            value: false,
            startTime: _fridayStartime,
            endTime: _fridayEndtime,
            startTimePicker: _fridayStartTimePicker,
            endTimePicker: _fridayEndTimePicker,
          ),
      
          CustomSwitchTile(
            title: "Saturday",
            value: true,
            startTime: _saturdayStartime,
            endTime: _saturdayEndtime,
            startTimePicker: _saturdayStartTimePicker,
            endTimePicker: _saturdayEndTimePicker,
          ),
      
          CustomSwitchTile(
            title: "Sunday",
            value: false,
            startTime: _sundayStartime,
            endTime: _sundayEndtime,
            startTimePicker: _sundayStartTimePicker,
            endTimePicker: _sundayEndTimePicker,
          ),

           Padding(
             padding: const EdgeInsets.all(15.0),
             child: SizedBox(height: 50.h, width: double.infinity,
                   child: ElevatedButton(
                    //button color
                    style: ElevatedButton.styleFrom(
                           backgroundColor: Color(0xff000048), // sets the button color
                          ),
                      child: Text('Update', style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                      onPressed: () {
                        print("Monday>>>>>>> Start time: ${_mondayStartime.format(context)}   End time: ${_mondayEndtime.format(context)}");
                        print("Tuesday>>>>>>> Start time: ${_tuesdayStartime.format(context)}   End time: ${_tuesdayEndtime.format(context)}");
                        print("Wednesday>>>>>>> Start time: ${_wednesdayStartime.format(context)}   End time: ${_wednesdayEndtime.format(context)}");
                        print("Thursday>>>>>>> Start time: ${_thursdayStartime.format(context)}   End time: ${_thursdayEndtime.format(context)}");
                        print("Friday>>>>>>> Start time: ${_fridayStartime.format(context)}   End time: ${_fridayEndtime.format(context)}");
                        print("Saturday>>>>>>> Start time: ${_saturdayStartime.format(context)}   End time: ${_saturdayEndtime.format(context)}");
                        print("Sunday>>>>>>> Start time: ${_sundayStartime.format(context)}   End time: ${_sundayEndtime.format(context)}");
                      },
                   ),),
           ),

           Padding(
             padding: const EdgeInsets.symmetric(horizontal: 15.0),
             child: SizedBox(height: 50.h, width: double.infinity,
                   child: ElevatedButton(
                    //button color
                    style: ElevatedButton.styleFrom(
                           backgroundColor: Color(0xffF95E49), // sets the button color
                          ),
                      child: Text('Mark Leave', style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const LeavePagw()),
                        );
                      },
                   ),),
           ),
          ],
        ),
      ),
    );
  } 
}