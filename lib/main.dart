import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lms/Dashboard.dart';

DateTime get _now => DateTime.now();

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: MyHome(),debugShowCheckedModeBanner: false,);
  }
}

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {

  TextEditingController email=new TextEditingController();
  TextEditingController password=new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Center(child: const Text ("Leave Management System")),),
      backgroundColor: Colors.grey,
      body: Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: SingleChildScrollView(scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 25.0,left: 25),
                child: Container(
                    width: 350,
                    height: 200,
                    decoration:  BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(20)),
                    child: Padding(
                      padding: const EdgeInsets.only(right: 8.0,left: 10),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only (right: 270.0),
                            child: const Text ("Login", style: TextStyle(fontSize: 20,color: Colors.lime),),
                          ),
                          Row(
                            children: [
                              Text ("Forgot Password?",style: GoogleFonts.poppins(fontSize: 15),),
                              Text ("Click here to reset",style: TextStyle(color: Color(0XFF6A8ADF),fontWeight: FontWeight.bold),),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Container (width: 300,height: 50 ,
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),color: Colors.white,border: Border.all(color: Colors.black)),
                              child: Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: TextField(controller: email,decoration: InputDecoration(labelText: "Email",hintText: "Enter your email"),)
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Container (width: 300,height: 50 ,
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),color: Colors.white,border: Border.all(color: Colors.black)),
                              child: Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: TextField(controller: password,decoration: InputDecoration(labelText: "Password",hintText: "Enter your password"),obscureText: true,)
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                ),
              ),
              ElevatedButton(onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Dashboard()));
                print(email.text);
                print(password.text);
                print(_now.day);
              }, child: Text("SUBMIT"))
            ],
          ),
        ),
      ),
    );
  }
}

