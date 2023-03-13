import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LeavePagw extends StatefulWidget {
  const LeavePagw({super.key});

  @override
  State<LeavePagw> createState() => _LeavePagwState();
}

class _LeavePagwState extends State<LeavePagw> {
  int? _selectedValue = 1;
  bool _dayOff=false;
  bool _hourly=false;
  bool _multiday=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         title:  Image.asset('assets/icons/logo.png', height: 70.h, width: 70.w,),
        centerTitle: true,
        backgroundColor: Color(0xff000048),
        leading:
          IconButton(onPressed: (){
            //navigate to previous screen
            Navigator.pop(context);
          }, icon: Icon(Icons.arrow_back), ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Upcoming Off Days",style: TextStyle(fontSize: 18.sp,fontWeight: FontWeight.bold, color: Color(0xff000048)),),
              SizedBox(height: 10.h,),
              Divider(thickness: 2,),
              ListView.builder(
                shrinkWrap: true,
                itemCount: 3,
                itemBuilder: (context, index) =>
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text("27-02-2020",style: TextStyle(fontSize: 18.sp),),
                        Spacer(),
                        TextButton(onPressed: (){}, child: Text("Edit", style: TextStyle(color: Color(0xff000048),fontWeight: FontWeight.bold),)),
                      ],
                    ),
                    Text("9:00 AM - 5:00 PM",style: TextStyle(color: Colors.grey),),
                    SizedBox(height: 5.h,),
                    Divider(thickness: 2,),
                  ],
                ),
            
              ),
              SizedBox(height: 10.h,),
              Text("Apply For Leave",style: TextStyle(fontSize: 18.sp,fontWeight: FontWeight.bold, color: Color(0xff000048)),),
              SizedBox(height: 10.h,),
             RadioListTile<int>(
              activeColor: Color(0xff000048),
              value: 1,
              groupValue: _selectedValue,
              onChanged: (value) => setState(() {
                _selectedValue = value;
                _dayOff=true;
                _hourly=false;
                _multiday=false;
              } ),
              title: Row(
                children: [
                  Text('Day Off'),
                  Spacer(),
                  IconButton(onPressed: (){}, icon: Icon(Icons.keyboard_arrow_down, color: Color(0xff000048),),),
                ],
              ),
            ),
            Visibility(
              visible: _dayOff,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Select Date",style: TextStyle( color: Color(0xff000048)),),
                  Container(height: 45.h,width: double.infinity, decoration: BoxDecoration(border: Border.all(color: Colors.grey,width: 1,),borderRadius: BorderRadius.circular(5.0)), 
                          child: Row(
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(left:5.0),
                                child: Text("Date",style: TextStyle(color: Colors.grey),)
                              ),
                              Spacer(),
                              IconButton(onPressed:(){}, icon: Icon(Icons.calendar_month_rounded, color: Color(0xff000048),),),
                            ],
                          ),
                        ),
                        SizedBox(height: 10.h,),
                        Row(
            children: [
              Expanded(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Start time', style: TextStyle(color:Colors.grey)),
                     Container(height: 45.h, decoration: BoxDecoration(border: Border.all(color: Colors.grey,width: 1,),borderRadius: BorderRadius.circular(5.0)), 
                     child:  Row(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left:5.0),
                          child: Text("end time",style: TextStyle(color:Color(0xff000048),),),
                        ),
                        Spacer(),
                        IconButton(onPressed: (){
                          setState(() {
                            // _switchValue?widget.startTimePicker():print("diabled");
                          });
                           }, icon: Icon(Icons.watch_later_outlined, color: Color(0xff000048))),
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
                    Text('End time', style: TextStyle(color:Colors.grey)),
                    Container(height: 45.h, decoration: BoxDecoration(border: Border.all(color: Colors.grey,width: 1,),borderRadius: BorderRadius.circular(5.0)), 
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left:5.0),
                            child: Text("End time",style: TextStyle(color:Color(0xff000048)),)
                          ),
                          // Text(_selectedTime.format(context)),
                          Spacer(),
                          IconButton(onPressed: (){ 
                            setState(() {
                              // _switchValue?widget.endTimePicker():print("disabled");
                            });
                            }, icon: Icon(Icons.watch_later_outlined, color: Color(0xff000048))),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            
            ],
          ),
          SizedBox(height: 10.h,),
           SizedBox(
              width: double.infinity,
              height: 50.h,
              child: ElevatedButton(
                      //button color
                      style: ElevatedButton.styleFrom(
                             backgroundColor: Color(0xff000048), // sets the button color
                            ),
                        child: Text('Apply', style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold, fontSize: 15.sp),),
                        onPressed: () {
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(builder: (context) => const ResetLogn()),
                          // );
                        },
                     ),
            )
                ],
              ),
              ),
            RadioListTile<int>(
              activeColor: Color(0xff000048),
              value: 2,
              groupValue: _selectedValue,
              onChanged: (value) => setState(() {
                _selectedValue = value;
                _hourly=true;
                _dayOff=false;
                _multiday=false;
              } ),
              title:Row(
                children: [
                  Text('Hourly'),
                  Spacer(),
                  IconButton(onPressed: (){}, icon: Icon(Icons.keyboard_arrow_down, color: Color(0xff000048),),),
                  
                ],
              ),
            ),
            Visibility(
              visible: _hourly,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Select Date",style: TextStyle( color: Color(0xff000048)),),
                  Container(height: 45.h,width: double.infinity, decoration: BoxDecoration(border: Border.all(color: Colors.grey,width: 1,),borderRadius: BorderRadius.circular(5.0)), 
                          child: Row(
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(left:5.0),
                                child: Text("Date",style: TextStyle(color: Colors.grey),)
                              ),
                              Spacer(),
                              IconButton(onPressed:(){}, icon: Icon(Icons.calendar_month_rounded, color: Color(0xff000048),),),
                            ],
                          ),
                        ),
                        SizedBox(height: 10.h,),
                        Row(
            children: [
              Expanded(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Start time', style: TextStyle(color:Colors.grey)),
                     Container(height: 45.h, decoration: BoxDecoration(border: Border.all(color: Colors.grey,width: 1,),borderRadius: BorderRadius.circular(5.0)), 
                     child:  Row(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left:5.0),
                          child: Text("end time",style: TextStyle(color:Color(0xff000048),),),
                        ),
                        Spacer(),
                        IconButton(onPressed: (){
                          setState(() {
                            // _switchValue?widget.startTimePicker():print("diabled");
                          });
                           }, icon: Icon(Icons.watch_later_outlined, color: Color(0xff000048))),
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
                    Text('End time', style: TextStyle(color:Colors.grey)),
                    Container(height: 45.h, decoration: BoxDecoration(border: Border.all(color: Colors.grey,width: 1,),borderRadius: BorderRadius.circular(5.0)), 
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left:5.0),
                            child: Text("End time",style: TextStyle(color:Color(0xff000048)),)
                          ),
                          // Text(_selectedTime.format(context)),
                          Spacer(),
                          IconButton(onPressed: (){ 
                            setState(() {
                              // _switchValue?widget.endTimePicker():print("disabled");
                            });
                            }, icon: Icon(Icons.watch_later_outlined, color: Color(0xff000048))),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            
            ],
          ),
          SizedBox(height: 10.h,),
           SizedBox(
              width: double.infinity,
              height: 50.h,
              child: ElevatedButton(
                      //button color
                      style: ElevatedButton.styleFrom(
                             backgroundColor: Color(0xff000048), // sets the button color
                            ),
                        child: Text('Apply', style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold, fontSize: 15.sp),),
                        onPressed: () {
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(builder: (context) => const ResetLogn()),
                          // );
                        },
                     ),
            )
                ],
              ),
              ),
            RadioListTile<int>(
              activeColor: Color(0xff000048),
              value: 3,
              groupValue: _selectedValue,
              onChanged: (value) => setState(() {
                _selectedValue = value;
                _multiday=true;
                _dayOff=false;
                _hourly=false;
              } ),
              title: Row(
                children: [
                  Text('Multiday'),
                  Spacer(),
                  IconButton(onPressed: (){}, icon: Icon(Icons.keyboard_arrow_down, color: Color(0xff000048),),),
                ],
              ),
            ),
             Visibility(
              visible: _multiday,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
            children: [
              Expanded(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Start Date', style: TextStyle(color:Colors.grey)),
                     Container(height: 45.h, decoration: BoxDecoration(border: Border.all(color: Colors.grey,width: 1,),borderRadius: BorderRadius.circular(5.0)), 
                     child:  Row(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left:5.0),
                          child: Text("end date",style: TextStyle(color:Color(0xff000048),),),
                        ),
                        Spacer(),
                        IconButton(onPressed: (){
                          setState(() {
                            // _switchValue?widget.startTimePicker():print("diabled");
                          });
                           }, icon: Icon(Icons.calendar_month_rounded, color: Color(0xff000048))),
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
                    Text('End Date', style: TextStyle(color:Colors.grey)),
                    Container(height: 45.h, decoration: BoxDecoration(border: Border.all(color: Colors.grey,width: 1,),borderRadius: BorderRadius.circular(5.0)), 
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left:5.0),
                            child: Text("End  Date",style: TextStyle(color:Color(0xff000048)),)
                          ),
                          // Text(_selectedTime.format(context)),
                          Spacer(),
                          IconButton(onPressed: (){ 
                            setState(() {
                              // _switchValue?widget.endTimePicker():print("disabled");
                            });
                            }, icon: Icon(Icons.calendar_month_rounded, color: Color(0xff000048))),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            
            ],
          ),
                        SizedBox(height: 10.h,),
                        Row(
            children: [
              Expanded(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Start time', style: TextStyle(color:Colors.grey)),
                     Container(height: 45.h, decoration: BoxDecoration(border: Border.all(color: Colors.grey,width: 1,),borderRadius: BorderRadius.circular(5.0)), 
                     child:  Row(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left:5.0),
                          child: Text("end time",style: TextStyle(color:Color(0xff000048),),),
                        ),
                        Spacer(),
                        IconButton(onPressed: (){
                          setState(() {
                            // _switchValue?widget.startTimePicker():print("diabled");
                          });
                           }, icon: Icon(Icons.watch_later_outlined, color: Color(0xff000048))),
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
                    Text('End time', style: TextStyle(color:Colors.grey)),
                    Container(height: 45.h, decoration: BoxDecoration(border: Border.all(color: Colors.grey,width: 1,),borderRadius: BorderRadius.circular(5.0)), 
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left:5.0),
                            child: Text("End time",style: TextStyle(color:Color(0xff000048)),)
                          ),
                          // Text(_selectedTime.format(context)),
                          Spacer(),
                          IconButton(onPressed: (){ 
                            setState(() {
                              // _switchValue?widget.endTimePicker():print("disabled");
                            });
                            }, icon: Icon(Icons.watch_later_outlined, color: Color(0xff000048))),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            
            ],
          ),
          SizedBox(height: 10.h,),
           SizedBox(
              width: double.infinity,
              height: 50.h,
              child: ElevatedButton(
                      //button color
                      style: ElevatedButton.styleFrom(
                             backgroundColor: Color(0xff000048), // sets the button color
                            ),
                        child: Text('Apply', style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold, fontSize: 15.sp),),
                        onPressed: () {
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(builder: (context) => const ResetLogn()),
                          // );
                        },
                     ),
            )
                ],
              ),
              ),
        
          ]),
        ),
      ),
    );
  }
}