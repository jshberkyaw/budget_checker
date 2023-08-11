import 'package:flutter/material.dart';
import 'package:wallet_track/componets/colors.dart';
import 'package:wallet_track/profile.dart';
import 'package:wallet_track/settings.dart';

class more extends StatefulWidget {
  const more({super.key});

  @override
  State<more> createState() => _moreState();
}

class _moreState extends State<more> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Color(0xFFF5F5F5),
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 95,
        actions: [
          Padding(
            padding: EdgeInsets.only(right:14.0,),
            child: TextButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Profile(),));
            }, 
            child: Text("Profile",style: TextStyle(color: Colors.blue,fontSize: 18,fontWeight: FontWeight.w500),)
          
            )
          )
        ],
        backgroundColor: Colors.white,
        flexibleSpace: Container(
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 70,
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("More",style: TextStyle(fontSize: 28,fontWeight: FontWeight.w600),),
              )
            ],
          ),
        ),
        
      ),
       body: Padding(
         padding: const EdgeInsets.symmetric(horizontal:20.0,vertical: 8),
         child: GridView(gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisSpacing: 10,crossAxisSpacing: 20),
         children: [
          Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(17),color: Colors.white,
                boxShadow:const [BoxShadow(color:Color.fromARGB(255, 237, 234, 234),blurRadius: 3.0,spreadRadius: 5,offset: Offset(3.9, 3))]),
                child: 
                const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                              Icon(Icons.star_rate_rounded,size: 60, color:Colors.blue,),
                              Text("  UPGRADE!",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),)
                        ],
                ),
              ),
              Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(17),color: Colors.white,
                boxShadow:[BoxShadow(color:Color.fromARGB(255, 237, 234, 234),blurRadius: 3.0,spreadRadius: 5,offset: Offset(-3, 3))]),
                child: 
                 Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                              Icon(Icons.group_rounded,size: 60, color:mygreen,),
                              const Text("  Group Sharing",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),),
                              const Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("No Group",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 15),),
                              )
                        ],
                ),
              ),
            
            Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(17),color: Colors.white,
                boxShadow:const [BoxShadow(color:Color.fromARGB(255, 237, 234, 234),blurRadius: 3.0,spreadRadius: 5,offset: Offset(3.8, 3))]),
                child: 
                 Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                              Icon(Icons.list,size: 60, color:mygreen,),
                              const Text("  Records",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),),
                              
                        ],
                ),
              ),
               Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(17),color: Colors.white,
                boxShadow:const [BoxShadow(color:Color.fromARGB(255, 237, 234, 234),blurRadius: 3.0,spreadRadius: 5,offset: Offset(-3, 3))]),
                child: 
                const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                              Icon(Icons.speed_rounded,size: 60, color:Colors.blue,),
                              const Text("     Wallet for\n your business",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),),
                              
                        ],
                ),
              ),
               Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(17),color: Colors.white,
                boxShadow:const[BoxShadow(color:Color.fromARGB(255, 237, 234, 234),blurRadius: 3.0,spreadRadius: 5,offset: Offset(3.8, 3))]),
                child: 
                 const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                              Icon(Icons.follow_the_signs,size: 60, color:Colors.pinkAccent,),
                              Text("  Follow us",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),),
                              
                        ],
                ),
              ),
               InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Settings(),));
                },
                 child: Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(17),color: Colors.white,
                  boxShadow:[BoxShadow(color:Color.fromARGB(255, 237, 234, 234),blurRadius: 3.0,spreadRadius: 5,offset: Offset(-3, 3))]),
                  child: 
                   const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                                Icon(Icons.settings_display_rounded,size: 60, color:Colors.blue,),
                                const Text("  Settings",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),),
                                
                          ],
                  ),
                             ),
               ),
               Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(17),color: Colors.white,
                boxShadow:[BoxShadow(color:Color.fromARGB(255, 237, 234, 234),blurRadius: 3.0,spreadRadius: 5,offset: Offset(3.8, 3))]),
                child: 
                 Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                              Icon(Icons.wallet,size: 60, color:mygreen,),
                              const Text("  About Wallet",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),),
                              
                        ],
                ),
              ),
               Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(17),color: Colors.white,
                boxShadow:[BoxShadow(color:Color.fromARGB(255, 237, 234, 234),blurRadius: 3.0,spreadRadius: 5,offset: Offset(-3, 3))]),
                child: 
                const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                              Icon(Icons.live_help_rounded,size: 60, color:Colors.yellow,),
                              const Text("  Help",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),),
                              
                        ],
                ),
              ),
          ],
             
         
         
        
           ),
       ));
  }
}