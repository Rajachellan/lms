import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  TextEditingController email=new TextEditingController();
  TextEditingController password=new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Dashboard"),),backgroundColor: Colors.grey,
    body: Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(right:250.0),
          child: Container(
            child: ElevatedButton(onPressed: (){
              print("Clickme");
              Navigator.of(context).pop();
            },
            child: Icon(Icons.access_time_rounded),
            ),
          ),
        ),
     Container(
       child:
       Padding(
         padding: const EdgeInsets.only(top: 300.0,left: 32),
         child: Container(
             width: 350,
             height: 200,
             decoration:  BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(20)),
             child: Padding(
               padding: const EdgeInsets.only(right: 8.0,left: 10),
               child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 children: [
                   Row(
                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                   children: [
                     Text("Leave Type",style: GoogleFonts.poppins(fontSize: 15,fontWeight: FontWeight.bold),),
                     Text("Available",style: GoogleFonts.poppins(fontSize: 15,fontWeight: FontWeight.bold),),
                     Text("Taken",style: GoogleFonts.poppins(fontSize: 15,fontWeight: FontWeight.bold),),
                     ],),
                   Row(
                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                   children: [
                     Text("Personal Leave",style: GoogleFonts.poppins(fontSize: 10),),
                     Text("5",style: GoogleFonts.poppins(fontSize: 10),),
                     Text("7",style: GoogleFonts.poppins(fontSize: 10),),
                     ],),
                   Row(
                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                   children: [
                     Text("Casual Leave",style: GoogleFonts.poppins(fontSize: 10),),
                     Text("6",style: GoogleFonts.poppins(fontSize: 10),),
                     Text("8",style: GoogleFonts.poppins(fontSize: 10),),
                     ],),
                   Row(
                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                   children: [
                     Text("Sick Leave",style: GoogleFonts.poppins(fontSize: 10),),
                     Text("3",style: GoogleFonts.poppins(fontSize: 10),),
                     Text("6",style: GoogleFonts.poppins(fontSize: 10),),
                     ],),


                 ],
               ),
             )
         ),
       ),
     )
      ],
    ),
    );
  }
}
