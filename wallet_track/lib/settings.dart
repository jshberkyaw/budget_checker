import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Color(0xFFF5F5F5),
      appBar:  AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        toolbarHeight: 100,
        backgroundColor: Colors.white,
        titleSpacing: 0.0,
        title: 
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom:20.0),
                  child: IconButton(onPressed:(){
                    Navigator.pop(context);
                  }, icon: const Icon(Icons.keyboard_arrow_left,color: Colors.blue,size: 35,)),
                ),
                   const Padding(
                     padding: EdgeInsets.only(bottom:20.0),
                     child: Text("More",style: TextStyle(color: Colors.blue,fontSize: 16),),
                   )
              ],
            ),
          flexibleSpace: Container(
            child: 
           const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                    height: 70,
                  ),
                  Padding(
                padding: EdgeInsets.only(left:25.0,top: 16),
                child: Text("Settings",style:TextStyle(fontSize: 28,color: Colors.black,fontWeight: FontWeight.w600,letterSpacing: 0.7),),
              ),
              SizedBox(
                    height: 4,
                  ),
              ],
            ),
              

          ),
        ),
        body: ListView(
          children: const[
            SizedBox(
              height: 15,
            ),
            Card(
            child: Column(
              children: [
                ListTile(
                  leading: Icon(Icons.display_settings,size: 30,color:Colors.blue),
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("General",style: TextStyle(fontSize: 17),),
                    ],
                  ),
                  trailing:Icon(Icons.keyboard_arrow_right),
                ),
                Divider(
                  thickness: 1,
                ),
                 ListTile(
                  leading: Icon(Icons.house_sharp,size: 35,color: Colors.blue,),
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Dashboard",style: TextStyle(fontSize: 17),),
                    ],
                  ),
                  trailing:Icon(Icons.keyboard_arrow_right),
                ),
                 Divider(
                  thickness: 1,
                ),
            ListTile(
              leading: Icon(Icons.account_balance_outlined,size: 30,color: Colors.blue,),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Accounts",style: TextStyle(fontSize: 17),),
                ],
              ),
              trailing:Icon(Icons.keyboard_arrow_right),
            ),
             Divider(
                  thickness: 1,
                ),
                 ListTile(
              leading: Icon(Icons.currency_exchange,size: 30,color: Colors.blue,),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Currency",style: TextStyle(fontSize: 17),),
                ],
              ),
              trailing:Icon(Icons.keyboard_arrow_right),
            ),
             Divider(
                  thickness: 1,
                ),
                 ListTile(
              leading: Icon(Icons.transform,size: 30,color: Colors.blue,),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Automatic Rules",style: TextStyle(fontSize: 17),),
                ],
              ),
              trailing:Icon(Icons.keyboard_arrow_right),
            ),
             Divider(
                  thickness: 1,
                ),
             ListTile(
               leading: Icon(Icons.label_important_outline,size: 35,color: Colors.blue,),
               title: Text("Labels",style: TextStyle(fontSize: 17),),
               trailing:Icon(Icons.keyboard_arrow_right),
             ),
              ListTile(
              leading: Icon(Icons.folder_copy,size: 30,color: Colors.blue,),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Categories",style: TextStyle(fontSize: 17),),
                ],
              ),
              trailing:Icon(Icons.keyboard_arrow_right),
            ),
             Divider(
                  thickness: 1,
                ),
                 ListTile(
              leading: Icon(Icons.note_add_outlined,size: 30,color: Colors.blue,),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Templates",style: TextStyle(fontSize: 17),),
                ],
              ),
              trailing:Icon(Icons.keyboard_arrow_right),
            ),
             Divider(
                  thickness: 1,
                ),
                 ListTile(
              leading: Icon(Icons.notifications_none,size: 30,color: Colors.blue,),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Notifications",style: TextStyle(fontSize: 17),),
                ],
              ),
              trailing:Icon(Icons.keyboard_arrow_right),
            ),
             Divider(
                  thickness: 1,
                ),
                 ListTile(
              leading: Icon(Icons.security_rounded,size: 30,color: Colors.blue,),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Personal data & privacy",style: TextStyle(fontSize: 17),),
                ],
              ),
              trailing:Icon(Icons.keyboard_arrow_right),
            ),
             Divider(
                  thickness: 1,
                ), ListTile(
              leading: Icon(Icons.lock_open,size: 30,color: Colors.blue,),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Security",style: TextStyle(fontSize: 17),),
                ],
              ),
              trailing:Icon(Icons.keyboard_arrow_right),
            ),
             Divider(
                  thickness: 1,
                ),
            
            ],
            ),     
          ),
          ],
        ) ,

    );
  }
}