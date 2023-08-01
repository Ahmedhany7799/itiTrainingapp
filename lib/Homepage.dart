import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class homepage extends StatefulWidget {
  // final String email;

  const homepage({super.key, });

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  int index =0;
  String email ="";
  Future<void> getCachedEmail() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
   email = prefs.getString('email')!;
   setState(() {

   });

  }
  @override

  Widget build(BuildContext context) {
    return Scaffold(

 appBar: AppBar(
  backgroundColor:  Color.fromRGBO(3, 96, 164,1),
  title: Text("Home Page",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
  centerTitle: true,
),

      body: Center(
       child:Text("Welcome \n $email",style: TextStyle(color: Colors.black,fontSize: 40),),
      ),




      bottomNavigationBar: NavigationBar(
selectedIndex: index,
        onDestinationSelected: (index)=>setState(() =>this.index=index),
        height: 80,
        destinations: [
          NavigationDestination(
              icon: Icon(Icons.home_outlined,size: 35,),
              selectedIcon: Icon(Icons.home),
              label: ""),
          NavigationDestination(
              icon: Icon(Icons.date_range_outlined,size: 35,),
              selectedIcon: Icon(Icons.date_range),
              label: ""),
          NavigationDestination(
              icon: Icon(Icons.chat_outlined,size: 35,),
              selectedIcon: Icon(Icons.chat),
              label: ""),
          NavigationDestination(
              icon: Icon(Icons.person_outline,size: 35,),
              selectedIcon: Icon(Icons.person), label: '',
            ),
        ],
      ),
    );
  }
}
