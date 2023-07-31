import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';

class plus extends StatefulWidget {
  const plus({super.key});

  @override
  State<plus> createState() => _plusState();
}
int index = 0;

class _plusState extends State<plus> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Color(0xFFF5F5F5),
      appBar: AppBar(
        backgroundColor:index==0?Colors.red:Colors.green,
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
            const Column(children: [
              ListTile(
                leading:  Padding(
                  padding: EdgeInsets.only(left:1.0),
                  child: Text("Cancel",style:TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.white),),
                ),
              title: Center(
                child: Text("Add Record",style:TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.white),),
                ),
                trailing:  Text("Templates",style:TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.white),),
              )
            ],),
             Column(children: [
              ToggleSwitch(
                minHeight: 25,
                minWidth: 300,
                initialLabelIndex: index,
                totalSwitches: 3,
                inactiveFgColor: Colors.white,
                activeFgColor: Colors.black,
                activeBgColor: [Colors.white],
                labels: ['Expense', 'Income', 'Transfer'],
                onToggle: (index) {

                  print('switched to: $index');
  },
),
              // ListTile(
              //   leading: Text("Expense",style:TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Colors.white)),
              //   title: Center(child: Text("Income",style:TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Colors.white),),),
              //   trailing:  Text("Transfer",style:TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Colors.white),),
              // )
            ],),
          Column(children: [
              ListTile(
                leading: Container(
                    height: 28,
                    width: 48,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),color: Colors.white),
                    child: const Column(
                      children: [
                        Padding(
                          padding:  EdgeInsets.only(top:4.0),
                          child: Text("GHS",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                        )
                      ],
                    ),
                    
                  //Text("GHS",style:TextStyle(fontSize: 30,fontWeight: FontWeight.w500,color: Colors.white)),
                ),
                //
                //title: Center(child: Text("Income",style:TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Colors.white),),),
                trailing:  Text("0",style:TextStyle(fontSize: 50,fontWeight: FontWeight.w500,color: Colors.white),),
              )
            ],),

          ],
        ),
       // bottom:PreferredSizeWidget(prefe),

      ),
      body:
      const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left:12.0,top:26,bottom: 12),
            child: Text("GENERAL",style:TextStyle(fontSize: 14),),
          ),
           Card(
            child: Column(
              children: [
                ListTile(
                  leading: Icon(Icons.monetization_on_rounded,size: 40,),
                  title: Text("Account",style: TextStyle(fontSize: 14),),
                  trailing:Icon(Icons.keyboard_arrow_right),
                ),
                
              Column(
              children: [
                ListTile(
                  leading: Icon(Icons.help_rounded,size: 40,),
                  title: Text("Category",style: TextStyle(fontSize: 14),),
                  trailing:Icon(Icons.keyboard_arrow_right),
                )
              ],
            ),
            Column(
              children: [
                ListTile(
                  leading: Icon(Icons.calendar_month_rounded,size: 40,),
                  title: Text("Date & Time",style: TextStyle(fontSize: 14),),
                  trailing:Icon(Icons.keyboard_arrow_right),
                )
              ],
            ),
             Column(
              children: [
                ListTile(
                  leading: Icon(Icons.label,size: 40,),
                  title: Text("Labels",style: TextStyle(fontSize: 14),),
                  trailing:Icon(Icons.keyboard_arrow_right),
                )
              ],
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
                  title: Text("Note",style: TextStyle(fontSize: 14),),
                  trailing:Icon(Icons.keyboard_arrow_right),
                ),
              Column(
              children: [
                ListTile(
                  leading: Icon(Icons.person,size: 40,),
                  title: Text("Payee",style: TextStyle(fontSize: 14),),
                  trailing:Icon(Icons.keyboard_arrow_right),
                )
              ],
            ),
            Column(
              children: [
                ListTile(
                  leading: Icon(Icons.payments_sharp,size: 40,),
                  title: Text("Payment type",style: TextStyle(fontSize: 14),),
                  trailing:Icon(Icons.keyboard_arrow_right),
                )
              ],
            ),
            //  Column(
            //   children: [
            //     ListTile(
            //       leading: Icon(Icons.label,size: 40,),
            //       title: Text("Labels",style: TextStyle(fontSize: 14),),
            //       trailing:Icon(Icons.keyboard_arrow_right),
            //     )
            //   ],
            // ),
             //  Column(
            //   children: [
            //     ListTile(
            //       leading: Icon(Icons.label,size: 40,),
            //       title: Text("Labels",style: TextStyle(fontSize: 14),),
            //       trailing:Icon(Icons.keyboard_arrow_right),
            //     )
            //   ],
            // ), //  Column(
            //   children: [
            //     ListTile(
            //       leading: Icon(Icons.label,size: 40,),
            //       title: Text("Labels",style: TextStyle(fontSize: 14),),
            //       trailing:Icon(Icons.keyboard_arrow_right),
            //     )
            //   ],
            // ), //  Column(
            //   children: [
            //     ListTile(
            //       leading: Icon(Icons.label,size: 40,),
            //       title: Text("Labels",style: TextStyle(fontSize: 14),),
            //       trailing:Icon(Icons.keyboard_arrow_right),
            //     )
            //   ],
            // ),
            
            ],
            ),     
          ),

        ],
      ) ,
    );
  }
}