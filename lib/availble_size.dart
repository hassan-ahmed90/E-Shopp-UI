import 'package:flutter/material.dart';
class AvailbleSize extends StatefulWidget {
 final String size;
  const AvailbleSize({super.key,required this.size});

  @override
  State<AvailbleSize> createState() => _AvailbleSizeState();
}

class _AvailbleSizeState extends State<AvailbleSize> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        setState(() {
          isSelected=!isSelected;
        });
      },
      child: Container(
        margin: EdgeInsets.only(right: 16),
        height: 30,
        width: 42,
        decoration: BoxDecoration(
          color: isSelected? Colors.red: Colors.transparent,
          borderRadius: BorderRadius.circular(6),
          border: Border.all(color: Colors.red),
        ),
        child: Center(
          child: Text(widget.size,style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
          ),
        ),
      ),
    );
  }
}
