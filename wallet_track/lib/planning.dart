import 'package:flutter/material.dart';

class planning extends StatefulWidget {
  const planning({super.key});

  @override
  State<planning> createState() => _planningState();
}

class _planningState extends State<planning> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F5F5),
          appBar: AppBar(
            elevation: 0,
            toolbarHeight: 100,
            backgroundColor: Colors.white,
            flexibleSpace: Container(
              color: Colors.white,
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(
                    height: 70,
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text("Planning",style:TextStyle(fontSize: 28,color: Colors.black,fontWeight: FontWeight.w600,letterSpacing: 0.7),),
                  ),
                  
                ],
              ),
            ),
            //title: 
          ),
          body:  Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Card(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                  child:const Column(
                  children: [
                    ListTile(
                      title: Text('Planned Payments',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
                      subtitle: Padding(
                        padding: EdgeInsets.only(top:8.0),
                        child: Text('Your future payments',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                      ),
                      trailing: Icon(Icons.punch_clock_rounded, size: 40,color:Colors.orangeAccent,),
                    )
                    
                  ],
                ),),
              ),
              Padding(
                padding: const EdgeInsets.only(left:12,right: 12),
                child: Card(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                    child:const Column(
                    children: [
                      ListTile(
                        title: Text('Budgets',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
                        subtitle: Padding(
                          padding: EdgeInsets.only(top:8.0),
                          child: Text('Your spending plan',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                        ),
                        trailing: Icon(Icons.monetization_on_rounded, size: 40,color:Colors.blue,),
                      )
                      
                    ],
                  ),),
              ),
            ],
          )
          
    );
  }
}