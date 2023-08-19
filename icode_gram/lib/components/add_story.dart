import 'package:flutter/material.dart';
class AddStory extends StatefulWidget {
  const AddStory({super.key});

  @override
  State<AddStory> createState() => _AddStoryState();
}

class _AddStoryState extends State<AddStory> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 75,
      height: 94,
      child: Column(
        children: [
          Container(
            width: 70,
            height: 70,
            decoration: BoxDecoration(
              border:Border.all(color: Colors.grey,width: 2),
              borderRadius: BorderRadius.circular(50),
            ),
            child: Center(child: Icon(Icons.add),),
          ),
          SizedBox(
            height: 5,
          ),
          Center(child: Text(
            'Нэмэх',
          ),
          )
        ],
      ),

    );
  }
}
