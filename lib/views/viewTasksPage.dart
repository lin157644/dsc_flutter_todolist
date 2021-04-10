import 'package:flutter/material.dart';

class ViewTasksPage extends StatefulWidget {
  ViewTasksPage({Key key}) : super(key: key);

  @override
  _ViewTasksPageState createState() => _ViewTasksPageState();
}

class _ViewTasksPageState extends State<ViewTasksPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          children: [
            // Title
            Container(
              alignment: Alignment.centerLeft,
              child: Text(
                "Tasks",
                style: TextStyle(
                  fontSize: 50,
                  height: 1.2,
                  fontWeight: FontWeight.w700,
                  color: Colors.grey[800],
                  letterSpacing: 1.05,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
