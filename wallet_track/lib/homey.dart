

import 'package:flutter/material.dart';
import 'package:wallet_track/CreateAccount.dart';
import 'package:wallet_track/componets/colors.dart';
import 'package:wallet_track/notification.dart';
import 'package:wallet_track/settings.dart';

class Homey extends StatefulWidget {
  const Homey({super.key});

  @override
  State<Homey> createState() => _HomeyState();
}

late double height, width;

class _HomeyState extends State<Homey> {
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Stack(children: [
        Container(
          height: height * 0.3,
          width: width,
          color: mygreen,
        ),
        Positioned(
          top: height * 0.3,
          child: Container(
            height: height * 0.7,
            width: width,
            color: Color(0xFFF5F5F5),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Container(
            height: height,
            width: width,
            color: Colors.transparent,
            child: ListView(
              children: [
                 Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0, right: 0),
                      child: IconButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> Notify()));
                      }, icon:Icon(Icons.notifications,color: Colors.white,)),
                      
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: 10.0,
                      ),
                      child: 
                      IconButton(onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> Settings()));
                      }, icon: Icon(Icons.settings, color: Colors.white,))
                      //Icon(Icons.settings, color: Colors.white, ),
                    )
                  ],
                ),
               const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: (){

                      },
                      child: Container(
                        width: 170,
                        height: 120,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.white,
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(bottom: 4.0),
                                child: Icon(
                                  Icons.stacked_bar_chart_sharp,
                                  color: Color.fromARGB(255, 3, 194, 194),
                                  size: 32,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(bottom: 2),
                                child: Text(
                                  "CASH",
                                  style: TextStyle(fontSize: 15),
                                ),
                              ),
                              Text(
                                "80.00",
                                style: TextStyle(
                                    fontSize: 22, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "GHS",
                                style: TextStyle(fontSize: 19),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder:(context) => CreateAcc(),));
                      },
                      child: Container(
                        width: 170,
                        height: 120,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Color.fromARGB(202, 255, 253, 253)),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 3.0),
                              child: Icon(
                                Icons.add_circle_rounded,
                                size: 42,
                                color: Color.fromARGB(255, 1, 119, 216),
                              ),
                            ),
                            Text("Add Account")
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 130,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          height: height * 0.16,
                          width: width * 0.87,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(16),
                              boxShadow: const [
                                BoxShadow(
                                    color: Color.fromARGB(255, 240, 236, 236),
                                    offset: Offset(3, 5),
                                    spreadRadius: 4),
                              ]),
                          child: Column(
                            children: [
                              const ListTile(
                                leading: Icon(
                                  Icons.account_balance_wallet,
                                  color: Colors.greenAccent,
                                  size: 45,
                                ),
                                title: Padding(
                                  padding: EdgeInsets.only(top: 8.0, bottom: 5),
                                  child: Text(
                                    "Need More Accounts?",
                                    style: TextStyle(fontWeight: FontWeight.w600),
                                  ),
                                ),
                                subtitle: Text(
                                    "Create more accounts that correspnd with your financial life.",
                                    style: TextStyle(fontWeight: FontWeight.w600),),
                                trailing: Icon(
                                  Icons.cancel,
                                  size: 19,
                                ),
                              ),
                              Column(children: [
                                  ElevatedButton(onPressed:(){
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => CreateAcc(),));
                                  },
                                  style: ElevatedButton.styleFrom(backgroundColor: Color.fromARGB(228, 228, 249, 255)),
                                   child: Text("                         Create account                         ",style: TextStyle(color: Colors.blue),) )
                              ],)
                            ],
                            
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 15.0),
                          child: Container(
                            height: height * 0.16,
                            width: width * 0.8,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(16),
                                boxShadow: const [
                                  BoxShadow(
                                      color: Color.fromARGB(255, 240, 236, 236),
                                      offset: Offset(3, 5),
                                      spreadRadius: 4),
                                ]),
                                child: Column(
                                  children: [
                                    const ListTile(
                            leading: Icon(
                              Icons.speaker_notes,
                              color: Colors.greenAccent,
                              size: 45,
                            ),
                            title: Padding(
                              padding: EdgeInsets.only(top: 8.0, bottom: 4),
                              child: Text(
                                    "Get important news!",
                                    style: TextStyle(fontWeight: FontWeight.w600),
                              ),
                            ),
                            subtitle: Text(
                                    "Learn about updates, news and special offers. Turn off anytime.",
                                    style: TextStyle(fontSize: 13.1),),
                            trailing: Icon(
                              Icons.cancel,
                              size: 19,
                            ),
                          ),
                          Column(children: [
                                  ElevatedButton(onPressed:(){},
                                  style: ElevatedButton.styleFrom(backgroundColor: Color.fromARGB(228, 228, 249, 255)),
                                   child: Text("                    Enable Notifications                  ",style: TextStyle(color: Colors.blue),) )
                              ],)
                                  ],
                                  
                                ),
                                
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(
                            color: Color.fromARGB(255, 240, 236, 236),
                            offset: Offset(3, 5),
                            spreadRadius: 4),
                      ]),
                  child:  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top:15.0,left:15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text( "Balance Trend ",style: TextStyle(fontSize: 21,fontWeight: FontWeight.w800),),
                            Padding(
                              padding:const EdgeInsets.only(right:15.0),
                              child: IconButton(onPressed: (){}, icon:const Icon(Icons.more_horiz))
                              
                              
                            )
                          ],
                        ),
                      ),
                      Text(" ",style: TextStyle(fontSize: 30),),
                      Text( " ",style: TextStyle(fontSize: 30),),
                      Text(" ", style: TextStyle(fontSize: 30), ),
                      Text(" ",style: TextStyle(fontSize: 30),),
                    ],
                  ),
                  //color: Colors.yellow,
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(
                            color: Color.fromARGB(255, 240, 236, 236),
                            offset: Offset(3, 5),
                            spreadRadius: 4),
                      ]),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                      Padding(
                        padding: EdgeInsets.only(top:15.0,left:15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text( "Top expenses ",style: TextStyle(fontSize: 21,fontWeight: FontWeight.w800),),
                            Padding(
                              padding: EdgeInsets.only(right:15.0),
                              child: Icon(Icons.more_horiz),
                            )
                          ],
                        ),
                      ),
                      Text(" ",style: TextStyle(fontSize: 30),),
                      Text( " ",style: TextStyle(fontSize: 30),),
                      Text(" ", style: TextStyle(fontSize: 30), ),
                      Text(" ",style: TextStyle(fontSize: 30),),
                    ],
                  ),
                  //color: Colors.yellow,
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(
                            color: Color.fromARGB(255, 240, 236, 236),
                            offset: Offset(3, 5),
                            spreadRadius: 4),
                      ]),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                     Padding(
                        padding: EdgeInsets.only(top:15.0,left:15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text( "Last records",style: TextStyle(fontSize: 21,fontWeight: FontWeight.w800),),
                            Padding(
                              padding: EdgeInsets.only(right:15.0),
                              child: Icon(Icons.more_horiz),
                            )
                          ],
                        ),
                      ),
                      Text(" ",style: TextStyle(fontSize: 30),),
                      Text( " ",style: TextStyle(fontSize: 30),),
                      Text(" ", style: TextStyle(fontSize: 30), ),
                      Text(" ",style: TextStyle(fontSize: 30),),
                    ],
                  ),
                  //color: Colors.yellow,
                ),
                const SizedBox(
                  height: 15,
                ),
                
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal:120.0),
                  child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        shape: ContinuousRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        minimumSize: Size(1, 28),
                        //maximumSize: Size(1, 5),
                        
                      ),
                      child: Text(
                        "ADD WIDGET",
                        style: TextStyle(color: Colors.blue),
                      ),
                    ),
                ),
                //
                const SizedBox(
                  height: 80,
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
