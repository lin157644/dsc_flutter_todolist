import 'package:flutter/material.dart';
import 'createNewTaskPage.dart';

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
            // Create Task
            Container(
              width: double.infinity,
              child: FlatButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: const EdgeInsets.symmetric(vertical: 16),
                color: Colors.black,
                child: Text(
                  "ADD TASK",
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => CreateNewTaskPage(),
                    ),
                  );
                },
              ),
            ),
            // Title
            Container(
                alignment: Alignment.centerLeft,
                child: Text(
                    "Create New Task",
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
