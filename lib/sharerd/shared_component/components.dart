import 'package:flutter/material.dart';

Widget defalutButton({
  Color color = Colors.blue,
  double width = 300.0,
  required Function function,
  required String text,
  bool isUpperCase = true,
}) =>
    Container(
      color: color,
      width: width,
      child: MaterialButton(
        onPressed: () {
          function;
        },
        child: Text(
          isUpperCase ? text.toUpperCase() : text,
        ),
        color: color,
      ),
    );
/*Widget defalutTextFromFeild({
 required TextEditingController controller,
   required String labeltext ,
   required IconData prefix ,
   required Function onChange ,
  required Function validate,
}) => TextFormField(
keyboardType: TextInputType.visiblePassword,
obscureText: false,
controller: controller,
onChanged: onChange!,
validator:validate,
decoration: InputDecoration(
prefixIcon:Icon( prefix),
suffixIcon: Icon(Icons.remove_red_eye),
labelText:labeltext,
border: OutlineInputBorder()),
);*/
