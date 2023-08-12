import 'package:flutter/material.dart';

class InputField extends StatefulWidget {
  final String hintText;
  const InputField({super.key, required this.onSubmitted, required this.hintText});

  final void Function(String) onSubmitted;

  @override
  State<InputField> createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {
  late TextEditingController _textEditingController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _textEditingController = TextEditingController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _textEditingController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width:343,
      height: 45,
      child: TextField(

        onSubmitted: (String value) {
          widget.onSubmitted(value);
        },

        controller: _textEditingController,
        maxLines: 1,
        style: TextStyle(
          color: Colors.white,
          fontSize: 15,
          fontFamily: 'Rubik',
          fontWeight: FontWeight.w400,
        ),
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
           borderSide: BorderSide(width: 2, color: Colors.grey),
          ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 2, color: Colors.grey)
            ),
            contentPadding: EdgeInsets.symmetric(
              horizontal: 15,
              vertical: 14,
            ),
            filled: true,
            fillColor: Colors.black,
            // prefixIcon: Icon(
            //   Icons.person,
            //   color: Colors.grey,
            // ),
            hintText: '${widget.hintText}',
            hintStyle: TextStyle(
              fontSize: 15,
              color: Colors.grey,
            ),
            suffixIcon: IconButton(
              onPressed: () {
                _textEditingController.clear();
              },
              icon: Icon(
                Icons.clear,
                color: Colors.grey,
              ),
            ),

        ),
      ),
    );
  }
}
