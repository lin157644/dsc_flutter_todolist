class Task {
  String todoString;
  String dueDateString;
  String tagString;

  DateTime dueDate;

  bool isDone = false;
  bool isPinned = false;

  Task({this.todoString, this.dueDateString, this.tagString, this.dueDate});
}