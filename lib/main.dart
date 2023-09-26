import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
      title: 'Ostad App',
    );
  }
}

class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.shopping_cart),
            ),
          ],

          title: Text('My Shopping List'),
          centerTitle: true,
        ),
        body:Column(
          children: [
            ListTile(
              leading: Icon(Icons.shopping_bag),
              title: Text('OneUI',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),),
            ),
            ListTile(
              leading: Icon(Icons.shopping_bag),
              title: Text('iOS',
                style: TextStyle(
                  fontWeight: FontWeight.w300,
                ),),
            ),
            ListTile(
              leading: Icon(Icons.shopping_bag),
              title: Text('Octopus OS'),
            ),
            ListTile(
              leading: Icon(Icons.shopping_bag),
              title: Text('MIUI'),
            ),
            ListTile(
              leading: Icon(Icons.shopping_bag),
              title: Text('Oxygen OS'),
            ),

          ],
        )


    );
  }

}
void main (){
  runApp(MyApp());

}