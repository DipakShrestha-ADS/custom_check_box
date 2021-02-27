import 'package:custom_check_box/custom_check_box.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Custom Check Box Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Custom Check Box Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool shouldCheck = false;
  bool shouldCheckDefault = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      backgroundColor: Colors.grey.withOpacity(0.2),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Check Box (By Dipak Shrestha)',
              style: TextStyle(
                color: Colors.white,
                fontSize: 14.0,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Customized Check Box',
              style: TextStyle(
                color: Colors.white,
                fontSize: 12.0,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.normal,
              ),
            ),
            CustomCheckBox(
              value: shouldCheck,
              shouldShowBorder: true,
              borderColor: Colors.red,
              checkedFillColor: Colors.red,
              borderRadius: 8,
              borderWidth: 1,
              checkBoxSize: 22,
              onChanged: (val) {
                //do your stuff here
                setState(() {
                  shouldCheck = val;
                });
              },
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Default Check Box',
              style: TextStyle(
                color: Colors.white,
                fontSize: 12.0,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.normal,
              ),
            ),
            CustomCheckBox(
              value: shouldCheckDefault,
              onChanged: (val) {
                //do your stuff here
                setState(() {
                  shouldCheckDefault = val;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
