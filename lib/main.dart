import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MainPage extends StatefulWidget{
  final String title;
  MainPage({this.title}) : super();
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MainPageState();
  }
}
class MainPageState extends State<MainPage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(widget.title),
        ),
      ),
      body: GridView.extent(
        maxCrossAxisExtent: 150.0,
        mainAxisSpacing: 5.0,
        crossAxisSpacing: 5.0,
        padding: const EdgeInsets.all(5.0),
        children: _buildGridView(16),
      )
    );
  }
}

List<Widget> _buildGridView(numberOfTitle){
  List<Container> container = new List<Container>.generate(numberOfTitle,
          (int index){
        final imagesName = index < 9 ?
            'images/image0${index + 1}.JPG' : 'images/image${index + 1}.JPG';
        return Container(
          child: Image.asset(
              imagesName,
              fit: BoxFit.cover,),
        );
      });
  return container;
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "",
      home: MainPage(title: "Grid View"),
    );
  }
}
