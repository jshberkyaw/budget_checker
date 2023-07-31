import 'package:flutter/material.dart';

class statistics extends StatefulWidget {
  const statistics({super.key});

  @override
  State<statistics> createState() => _statisticsState();
}

class _statisticsState extends State<statistics> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F5F5),
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 95,
        backgroundColor: Colors.white,
        flexibleSpace: Container(
          color: Colors.white,
          child:const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(
                height: 70,
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("Statistics",style:TextStyle(fontSize: 28,color: Colors.black,fontWeight: FontWeight.w600,letterSpacing: 0.7),),
              ),
            ],
             
          ) ,
              
        ),
       
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Card(
              shape:RoundedRectangleBorder(borderRadius:BorderRadius.circular(16) ) ,
              child:const Column(
                children: [
                  ListTile(
                    title: Text('BALANCE',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400),),
                    subtitle: Padding(
                      padding: EdgeInsets.only(top:8.0),
                      child: Text("GH 0.00",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w800,color: Colors.black),),
                    ),
                    trailing: Icon(Icons.window,color: Colors.blue,size: 60)
                  )
                ], 
            ) ,),
          ),
           Padding(
            padding: const EdgeInsets.only(left:12,right:12,bottom:12),
            child: Card(
              shape:RoundedRectangleBorder(borderRadius:BorderRadius.circular(16) ) ,
              child:const Column(
                children: [
                  ListTile(
                    title: Text('SPENDING',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400),),
                    subtitle: Padding(
                      padding: EdgeInsets.only(top:8.0),
                      child: Text("GH 100.00",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w800,color: Colors.black),),
                    ),
                    trailing: Icon(Icons.check_circle_rounded,color: Colors.purple,size: 60)
                  )
                ], 
            ) ,),
          ),
           Padding(
            padding: const EdgeInsets.only(left:12,right:12,bottom: 12),
            child: Card(
              shape:RoundedRectangleBorder(borderRadius:BorderRadius.circular(16) ) ,
              child:const Column(
                children: [
                  ListTile(
                    title: Text('CASH FLOW',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400),),
                    subtitle: Padding(
                      padding: EdgeInsets.only(top:8.0),
                      child: Text("GH -100.00",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w800,color: Colors.black),),
                    ),
                    trailing: Icon(Icons.pie_chart_rounded,color: Colors.red,size: 60)
                  )
                ], 
            ) ,),
          ),
           Padding(
            padding: const EdgeInsets.only(left:12,right:12,bottom:12),
            child: Card(
              shape:RoundedRectangleBorder(borderRadius:BorderRadius.circular(16) ) ,
              child:const Column(
                children: [
                  ListTile(
                    title: Text('OUTLOOK',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400),),
                    subtitle: Padding(
                      padding: EdgeInsets.only(top:8.0),
                      child: Text("GH 0.00",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w800,color: Colors.black),),
                    ),
                    trailing: Icon(Icons.more_time,color: Colors.grey,size: 60)
                  )
                ], 
            ) ,),
          ), Padding(
            padding: const EdgeInsets.only(left:12,right:12,bottom:12),
            child: Card(
              shape:RoundedRectangleBorder(borderRadius:BorderRadius.circular(16) ) ,
              child:const Column(
                children: [
                  ListTile(
                    title: Text('CREDIT',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400),),
                    subtitle: Padding(
                      padding: EdgeInsets.only(top:8.0),
                      child: Text("GH 0.00",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w800,color: Colors.black),),
                    ),
                    trailing: Icon(Icons.cyclone_rounded,color: Colors.grey,size: 60,)
                  )
                ], 
            ) ,),
          ), Padding(
           padding: const EdgeInsets.only(left:12,right:12,bottom:12),
            child: Card(
              shape:RoundedRectangleBorder(borderRadius:BorderRadius.circular(16) ) ,
              child:const Column(
                children: [
                  ListTile(
                    title: Text('REPORTS - INCOME ',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400),),
                    subtitle: Padding(
                      padding: EdgeInsets.only(top:8.0),
                      child: Text("GH 0.00",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w800,color: Colors.black),),
                    ),
                    trailing: Icon(Icons.timeline_rounded,color: Colors.grey,size: 60)
                  )
                ], 
            ) ,),
          ),
        ],),
      ),
    );
  }
}