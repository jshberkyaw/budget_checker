import 'package:flutter/material.dart';

class CreateAcc extends StatefulWidget {
  const CreateAcc({super.key});

  @override
  State<CreateAcc> createState() => _CreateAccState();
}

class _CreateAccState extends State<CreateAcc> {
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
                TextButton(child: Text("  Cancel",style: TextStyle(color: Colors.blue,fontSize: 18)), onPressed: (){
                  Navigator.pop(context);
                },),
              ],
            ),
            SizedBox(width: 50,),
            Expanded(child:Text("Create account",style: TextStyle(color: Colors.black),))
         
          ],
          
        ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [Padding(
            padding: const EdgeInsets.only(left:12.0,right: 12,top: 12),
            child: Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
              child: const Column(children: [
                ListTile(
                    title: Padding(
                      padding: EdgeInsets.only(top:10.0),
                      child: Text("Bank Sync",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
                    ) ,
                    subtitle: Padding(
                      padding: EdgeInsets.only(top:8.0),
                      child: Text("Connect to your bank account.\nSynchronize your transactions to wallet automatically.\n",
                      style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400),),
                    ),
                    trailing: Icon(Icons.home_work,size: 60,color:Colors.blue,),
                )
              ],),
              
            ),
            
          ),
          TextButton(onPressed: (){}, child: Text("     HOW DOES IT WORK?",style: TextStyle(color: Colors.blue),)),
          Padding(
                padding: const EdgeInsets.only(left:12,right: 12,bottom: 12),
                child: Card(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                    child:const Column(
                    children: [
                      ListTile(
                        title: Text('File Import',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
                        subtitle: Padding(
                          padding: EdgeInsets.only(top:8.0),
                          child: Text('Import CSV,Excel or OFX files. Update your account by importing your transactions as data files.\n',
                          style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400),),
                        ),
                        trailing: Icon(Icons.insert_drive_file_outlined, size: 60,color:Colors.blue,),
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
                        title: Text('Manual Input',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
                        subtitle: Padding(
                          padding: EdgeInsets.only(top:8.0),
                          child: Text('Update your account manually.You can connect the account to your bank later, if you wish.\n',
                          style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400),),
                        ),
                        trailing: Icon(Icons.touch_app, size: 60,color:Colors.blue,),
                      )
                      
                    ],
                  ),),
              ),
         ],
         

        ),
    );
  }
}