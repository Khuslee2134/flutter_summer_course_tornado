import 'package:flutter/material.dart';

class WatchStory extends StatefulWidget {
  const WatchStory({super.key});

  @override
  State<WatchStory> createState() => _WatchStoryState();
}

class _WatchStoryState extends State<WatchStory> {
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
              border: Border.all(color: Color(0xFFE86B02), width: 2),
              borderRadius: BorderRadius.circular(50),
            ),
            child: Center(
              child: ClipOval(child: Image.asset('assets/image/inner.png')),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Center(child: Text(
            'Төгөлдөр',
          ),),
        ],
      ),
    );
  }
}
