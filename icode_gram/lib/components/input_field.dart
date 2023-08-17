import 'package:flutter/material.dart';

class TextInputField extends StatelessWidget {
  final String hintText;
  final bool isPassword;
  final TextInputType textInputType;
  final TextEditingController editingController;

  const TextInputField(
      {super.key,
      required this.hintText,
      required this.isPassword,
      required this.editingController,
      required this.textInputType});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 343,
      height: 45,
      child: TextField(
        style: TextStyle(color: Colors.grey),

        controller: editingController,
        decoration: InputDecoration(

          hintText: this.hintText,
          hintStyle: TextStyle(
            color: Colors.grey,
            fontSize: 15,
            fontFamily: 'Rubik',
          ),
          border: OutlineInputBorder(
              borderSide: Divider.createBorderSide(context,
                  width: 2, color: Colors.grey)),
          focusedBorder: OutlineInputBorder(
              borderSide: Divider.createBorderSide(context,
                  width: 2, color: Colors.grey)),
          enabledBorder: OutlineInputBorder(
              borderSide: Divider.createBorderSide(context,
                  width: 2, color: Colors.grey)),
          filled: true,
          contentPadding: EdgeInsets.all(8),
        ),
        obscureText: this.isPassword,
        keyboardType: this.textInputType,
      ),
    );
  }
}

// import 'package:flutter/material.dart';
//
// class InputField extends StatefulWidget {
//   final String hintText;
//   const InputField({super.key, required this.onSubmitted, required this.hintText});
//
//   final void Function(String) onSubmitted;
//
//   @override
//   State<InputField> createState() => _InputFieldState();
// }
//
// class _InputFieldState extends State<InputField> {
//   late TextEditingController _textEditingController;
//
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     _textEditingController = TextEditingController();
//   }
//
//   @override
//   void dispose() {
//     // TODO: implement dispose
//     super.dispose();
//     _textEditingController.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       width:343,
//       height: 45,
//       child: TextField(
//
//         onSubmitted: (String value) {
//           widget.onSubmitted(value);
//         },
//
//         controller: _textEditingController,
//         maxLines: 1,
//         style: TextStyle(
//           color: Colors.white,
//           fontSize: 15,
//           fontFamily: 'Rubik',
//           fontWeight: FontWeight.w400,
//         ),
//         decoration: InputDecoration(
//           enabledBorder: OutlineInputBorder(
//            borderSide: BorderSide(width: 2, color: Colors.grey),
//           ),
//             focusedBorder: OutlineInputBorder(
//               borderSide: BorderSide(width: 2, color: Colors.grey)
//             ),
//             contentPadding: EdgeInsets.symmetric(
//               horizontal: 15,
//               vertical: 14,
//             ),
//             filled: true,
//             fillColor: Colors.black,
//             hintText: '${widget.hintText}',
//             hintStyle: TextStyle(
//               fontSize: 17,
//               color: Colors.grey,
//             ),
//             // suffixIcon: IconButton(
//             //   onPressed: () {
//             //     _textEditingController.clear();
//             //   },
//             //   icon: Icon(
//             //     Icons.clear,
//             //     color: Colors.grey,
//             //   ),
//             // ),
//
//         ),
//       ),
//     );
//   }
// }
