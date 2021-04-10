import 'package:flutter/material.dart';
import 'addTagPage.dart';
import 'textSnackBar.dart';
import '../models/task.dart';

class CreateNewTaskPage extends StatefulWidget {
  CreateNewTaskPage({Key key}) : super(key: key);

  @override
  //=> foo() => bar() bar(foo())
  _CreateNewTaskPageState createState() => _CreateNewTaskPageState();
}

//_privateClass _privateMethod _privateVariable
class _CreateNewTaskPageState extends State<CreateNewTaskPage> {
  DateTime _dueDate;

  String _dateSelected = "Select Due Date";
  String _tagAdded = "Add Tag";

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
                  // Spacing
                  Spacer(),
                  // Select Date
                  //縮小 x0.8
                  Transform.scale(
                    scale: 0.8,
                    child: IconButton(
                      icon: Icon(Icons.arrow_forward_ios),
                      onPressed: () async {
                        final _date = await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime.now(),
                          lastDate: DateTime(2100, 12),
                          //modify selector color
                          //overwrite themedata then build
                          builder: (BuildContext context, Widget child) {
                            return Theme(
                              data: ThemeData.light().copyWith(
                                colorScheme: ColorScheme.light().copyWith(
                                  primary: const Color(0xFFFFBC0A),
                                ),
                              ),
                              child: child,
                            );
                          },
                        );

                        setState(() {
                          _dueDate = _date;
                          _dateSelected = _date.toString().substring(0, 10);
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
            // Tag Selector
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
                  // Tag Icon
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: const Color(0x05EC0868),
                    ),
                    padding: const EdgeInsets.all(16),
                    child: Icon(
                      Icons.tag,
                      color: const Color(0xFFEC0868),
                    ),
                  ),

                  // Fixed Spacing
                  SizedBox(
                    width: 24,
                  ),

                  // Tag
                  Text(
                    _tagAdded,
                    style: TextStyle(
                      fontSize: 18,
                      height: 1.2,
                      fontWeight: FontWeight.w700,
                      color: Colors.grey[700],
                    ),
                  ),

                  // Spacing
                  Spacer(),

                  // Add Tag
                  Transform.scale(
                    scale: 0.8,
                    child: IconButton(
                      icon: Icon(Icons.arrow_forward_ios),
                      onPressed: () async {
                        final _tag = await showModalBottomSheet(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10.0),
                              topRight: Radius.circular(10.0),
                            ),
                          ),
                          isScrollControlled: true, // won't scroll when keyboard came out if isScrollControlled is set to false
                          context: context,
                          builder: (context) => AddTagPage(),
                        );

                        setState(() {
                          _tagAdded = _tag ?? _tagAdded;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
            // Create Task
            Container(
              width: double.infinity,
              //FlatButton 在Flutter2.0棄用 請改用TextButton
              child: FlatButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: const EdgeInsets.symmetric(vertical: 16),
                color: Colors.black,
                child: Text(
                  "CREATE TASK",
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
                onPressed: () {
                  if (_contentController.text == "") {
                    ScaffoldMessenger.of(context)
                        .showSnackBar(textSnackBar("You must enter a task."));
                  } else if (_dateSelected == "Select Due Date") {
                    ScaffoldMessenger.of(context).showSnackBar(
                        textSnackBar("Please select a due date."));
                  } else if (_tagAdded == "Add Tag") {
                    ScaffoldMessenger.of(context)
                        .showSnackBar(textSnackBar("Please add a tag."));
                  } else {
                    Navigator.pop(
                      context,
                      Task(
                        todoString: _contentController.text,
                        dueDateString: _dateSelected,
                        tagString: _tagAdded,
                        dueDate: _dueDate,
                      ),
                    );
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
