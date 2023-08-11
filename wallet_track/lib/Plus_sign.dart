import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';
import 'package:wallet_track/bttnnavigator.dart';
import 'package:wallet_track/home.dart';
import 'package:wallet_track/homey.dart';

class plus extends StatefulWidget {
  const plus({super.key});

  @override
  State<plus> createState() => _plusState();
}

int myIndex = 0;
//Color mycolor = Colors.red;

class _plusState extends State<plus> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Color(0xFFF5F5F5),
      appBar: AppBar(
        backgroundColor:myIndex == 0? Colors.red : myIndex == 1? Colors.green : Colors.blueGrey,
        toolbarHeight: 170,
        title: Column(
          children: [
            //       Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //   //crossAxisAlignment: CrossAxisAlignment.start,
            //   children: [
            //     Text("Cancel",style:TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.white),),
            //     Text("Add Record",style:TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.white),),
            //     Text("Templates",style:TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.white),),
            //   ],
            // ),
            ListTile(
              contentPadding:const EdgeInsets.only(left: 12),
              leading:  Padding(
                padding:const EdgeInsets.only(left:1.0),
                child: TextButton(onPressed:(){
                  //Navigator.push (context, MaterialPageRoute(builder: (context) => home(),));
                }, child: 
                          const Text("Cancel",style:TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.white),),
              )),
            title: const Center(
              child: Text("Add Record",style:TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.white),),
              ),
              trailing: const Text("Templates",style:TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.white),),
            ),
             ToggleSwitch(
               minHeight: 25,
               minWidth: 300,
               initialLabelIndex: myIndex,
               totalSwitches: 3,
               inactiveFgColor: Colors.white,
               activeFgColor: Colors.black,
               activeBgColor: const [Colors.white],
               labels: const ['Expense', 'Income', 'Transfer'],
               onToggle: (index) {
                setState(() {
                  myIndex = index!;
                });
                // myIndex = index!;
                // if (myIndex == 1){
                // setState(() {
                //   mycolor= Colors.green;
                // });}
                
                 print('switched to: $index');
                 print('switched to:this is for my index $index');

  },
),
          Padding(
            padding: const EdgeInsets.only(top:16.0),
            child: ListTile(
              leading: Container(
                  height: 28,
                  width: 60,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),color: Colors.white),
                  child: const Column(
                    children: [
                      Padding(
                        padding:  EdgeInsets.only(top:4.0),
                        child: Text("GHS",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500,),textAlign: TextAlign.center,),
                      )
                    ],
                  ),
                  
                //Text("GHS",style:TextStyle(fontSize: 30,fontWeight: FontWeight.w500,color: Colors.white)),
              ),
              //
              //title: Center(child: Text("Income",style:TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Colors.white),),),
              trailing: myIndex == 0? Text("-0",style:TextStyle(fontSize: 50,fontWeight: FontWeight.w500,color: Colors.white),): myIndex==1? Text("+0",style:TextStyle(fontSize: 50,fontWeight: FontWeight.w500,color: Colors.white),):Text("0",style:TextStyle(fontSize: 50,fontWeight: FontWeight.w500,color: Colors.white),),
            ),
          ),

          ],
        ),
       // bottom:PreferredSizeWidget(prefe),

      ),
      body:
     ListView(
        //crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Padding(
            padding: const EdgeInsets.only(left:12.0,top:26,bottom: 12),
            child: Text("GENERAL",style:TextStyle(fontSize: 14),),
          ),
           Card(
            child: Column(
              children: [
                 ListTile(
                  leading: Icon(Icons.monetization_on_rounded,size: 40,),
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Account",style: TextStyle(fontSize: 17),),
                      Text('Cash')
                    ],
                  ),
                  trailing:Icon(Icons.keyboard_arrow_right),
                ),
                Divider(
                  thickness: 1,
                ), 
                ListTile(
                  leading: Icon(Icons.help_rounded,size: 40,),
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Category",style: TextStyle(fontSize: 17),),
                      Text("Required",style:TextStyle(color: Colors.red),)
                    ],
                  ),
                  trailing:Icon(Icons.keyboard_arrow_right),
                ),
                Divider(
                  thickness: 1,
                ),
            ListTile(
              leading: Icon(Icons.calendar_month_rounded,size: 40,),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Date & Time",style: TextStyle(fontSize: 17),),
                  Text("Today, 9:52am")
                ],
              ),
              //trailing:Icon(Icons.keyboard_arrow_right),
            ),
            Divider(
                  thickness: 1,
                ), 
             ListTile(
               leading: Icon(Icons.label,size: 40,),
               title: Text("Labels",style: TextStyle(fontSize: 17),),
               trailing:Icon(Icons.add_circle_rounded,color: Colors.blue,size: 30,),
             ),
            
            ],
            ),     
          ),
          
          Padding(
            padding: const EdgeInsets.only(left:12.0,top:26,bottom: 12),
            child: Text("MORE DETAIL",style:TextStyle(fontSize: 14),),
          ),
             Card(
            child: Column(
              children: [
                ListTile(
                  leading: Icon(Icons.notes_sharp,size: 40,),
                  title: Text("Note",style: TextStyle(fontSize: 17),),
                  trailing:Icon(Icons.keyboard_arrow_right),
                ),
                Divider(
                  thickness: 1,
                ), 
              ListTile(
                leading: Icon(Icons.person,size: 40,),
                title: Text("Payer",style: TextStyle(fontSize: 17),),
                trailing:Icon(Icons.keyboard_arrow_right),
              ),
              Divider(
                  thickness: 1,
                ), 
            ListTile(
              leading: Icon(Icons.payments_sharp,size: 40,),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Payment type",style: TextStyle(fontSize: 17),),
                  Text("Cash")
                ],
              ),
              trailing:Icon(Icons.keyboard_arrow_right),
            ),
            Divider(
                  thickness: 1,
                ), 
            ListTile(
              leading: Icon(Icons.shield_outlined,size: 40,),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Warranty",style: TextStyle(fontSize: 17),),
                  Text("None")
                ],
              ),
              trailing:Icon(Icons.keyboard_arrow_right),
            ),Divider(
                  thickness: 1,
                ), 
            ListTile(
              leading: Icon(Icons.hourglass_empty_sharp,size: 40,),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Status",style: TextStyle(fontSize: 17),),
                  Text("Cleared")
                ],
              ),
              trailing:Icon(Icons.keyboard_arrow_right),
            ),Divider(
                  thickness: 1,
                ), 
            ListTile(
                leading: Icon(Icons.pin_drop,size: 35,color:Colors.blue,),
                title: Text("Add location",style: TextStyle(fontSize: 17,color: Colors.blue,),),
                trailing:Icon(Icons.keyboard_arrow_right),
              ),
              Divider(
                  thickness: 1,
                ), 
              ListTile(
                leading: Icon(Icons.photo_camera,size: 30,color:Colors.blue),
                title: Text("Attach photo",style: TextStyle(fontSize: 17,color: Colors.blue),),
                trailing:Icon(Icons.keyboard_arrow_right),
              ),

          
            
            ],
            ),     
          ),

        ],
      ) ,
    );
  }
}