import 'package:day_17_flutter_navigation/page_two.dart';
import 'package:flutter/material.dart';
class PageOne extends StatelessWidget {
  const PageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Page One',
        ),
      ),
      body: Column(
        children: [
          Center(
            child: ElevatedButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> const PageTwo()));
              },
              child: Text(
                'Go to page two',

              ),
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: (){Navigator.pop(context);},
              child: Text(
                ' Go to home page',
              ),
            ),
          )
        ],
      ),
    );
  }
}
