import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class CustomSwitchTile extends StatefulWidget {
  final String title;
   bool value;
  // final Function(bool) onChanged;

   CustomSwitchTile({
    Key? key,
    required this.title,
    required this.value,
    // required this.onChanged,
  }) : super(key: key);

  @override
  State<CustomSwitchTile> createState() => _CustomSwitchTileState();
}

class _CustomSwitchTileState extends State<CustomSwitchTile> {
  //  bool _isSwitched = false;

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
    return ListTile(
      title: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Text(widget.title,style: TextStyle(color:widget.value?Color(0xff000048) :Colors.grey),),
              ),
              Switch(
                value: widget.value,
               
                onChanged: (value){
                  
                  setState(() {
                    widget.value = value;
                  });
                },
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Start time', style: TextStyle(color:widget.value?Color(0xff000048) :Colors.grey)),
                     Container(height: 45.h, decoration: BoxDecoration(border: Border.all(color: Colors.grey,width: 1,),borderRadius: BorderRadius.circular(5.0)), 
                     child:  Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left:5.0),
                          child: Text(_selectedTime.format(context),style: TextStyle(color: widget.value?Color(0xff000048) :Colors.grey),),
                        ),
                        Spacer(),
                        IconButton(onPressed: (){ widget.value?_showTimePicker():print("diabled");}, icon: Icon(Icons.watch_later_outlined, color: widget.value?Color(0xff000048) :Colors.grey,)),
                      ],
                      ),
                     )
                  ],
                ),
              ),
              SizedBox(width: 20.w,),
              Expanded(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('End time', style: TextStyle(color:widget.value?Color(0xff000048) :Colors.grey)),
                    Container(height: 45.h, decoration: BoxDecoration(border: Border.all(color: Colors.grey,width: 1,),borderRadius: BorderRadius.circular(5.0)), 
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left:5.0),
                            child: Text(_selectedTime2.format(context),style: TextStyle(color: widget.value?Color(0xff000048) :Colors.grey),)
                          ),
                          // Text(_selectedTime.format(context)),
                          Spacer(),
                          IconButton(onPressed: (){ widget.value?_showTimePicker2():print("diabled");}, icon: Icon(Icons.watch_later_outlined, color: widget.value?Color(0xff000048) :Colors.grey,)),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            
            ],
          ),
        ],
      ),
    );
  }
}