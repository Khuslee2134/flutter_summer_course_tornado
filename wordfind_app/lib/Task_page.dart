import 'package:flutter/material.dart';
import 'package:wordfind_app/input_field.dart';

class TaskPage extends StatefulWidget {
  const TaskPage({super.key});

  @override
  State<TaskPage> createState() => _TaskPageState();
}

class _TaskPageState extends State<TaskPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFBF5F2),
      appBar: AppBar(
        leading: IconButton(
            icon: Image.asset('assets/arrow_back.png'),
            onPressed: () {
              Navigator.of(context).pop();
            }),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text(
          '',
          style: TextStyle(fontSize: 24, color: Color(0xFFE86B02)),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Container(
                width: double.maxFinite,
                padding: EdgeInsets.only(bottom: 10),
                color: Colors.white,
                child: Center(
                  child: Container(
                    width: 150,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [Color(0xFFE86b02), Color(0xFFFA9541)],
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                      child: Text(
                        'reload',
                        style: TextStyle(
                            fontFamily: 'Nunito',
                            fontSize: 24,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
