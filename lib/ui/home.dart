import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  //every instance of StatelessWidget has to be final 
  final String title;
 
  //With super refering to Super in StatelessWidget
  const Home({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.blueAccent.shade700,
        title: new Text(title),
        actions: <Widget>[
          new IconButton(
            icon: new Icon(Icons.dashboard),
            onPressed: () => debugPrint("Tapped"),
          ),
        //  new CustomButton(),
          // new CustButton(),
        ],
      ),
      body: new Center(
        child: new CustomButton(),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new GestureDetector(
      onTap: () {
        final snackBar = new SnackBar(content: new Text("Hello Gestures!"),
        backgroundColor: Theme.of(context).backgroundColor,
        duration: new Duration(hours: 0,minutes: 0,seconds: 0,milliseconds: 200,microseconds: 0),);

        Scaffold.of(context).showSnackBar(snackBar);
      },
      //The Actual Button
      child: new Container(
        padding: new EdgeInsets.all(18.5),
        decoration: new BoxDecoration(
            color: Theme.of(context).buttonColor,
            borderRadius: new BorderRadius.circular(5.5)),
        child: new Text("First Button!"),
      ),
    );
  }
}

// class CustButton extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return new GestureDetector(
//       onTap: () {
//         final snackBar = new SnackBar(content: new Text("Hello Gestures!"));

//         Scaffold.of(context).showSnackBar(snackBar);
//       },

//       //The Actual Button
//       // child: new Container(
//       //  // color: Colors.blueAccent.shade700,
//       //   padding: new EdgeInsets.all(18.5),
//       //   // decoration: new BoxDecoration(
//         //     color: Theme.of(context).buttonColor,
//         //     borderRadius: new BorderRadius.circular(5.5)),
//         child: new IconButton(
//           icon: new Icon(Icons.send),
//           onPressed: ()=> new GestureDetector(),
//         ),
//       // ),
//     );
//   }
// }
