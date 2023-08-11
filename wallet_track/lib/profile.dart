import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
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
                child: Text("Profile",style:TextStyle(fontSize: 28,color: Colors.black,fontWeight: FontWeight.w600,letterSpacing: 0.7),),
              ),
              SizedBox(
                    height: 4,
                  ),
              ],
            ),
              

          ),
        ),
        body: ListView(
          
          children: [
            SizedBox(
              height: 25,
            ),
            
            Container(
              height: 150,
              width: MediaQuery.of(context).size.width,
              color:Colors.blueAccent,
              child: Card(
                child: Row(
                  children: [
                    Container(
                      height: 150,
                      width: 130,
                      color: Colors.amber,
                    ),
                    Container(
                      height: 150,
                      width: 253,
                      //color: Colors.blue,
                      child: const Card(
                        child: Column(
                          children: [
                            ListTile(
                  title: Text("General",style: TextStyle(fontSize: 17),),
                  
                ),
                Divider(
                  thickness: 1,
                ),
                 ListTile(
                  title: Text("Dashboard",style: TextStyle(fontSize: 17),),
                  
                ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              )
              ),

          ],
        ),
    );
  }
}