import 'package:flutter/material.dart';

class Notify extends StatefulWidget {
  const Notify({super.key});

  @override
  State<Notify> createState() => _NotifyState();
}

class _NotifyState extends State<Notify> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F5F5),
      appBar:  AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Colors.white,
        titleSpacing: 0.0,
        title:  Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                 IconButton(
              onPressed: (){
              Navigator.pop(context);
            }, icon:Icon(Icons.keyboard_arrow_left,color: Colors.blue,),),
                const Text("Back",style: TextStyle(color: Colors.blue,fontSize: 18),),
              ],
            ),
            SizedBox(width: 50,),
            Expanded(child: const Text("Notifications",style: TextStyle(color: Colors.black),))
         
          ],
          
        ),
        actions: const [ Center
        (child: Padding(
          padding: EdgeInsets.only(right:12.0),
          child: Text("Settings",style: TextStyle(color: Colors.blue,fontSize: 17,fontWeight: FontWeight.w500),),
        )

        )],
      ),
      body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Card(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                  child:const Column(
                  children: [
                    ListTile(
                      leading: Icon(Icons.newspaper,size: 40,color:Colors.pink,),
                      title: Text('Saving in the Era of inflation',style: TextStyle(fontSize: 17,fontWeight: FontWeight.w600),),
                      subtitle: Padding(
                        padding: EdgeInsets.only(top:8.0),
                        child: Text('Read a new blog post with financial tips written by BudgetBakers.',style: TextStyle(fontSize: 14.5,fontWeight: FontWeight.w500),),
                        
                      ),
                      trailing: Icon(Icons.cancel, size: 20,color:Colors.grey,),
                    )
                    
                  ],
                ),),
              ),
              Padding(
                padding: const EdgeInsets.only(left:12,right: 12,bottom: 12),
                child: Card(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                    child:const Column(
                    children: [
                       ListTile(
                      leading: Icon(Icons.newspaper,size: 40,color:Colors.pink,),
                      title: Text('Whats Your Personal Inflation Rate?',style: TextStyle(fontSize: 17,fontWeight: FontWeight.w600),),
                      subtitle: Padding(
                        padding: EdgeInsets.only(top:8.0),
                        child: Text('Read a new blog post with financial tips written by BudgetBakers.',style: TextStyle(fontSize: 14.5,fontWeight: FontWeight.w500),),
                      ),
                      trailing: Icon(Icons.cancel, size: 20,color:Colors.grey,),
                    )
                      
                    ],
                  ),),
              ),
              Padding(
                padding: const EdgeInsets.only(left:12,right: 12,bottom:12),
                child: Card(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                    child:const Column(
                    children: [
                       ListTile(
                      leading: Icon(Icons.newspaper,size: 40,color:Colors.pink,),
                      title: Text('Whats is inflation, What Causes it, and What Can I Do About it?',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),),
                      subtitle: Padding(
                        padding: EdgeInsets.only(top:8.0),
                        child: Text('Read a new blog post with financial tips written by BudgetBakers.',style: TextStyle(fontSize: 14.5,fontWeight: FontWeight.w500),),
                      ),
                      trailing: Icon(Icons.cancel, size: 20,color:Colors.grey,),
                    )
                      
                    ],
                  ),),
              ),
            ],
          ),
    );
  }
}