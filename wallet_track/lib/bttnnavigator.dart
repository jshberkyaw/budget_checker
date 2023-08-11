import 'package:flutter/material.dart';
import 'package:wallet_track/Plus_sign.dart';
import 'package:wallet_track/componets/colors.dart';
//import 'package:wallet_track/home.dart';
import 'package:wallet_track/homey.dart';
import 'package:wallet_track/more.dart';
import 'package:wallet_track/planning.dart';
import 'package:wallet_track/statistics.dart';

class buttnav extends StatefulWidget {
  const buttnav({super.key});
  @override
  State<buttnav> createState() => _buttnavState();
}
List screens = const[
  Homey(),
  planning(),
  plus(),
  statistics(),
  more(),
  
];
int currentindex = 0;


class _buttnavState extends State<buttnav> {
  void Ontap(int index){
    setState(() {
      currentindex = index;
      if (currentindex == 2) {
        showModalBottomSheet<void>(
            context: context,
            builder: (BuildContext context) {
              return  const SizedBox(
                height: 300 ,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                     
                     
                      // const Text('Modal BottomSheet'),
                      // ElevatedButton(
                      //   child: const Text('Close BottomSheet'),
                      //   onPressed: () => Navigator.pop(context),
                      // ),
                    ],
                  ),
                ),
              );
            },
          );
      }

    });

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentindex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex:currentindex,
          onTap: Ontap,
        items: [
         const BottomNavigationBarItem(icon:Icon(Icons.dashboard),label: "Dashboard"),
         const BottomNavigationBarItem(icon: Icon(Icons.watch),label : "Planning"),
         BottomNavigationBarItem(icon: Icon(Icons.add_circle_rounded,size: 40,color: mygreen,), label : ""),
         const BottomNavigationBarItem(icon: Icon(Icons.bar_chart),label : "Statistics"),
         const BottomNavigationBarItem(icon:Icon(Icons.more_rounded),label:"More"),   
         
        ],
        ),
    );
  }
}