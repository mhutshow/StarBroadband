import 'package:webview_flutter/webview_flutter.dart';
import 'package:flutter/material.dart';

String appBarUrl;
String appBarText;
class Home extends StatelessWidget {
 Home({this.text, this.url});
 String text;
 String url;
  @override
  Widget build(BuildContext context) {
    appBarUrl=url;
    appBarText=text;
    return MaterialApp(
        home: Scaffold(
            body: WebViewClass()
        )
    );
  }
}

class WebViewClass extends StatefulWidget {

  WebViewState createState() => WebViewState();

}

class WebViewState extends State<WebViewClass>{

  num position = 1 ;

  final key = UniqueKey();

  doneLoading(String A) {
    setState(() {
      position = 0;
    });
  }

  startLoading(String A){
    setState(() {
      position = 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.lightBlueAccent,
            title: Text('$appBarText')),
        body: IndexedStack(
            index: position,
            children: <Widget>[

              WebView(
                initialUrl: appBarUrl,
                javascriptMode: JavascriptMode.unrestricted,
                key: key ,
                onPageFinished: doneLoading,
                onPageStarted: startLoading,
              ),

              Container(
                color: Colors.white,
                child: Center(
                    child: CircularProgressIndicator()),
              ),

            ])
    );
  }
}