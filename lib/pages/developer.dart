import 'package:flutter/material.dart';
import 'package:todoey/pages/home_page.dart';
import 'package:todoey/pages/home.dart';
class Developer extends StatefulWidget {
  @override
  _DeveloperState createState() => _DeveloperState();
}

class _DeveloperState extends State<Developer> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        body: Container(color: Colors.white,child :  SafeArea(
            child:Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('StarNet (Beta)',
                  style: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 30,
                  ),
                ),

                Text('Design And Developed By',
                  style: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 30,
                  ),
                ),
                SizedBox(
                  width: 400,
                  child: Divider(
                    color: Colors.green,
                  ),
                ),
                CircleAvatar(
                  radius: 50,
                  backgroundImage: NetworkImage('https://mhutshow.com/assets/images/c1.jpg'),

                ),
                Text('Mahedi Hasan Uutshow',
                  style: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 25,
                  ),
                ),

                SizedBox(
                  width: 300,
                  child: Divider(
                    color: Colors.blueGrey,
                  ),
                ),
                ButtonsStar(
                  image: 'images/programmer.png',
                  pressed: (){
                    setState(() {
                      Navigator.push(context, MaterialPageRoute(builder: (context) {return Home(
                        text: 'About Developer',
                        url: 'https://mhutshow.com',
                      );} ));
                    });
                  },
                ),
                SizedBox(
                  width: 200,
                  child: Divider(
                    color: Colors.blueGrey,
                  ),
                ),

              ],
            )
        )
        ),
      ),
    );
  }
}
