import 'package:flutter/material.dart';

class CreateNewTaskPage extends StatefulWidget {
  CreateNewTaskPage({Key key}) : super(key: key);

  @override
  _CreateNewTaskPageState createState() => _CreateNewTaskPageState();
}

//_privateClass _privateMethod _privateVariable
class _CreateNewTaskPageState extends State<CreateNewTaskPage> {
  DateTime _dueDate;

  String _dateSelected = "Select Due Date";

  final TextEditingController _contentController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    //退出頁面前把Controller Dispose掉
    _contentController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false, // Prevent Keyboard Overflow
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
            // Input Task TextField
            TextField(
              controller: _contentController,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w500,
                color: Colors.grey[800],
                letterSpacing: 1.05,
              ),
              decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.blueGrey[100]),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.blueGrey[300]),
                ),
                hintText: "Task Name",
                hintStyle: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey[400],
                ),
              ),
            ),
            // Date Selector
            Container(
              height: 100,
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.blueGrey[100],
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  // Date Icon
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: const Color(0x11FFBC0A),
                    ),
                    padding: const EdgeInsets.all(16),
                    child: Icon(
                      Icons.date_range,
                      color: const Color(0xFFFFBC0A),
                    ),
                  ),
                  // Fixed Spacing
                  SizedBox(
                    width: 24,
                  ),
                  // Date
                  Text(
                    _dateSelected,
                    style: TextStyle(
                      fontSize: 18,
                      height: 1.2,
                      fontWeight: FontWeight.w700,
                      color: Colors.grey[700],
                      letterSpacing: _dateSelected == "Select Due Date" ? 0 : 1.2,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
