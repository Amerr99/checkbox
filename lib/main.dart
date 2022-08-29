import 'package:flutter/material.dart';
void main() {
  runApp(MaterialApp(home: Home(),));
}

class Home extends StatefulWidget {
  const Home({super.key});
  
  @override
  State<Home> createState() => _HomeState();
}
bool age = false;
bool clients = false;
bool degree = false;
bool experience=false;
class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(),
      body: Container(
        color: Colors.blueGrey,
        child: ListView(
          children: [
            Container(
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.all(50),
              child: Text('Law Firm',style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,),textAlign: TextAlign.center),
            ),
            Container(
              color:  Color.fromARGB(255, 205, 188, 134),
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.all(20),
              child: Text('Please fill our application',style: TextStyle(fontSize: 16,),),
            ),



            Container(
              color:  Color.fromARGB(255, 205, 188, 134),
              child: CheckboxListTile(

                activeColor: Colors.green,
                contentPadding: EdgeInsets.all(20),
                isThreeLine: true,
                secondary: Icon(Icons.app_registration),
                subtitle: Text("you must be older than 24 to be registerd"),
                title: Text("I'm above 24"),
                value: age, onChanged: ((value) {
                setState(() {
                  age=value!;
                });
                
              }),
            ),
        ),
        Container(
                        color:  Color.fromARGB(255, 205, 188, 134),

              child: CheckboxListTile(

                activeColor: Colors.green,
                tileColor: Color.fromARGB(255, 205, 188, 134),
                contentPadding: EdgeInsets.all(20),
                isThreeLine: true,
                secondary: Icon(Icons.app_registration),
                subtitle: Text("it will give preference if you have a clients"),
                title: Text("I Have clients"),
                value: clients, onChanged: ((value) {
                setState(() {
                  clients=value!;
                });
                
              }),
            ),
        ),
        Container(
                        color:  Color.fromARGB(255, 205, 188, 134),

              child: CheckboxListTile(

                activeColor: Colors.green,
                tileColor: Color.fromARGB(255, 205, 188, 134),
                contentPadding: EdgeInsets.all(20),
                isThreeLine: true,
                secondary: Icon(Icons.app_registration),
                subtitle: Text("you must have a degree"),
                title: Text("I Have a Law degree"),
                value: degree, onChanged: ((value) {
                setState(() {
                  degree=value!;
                });
                
              }),
            ),
        ),
        Container(
                        color:  Color.fromARGB(255, 205, 188, 134),

              child: CheckboxListTile(

                activeColor: Colors.green,
                tileColor: Color.fromARGB(255, 205, 188, 134),
                contentPadding: EdgeInsets.all(20),
                isThreeLine: true,
                secondary: Icon(Icons.app_registration),
                subtitle: Text("we require experience"),
                title: Text("I have experience"),
                value: experience, onChanged: ((value) {
                setState(() {
                  experience=value!;
                });
                
              }),
            ),
        )],
        ),
      ),
    );
  }
}