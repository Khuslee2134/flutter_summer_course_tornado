import 'package:flutter/material.dart';
import 'package:wordfind_app/Data/questions.dart';
import 'package:wordfind_app/input_field.dart';
import 'package:wordfind_app/start_page.dart';
import 'package:wordfind_app/task_widget.dart';

import 'models/User_model.dart';
import 'models/task_model.dart';

class TaskPage extends StatefulWidget {
  final User user;
  const TaskPage(this.user,{super.key});

  @override
  State<TaskPage> createState() => TaskPageState();
}

class TaskPageState extends State<TaskPage> {
  GlobalKey<TaskWidgetState>globalKey = GlobalKey();
  late List<TaskModel> listQuestions;
  late User user;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    listQuestions =question;
    user = widget.user;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFBF5F2),
      appBar: AppBar(
        leading: IconButton(
            icon: Image.asset('assets/arrow_back.png'),
            onPressed: () {
              Navigator.pop(context);
            }),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text(
          '${newUser.userName}',
          style: TextStyle(fontSize: 24, color: Color(0xFFE86B02)),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: LayoutBuilder(
                builder: (context, constraints){
                  return Container(
                    child: TaskWidget(
                    constraints.biggest,
                    listQuestions.map((question) => question.clone()).toList(),   Key: globalKey,
                    ),
                  );
                },
              )
            ),
          ],
        ),
      ),
    );
  }
}


// Container(
// decoration: BoxDecoration(
// image: DecorationImage(
// image: AssetImage('assets/back2.png'),
// )
// ),
// width: double.maxFinite,
// padding: EdgeInsets.only(bottom: 10),
// color: Colors.white,
// child: Center(
// child: Container(
// width: 150,
// decoration: BoxDecoration(
// gradient: LinearGradient(
// begin: Alignment.centerLeft,
// end: Alignment.centerRight,
// colors: [Color(0xFFE86b02), Color(0xFFFA9541)],
// ),
// borderRadius: BorderRadius.circular(10),
// ),
// child: ElevatedButton(
// onPressed: () {},
// style: ElevatedButton.styleFrom(
// backgroundColor: Colors.transparent,
// elevation: 0,
// shape: RoundedRectangleBorder(
// borderRadius: BorderRadius.circular(25),
// ),
// ),
// child: Text(
// 'reload',
// style: TextStyle(
// fontFamily: 'Nunito',
// fontSize: 24,
// fontWeight: FontWeight.w600),
// ),
// ),
// ),
// ),
// ),