//import 'dart:html';
import 'package:flutter/material.dart';
import 'package:wallet_track/componets/colors.dart';
import "bttnnavigator.dart";
import 'package:carousel_slider/carousel_slider.dart';

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
              Container(color: const Color(0xFFF5F5F5),
            height: MediaQuery.of(context).size.height ,
            width: width,),
            Container(color: mygreen,
            height: MediaQuery.of(context).size.height * 0.3,
            width: width,),
           Padding(
             padding:  EdgeInsets.symmetric(vertical: height*0.25,),
             child: ListView(children: [

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child:
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left:14.0),
                        child: Container(
                                      height: height * 0.17,
                                      width:width*0.9,
                                      decoration: BoxDecoration(color: Colors.yellow),
                                      ),
                      ),
                SizedBox(
                  width: 10,
                ),
                 Padding(
                   padding: const EdgeInsets.only(right:14.0),
                   child: Container(
                                 height: height * 0.17,
                                 width:width*0.9,
                                 decoration: BoxDecoration(color: Colors.blue),
                                 ),
                 )
                    ],
                  ),
                
                
              )
              // CarouselSlider(items: [Container(
              //   height: height * 0.17,
              //   width: 300,
              //   color: Colors.blue,
              // ),
              // Container(
              //   height: height * 0.17,
              //   width: 300,
              //   decoration: BoxDecoration(color: Colors.yellow),
              //   )
              //   ], options: CarouselOptions(height: height * 0.19,enableInfiniteScroll: false,)),
              // // Container(
              //   height: height * 0.17,
              //   width: 300,
              //   decoration: BoxDecoration(color: Colors.pink),
              //   )
             ],),
           )
             
          ],

        ),
    
    );
  }
}