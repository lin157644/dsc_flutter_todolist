import 'package:flutter/material.dart';

class CreateNewTaskPage extends StatefulWidget {
  CreateNewTaskPage({Key key}) : super(key: key);

  @override
  _CreateNewTaskPageState createState() => _CreateNewTaskPageState();
}
//_privateClass _privateMethod _privateVariable
class _CreateNewTaskPageState extends State<CreateNewTaskPage> {

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
                // Close (so fucking small like ad)
                Container(
                    width: double.infinity,
                    alignment: Alignment.centerRight,
                    child: Transform.scale(
                        scale: 0.8,
                        child: IconButton(
                            icon: Icon(Icons.close),
                            onPressed: () {
                                Navigator.pop(context);
                            },
                        ),
                    ),
                ),
            ],
        ),
      ),
    );
  }
}
