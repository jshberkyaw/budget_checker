//import 'dart:html';
import 'package:flutter/material.dart';
import 'package:wallet_track/componets/colors.dart';
//import "bttnnavigator.dart";
//import 'package:carousel_slider/carousel_slider.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}
late double height,width;


class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    height= MediaQuery.of(context).size.height;
    width= MediaQuery.of(context).size.width;
    return SafeArea(
      child:
        Stack(
          children: [
            
            Container(
            color: mygreen,
            height: height,
            width: width,
            child: ListView(
              children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container (
                          width: 170,
                          height: 120,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),color: Colors.white,
                          ),
                          
                          child: const Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(bottom:4.0),
                                  child: Icon(Icons.stacked_bar_chart_sharp,color:Color.fromARGB(255, 3, 194, 194),size: 32,),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(bottom:2),
                                  child: Text("CASH",style: TextStyle(fontSize: 15),),
                                ),
                                Text("80.00",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
                                Text("GHS",style: TextStyle(fontSize: 19),),
                              ],
                            ),
                          ),
                          
                          
                        ),
                        Container (
                          width: 170,
                          height: 120,
                          decoration:BoxDecoration(borderRadius: BorderRadius.circular(12),color: Color.fromARGB(202, 255, 253, 253)),
                        
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom:3.0),
                                child: Icon(Icons.add_circle_rounded,size: 42,color: Color.fromARGB(255, 1, 119, 216),),
                              ),
                              Text("Add Account")
                            ],
                          ),
                          
                          
                        )
                      ],
                    ),
                          SizedBox(
                  height: 130,
                           
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child:
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left:14.0),
                            child: Container(
                                          height: height * 0.15,
                                          width:width*0.9,
                                          decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(16),
                                          boxShadow:const [BoxShadow(color: Color.fromARGB(255, 240, 236, 236),offset: Offset(3,5),spreadRadius: 4),]),
                                          ),
                          ),
                    const SizedBox(
                      width: 10,
                    ),
                     Padding(
                       padding: const EdgeInsets.only(right:14.0),
                       child: Container(
                                     height: height * 0.15,
                                     width:width*0.9,
                                     decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(16),
                                     boxShadow:const [BoxShadow(color: Color.fromARGB(255, 240, 236, 236),offset: Offset(3,5),spreadRadius: 4),]),
                                     ),
                     )
                        ],
                      ),
                    
                    
                  ),)

              ],

            ),
            ),
            
              Positioned(
                top: height* 0.3,
                child: Container(color: const Color(0xFFF5F5F5),
                          height: height * 0.7,
                          width: width,
                          child: ListView(
                  children: [
                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //   children: [
                    //     Container (
                    //       width: 170,
                    //       height: 120,
                    //       decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),color: Colors.white,
                    //       ),
                          
                    //       child: const Padding(
                    //         padding: const EdgeInsets.all(8.0),
                    //         child: Column(
                    //           crossAxisAlignment: CrossAxisAlignment.start,
                    //           children: [
                    //             Padding(
                    //               padding: EdgeInsets.only(bottom:4.0),
                    //               child: Icon(Icons.stacked_bar_chart_sharp,color:Color.fromARGB(255, 3, 194, 194),size: 32,),
                    //             ),
                    //             Padding(
                    //               padding: EdgeInsets.only(bottom:2),
                    //               child: Text("CASH",style: TextStyle(fontSize: 15),),
                    //             ),
                    //             Text("80.00",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
                    //             Text("GHS",style: TextStyle(fontSize: 19),),
                    //           ],
                    //         ),
                    //       ),
                          
                          
                    //     ),
                    //     Container (
                    //       width: 170,
                    //       height: 120,
                    //       decoration:BoxDecoration(borderRadius: BorderRadius.circular(12),color: Color.fromARGB(202, 255, 253, 253)),
                        
                    //       child: const Column(
                    //         mainAxisAlignment: MainAxisAlignment.center,
                    //         children: [
                    //           Padding(
                    //             padding: const EdgeInsets.only(bottom:3.0),
                    //             child: Icon(Icons.add_circle_rounded,size: 42,color: Color.fromARGB(255, 1, 119, 216),),
                    //           ),
                    //           Text("Add Account")
                    //         ],
                    //       ),
                          
                          
                    //     )
                    //   ],
                    // ),
                SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                    // height: 100,
                    // width:width*0.7,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(16),color: Colors.yellow),
                    child: Column(
                      children: [
                        Text("data",style: TextStyle(fontSize: 30),),
                        Text("data",style: TextStyle(fontSize: 30),),
                        Text("data",style: TextStyle(fontSize: 30),),
                        Text("data",style: TextStyle(fontSize: 30),),
                        Text("data",style: TextStyle(fontSize: 30),),
                         
                      ],
                    ),
                    //color: Colors.yellow,
                  ),
                ),
                  SizedBox(
                  height: 5,
                ),
                 Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                    // height: 100,
                    // width:width*0.7,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(16),color: Colors.yellow),
                    child: Column(
                      children: [
                        Text("data",style: TextStyle(fontSize: 30),),
                        Text("data",style: TextStyle(fontSize: 30),),
                        Text("data",style: TextStyle(fontSize: 30),),
                        Text("data",style: TextStyle(fontSize: 30),),
                        Text("data",style: TextStyle(fontSize: 30),),
                         
                      ],
                    ),
                    //color: Colors.yellow,
                  ),
                ),
              
                  ],
                ),),
              ),
            // Container(
            // color: mygreen,
            // height: MediaQuery.of(context).size.height * 0.3,
            // width: width,
            // // child: Padding(
            // //   padding: const EdgeInsets.symmetric(horizontal:14.0),
            // //   child: ListView(
            // //     children: [
            // //       Row(
            // //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // //         children: [
            // //           Container (
            // //             width: 170,
            // //             height: 120,
            // //             decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),color: Colors.white,
            // //             ),
                        
            // //             child: const Padding(
            // //               padding: const EdgeInsets.all(8.0),
            // //               child: Column(
            // //                 crossAxisAlignment: CrossAxisAlignment.start,
            // //                 children: [
            // //                   Padding(
            // //                     padding: EdgeInsets.only(bottom:4.0),
            // //                     child: Icon(Icons.stacked_bar_chart_sharp,color:Color.fromARGB(255, 3, 194, 194),size: 32,),
            // //                   ),
            // //                   Padding(
            // //                     padding: EdgeInsets.only(bottom:2),
            // //                     child: Text("CASH",style: TextStyle(fontSize: 15),),
            // //                   ),
            // //                   Text("80.00",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
            // //                   Text("GHS",style: TextStyle(fontSize: 19),),
            // //                 ],
            // //               ),
            // //             ),
                        
                        
            // //           ),
            // //           Container (
            // //             width: 170,
            // //             height: 120,
            // //             decoration:BoxDecoration(borderRadius: BorderRadius.circular(12),color: Color.fromARGB(202, 255, 253, 253)),
                      
            // //             child: const Column(
            // //               mainAxisAlignment: MainAxisAlignment.center,
            // //               children: [
            // //                 Padding(
            // //                   padding: const EdgeInsets.only(bottom:3.0),
            // //                   child: Icon(Icons.add_circle_rounded,size: 42,color: Color.fromARGB(255, 1, 119, 216),),
            // //                 ),
            // //                 Text("Add Account")
            // //               ],
            // //             ),
                        
                        
            // //           )
            // //         ],
            // //       ),
            // //  SizedBox(
            // //     height: 130,
             
            // //     child: SingleChildScrollView(
            // //       scrollDirection: Axis.horizontal,
            // //       child:
            // //         Row(
            // //           children: [
            // //             Padding(
            // //               padding: const EdgeInsets.only(left:14.0),
            // //               child: Container(
            // //                             height: height * 0.15,
            // //                             width:width*0.9,
            // //                             decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(16),
            // //                             boxShadow:const [BoxShadow(color: Color.fromARGB(255, 240, 236, 236),offset: Offset(3,5),spreadRadius: 4),]),
            // //                             ),
            // //             ),
            // //       const SizedBox(
            // //         width: 10,
            // //       ),
            // //        Padding(
            // //          padding: const EdgeInsets.only(right:14.0),
            // //          child: Container(
            // //                        height: height * 0.15,
            // //                        width:width*0.9,
            // //                        decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(16),
            // //                        boxShadow:const [BoxShadow(color: Color.fromARGB(255, 240, 236, 236),offset: Offset(3,5),spreadRadius: 4),]),
            // //                        ),
            // //        )
            // //           ],
            // //         ),
                  
                  
            // //     ),
            // //   ),
            // //   SizedBox(
            // //     height: 5,
            // //   ),
            // //   Padding(
            // //     padding: const EdgeInsets.all(16.0),
            // //     child: Container(
            // //       // height: 100,
            // //       // width:width*0.7,
            // //       decoration: BoxDecoration(borderRadius: BorderRadius.circular(16),color: Colors.yellow),
            // //       child: Column(
            // //         children: [
            // //           Text("data",style: TextStyle(fontSize: 30),),
            // //           Text("data",style: TextStyle(fontSize: 30),),
            // //           Text("data",style: TextStyle(fontSize: 30),),
            // //           Text("data",style: TextStyle(fontSize: 30),),
            // //           Text("data",style: TextStyle(fontSize: 30),),
           
            // //         ],
            // //       ),
            // //       //color: Colors.yellow,
            // //     ),
            // //   ),
            // //     SizedBox(
            // //     height: 5,
            // //   ),
            // //    Padding(
            // //     padding: const EdgeInsets.all(16.0),
            // //     child: Container(
            // //       // height: 100,
            // //       // width:width*0.7,
            // //       decoration: BoxDecoration(borderRadius: BorderRadius.circular(16),color: Colors.yellow),
            // //       child: Column(
            // //         children: [
            // //           Text("data",style: TextStyle(fontSize: 30),),
            // //           Text("data",style: TextStyle(fontSize: 30),),
            // //           Text("data",style: TextStyle(fontSize: 30),),
            // //           Text("data",style: TextStyle(fontSize: 30),),
            // //           Text("data",style: TextStyle(fontSize: 30),),
           
            // //         ],
            // //       ),
            // //       //color: Colors.yellow,
            // //     ),
            // //   ),

            // //     ],
            // //   ),
            // // ),
            
            // ),
          //  Padding(
          //  //top: height*0.26,
          //  padding:  EdgeInsets.symmetric(vertical:height*0.26,),
          //    child:Column(children:[
             
          //     // SizedBox(
          //     //   height: 130,
             
          //     //   child: SingleChildScrollView(
          //     //     scrollDirection: Axis.horizontal,
          //     //     child:
          //     //       Row(
          //     //         children: [
          //     //           Padding(
          //     //             padding: const EdgeInsets.only(left:14.0),
          //     //             child: Container(
          //     //                           height: height * 0.15,
          //     //                           width:width*0.9,
          //     //                           decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(16),
          //     //                           boxShadow:const [BoxShadow(color: Color.fromARGB(255, 240, 236, 236),offset: Offset(3,5),spreadRadius: 4),]),
          //     //                           ),
          //     //           ),
          //     //     const SizedBox(
          //     //       width: 10,
          //     //     ),
          //     //      Padding(
          //     //        padding: const EdgeInsets.only(right:14.0),
          //     //        child: Container(
          //     //                      height: height * 0.15,
          //     //                      width:width*0.9,
          //     //                      decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(16),
          //     //                      boxShadow:const [BoxShadow(color: Color.fromARGB(255, 240, 236, 236),offset: Offset(3,5),spreadRadius: 4),]),
          //     //                      ),
          //     //      )
          //     //         ],
          //     //       ),
                  
                  
          //     //   ),
          //     // ),
          //     // SizedBox(
          //     //   height: 5,
          //     // ),
          //     // Padding(
          //     //   padding: const EdgeInsets.all(16.0),
          //     //   child: Container(
          //     //     // height: 100,
          //     //     // width:width*0.7,
          //     //     decoration: BoxDecoration(borderRadius: BorderRadius.circular(16),color: Colors.yellow),
          //     //     child: Column(
          //     //       children: [
          //     //         Text("data",style: TextStyle(fontSize: 30),),
          //     //         Text("data",style: TextStyle(fontSize: 30),),
          //     //         Text("data",style: TextStyle(fontSize: 30),),
          //     //         Text("data",style: TextStyle(fontSize: 30),),
          //     //         Text("data",style: TextStyle(fontSize: 30),),
           
          //     //       ],
          //     //     ),
          //     //     //color: Colors.yellow,
          //     //   ),
          //     // ),
          //     //   SizedBox(
          //     //   height: 5,
          //     // ),
          //     //  Padding(
          //     //   padding: const EdgeInsets.all(16.0),
          //     //   child: Container(
          //     //     // height: 100,
          //     //     // width:width*0.7,
          //     //     decoration: BoxDecoration(borderRadius: BorderRadius.circular(16),color: Colors.yellow),
          //     //     child: Column(
          //     //       children: [
          //     //         Text("data",style: TextStyle(fontSize: 30),),
          //     //         Text("data",style: TextStyle(fontSize: 30),),
          //     //         Text("data",style: TextStyle(fontSize: 30),),
          //     //         Text("data",style: TextStyle(fontSize: 30),),
          //     //         Text("data",style: TextStyle(fontSize: 30),),
           
          //     //       ],
          //     //     ),
          //     //     //color: Colors.yellow,
          //     //   ),
          //     // ),
          //   ],)
          //  )
             
             Container(
              
             )
          ],

        ),
    
    );
  }
}