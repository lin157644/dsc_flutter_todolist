import 'package:flutter/material.dart';

class AddTagPage extends StatefulWidget {
  @override
  _AddTagPageState createState() => _AddTagPageState();
}

class _AddTagPageState extends State<AddTagPage> {
  final _contentController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _contentController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding:
            EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
        child: Column(
          children: [
          ],
        ),
      ),
    );
  }
}
