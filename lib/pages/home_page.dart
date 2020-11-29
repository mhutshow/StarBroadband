import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todoey/pages/home.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.only(left: 30,top: 60 ,right: 30,bottom: 30),
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.white,
                    radius: 40,
                    child: Icon(Icons.star_border_outlined,size: 40,color: Colors.lightBlueAccent,),
                ),
                SizedBox(
                  height: 20,
                ),
                Text('StarNet', style: TextStyle(color: Colors.white,fontSize: 50,fontWeight: FontWeight.w700),),
                Text('Best Internet Service Provider in Ishwarganj', style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w700),),
              ],

            ),
          ),
        ),
        Expanded(
          child: Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(40) ,topRight: Radius.circular(40),),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ButtonsStar(
                      image: 'images/rocket.png',
                      pressed: (){
                       Navigator.push(context, MaterialPageRoute(builder: (context) {return Home(
                         text: 'StarNet',
                         url: 'https://starnetig.net',
                       );} ));
                      },
                    ),
                    ButtonsStar(
                      image: 'images/add-user.png',
                      pressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) {return Home(
                          text: 'Registration',
                          url: 'https://starnetig.net/registration.html',
                        );} ));
                      },
                    ),

                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ButtonsStar(
                      image: 'images/speedometer.png',
                      pressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) {return Home(
                          text: 'Checking Your Speed',
                          url: 'https://fast.com',
                        );} ));
                      },
                    ),
                    ButtonsStar(
                      image: 'images/movie.png',
                      pressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) {return Home(
                          text: 'LocalServer',
                          url: 'http://medialink24.net/',
                        );} ));
                      },
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ButtonsStar(
                      image: 'images/tv.png',
                      pressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) {return Home(
                          text: 'Live TV',
                          url: 'http://bdiptv.net/',
                        );} ));
                      },
                    ),
                    ButtonsStar(
                      image: 'images/programmer.png',
                      pressed: (){
                        setState(() {
                          showAboutDialog(
                              context: context,
                              applicationName: 'StarNet',
                              useRootNavigator: false,
                              applicationIcon: Image.asset('images/programmer.png', height: 50 ,width: 50,),
                              applicationVersion: 'Version 0.1 (beta)',
                              children: [
                                Column(
                                  children: [
                                    Text('Design And Developed By',style: TextStyle(color: Colors.green,fontSize: 20,fontWeight: FontWeight.w700),),
                                    Text('Mahedi Hasan Utshow', style: TextStyle(color: Colors.lightBlueAccent,fontSize: 30,fontWeight: FontWeight.w700),),
                                    RaisedButton(
                                      onPressed: () {
                                        Navigator.push(context, MaterialPageRoute(builder: (context) {return Home(
                                          text: 'Developer',
                                          url: 'http://mhutshow.com/',
                                        );} ));
                                      },
                                      textColor: Colors.white,
                                      padding: const EdgeInsets.all(0.0),
                                      child: Container(
                                        decoration: const BoxDecoration(
                                          gradient: LinearGradient(
                                            colors: <Color>[
                                              Color(0xFF0D47A1),
                                              Color(0xFF1976D2),
                                              Color(0xFF42A5F5),
                                            ],
                                          ),
                                        ),
                                        padding: EdgeInsets.all(10.0),
                                        child:
                                        const Text('Know More', style: TextStyle(fontSize: 20)),
                                      ),
                                    ),
                                  ],

                                ),
                              ]
                          );
                        });
                      },
                    ),
                  ],
                ),
                Expanded(
                  child: ButtonsStar(
                    image: 'images/wifi-router (1).png',
                    pressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) {return Home(
                        text: 'Router Configuration',
                        url: 'http://192.168.0.1/',
                      );} ));
                    },
                  ),
                ),

              ],
            ),
          ),
        ),
      ],
    );
  }
  }

class ButtonsStar extends StatelessWidget {
 ButtonsStar({this.image,this.pressed});
 final String image;
 final Function pressed;
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      padding: EdgeInsets.all(50),
      child: Image.asset(image , height: 100, width: 100,),
      onPressed: pressed,
    );
  }
}
