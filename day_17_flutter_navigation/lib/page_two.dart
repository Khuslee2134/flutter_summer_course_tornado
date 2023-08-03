import 'package:flutter/material.dart';
class PageTwo extends StatelessWidget {
  const PageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Page two',
        ),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: (){Navigator.pop(context);},
          child: Text(
            'Back to page one',
          ),
        ),
      ),
    );
  }
}
